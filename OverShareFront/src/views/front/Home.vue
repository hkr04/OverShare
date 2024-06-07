<template>
  <div class="main-content">
    <div style="display: flex; align-items: flex-start; grid-gap: 10px">
      <!--左边分类部分-->
      <div style="width: 150px;" class="card">
        <div class="category-item" :class="{ 'category-item-active': item.name === current }"
             v-for="item in categoryList" :key="item.id" @click="selectCategory(item.name)">{{ item.name }}
        </div>
      </div>
      <!--中间正文部分-->
      <div style="flex: 1">
        <BlogList :categoryName="current"></BlogList>
        <Footer></Footer>
      </div>
      <!--右边活动、广告、排行榜展示部分-->
      <div style="width: 260px">
        <!--欢迎语-->
        <div class="card" style="margin-bottom: 10px;">
          <div style="font-size: 20px; font-weight: bold; margin-bottom: 10px">欢迎您！</div>
          <div style="color: #666">记录美好的一天！</div>
        </div>
        <!--排行榜-->
        <div class="card" style="margin-bottom: 10px;">
          <div style="display: flex; padding-bottom: 10px;border-bottom: 1px solid #ddd">
            <div style="font-size: 20px;flex: 1">排行榜</div>
            <div style="font-size: 12px;color: #666;" @click="refreshTop"><i class="el-icon-refresh"></i>换一换</div>
          </div>
          <div>
            <div v-for="item in showList" :key="item.id" style="margin: 10px 0" class="line1">
              <a :href="'/front/blogDetail?blogId=' + item.id" target="_blank">
                <span style="display: inline-block; margin-right: 10px; text-align: right; width: 20px">
                  <span style="color: orangered" v-if="item.index===1">{{ item.index }}</span>
                  <span style="color: goldenrod" v-else-if="item.index===2">{{ item.index }}</span>
                  <span style="color: #409EFF" v-else-if="item.index===3">{{ item.index }}</span>
                  <span style="color: #666" v-else>{{ item.index }}</span>
                </span>
                <span style="color: #666">{{ item.title }}</span>
              </a>
            </div>
          </div>
        </div>
        <!--活动-->
        <div v-for="item in activityList" :key="item.id" style="margin-bottom: 10px;">
          <a :href="'/front/activityDetail?activityId='+item.id">
            <img :src="item.cover" style="width: 100%; border-radius: 5px" alt="">
          </a>
        </div>
      </div>

    </div>
  </div>
</template>

<script>
import Footer from "@/components/Footer.vue";
import BlogList from "@/components/BlogList.vue";

export default {
  name: "Home",
  components: {
    Footer,
    BlogList
  },
  data() {
    return {
      current: '全部作品',  //当前选择的分类名称，默认为全部作品
      categoryList: [],
      topList: [],  //排行榜数据
      showList: [],   //展示的topList
      lastNum: 0,
      activityList: []
    }
  },
  mounted() {
    this.load()
    this.refreshTop()
    this.loadActivity()
  },
  // methods：本页面所有的点击事件或者其他函数定义区
  methods: {
    loadActivity() {
      this.$request.get("/activity/selectActivityTop").then(res => {
        this.activityList = res.data || []
        this.activityList = this.activityList.slice(0, 5)
      })
    },
    refreshTop() {
      this.$request.get("/blog/selectBlogTop").then(res => {
        this.topList = res.data || []
        //给topList的每个元素添加序号
        for (let i = 0; i < this.topList.length; i++) {
          this.topList[i].index = i + 1
        }
        //如果已经到了最后一页，就从第一页开始展示
        if (this.lastNum === 20) {
          this.lastNum = 0
        }
        //展示前5个
        this.showList = this.topList.slice(this.lastNum, this.lastNum + 5)
        //展示下一页5个
        this.lastNum += 5
      })
    },
    selectCategory(categoryName) {
      this.current = categoryName
    },
    load() {
      //请求分类数据
      this.$request.get('/category/selectAll').then(res => {
        this.categoryList = res.data || []
        this.categoryList.unshift({name: '全部作品'})
      })
    },
  }
}
</script>

<style>
.category-item {
  text-align: center;
  padding: 10px;
  font-size: 16px;
  cursor: pointer;
}

.category-item-active {
  background-color: #1890ff;
  color: #fff;
  border-radius: 5px;
}

.line1 {
  white-space: nowrap;
  overflow: hidden;
  text-overflow: ellipsis;
}

a {
  color: #333333;
}
</style>
