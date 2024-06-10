<template>
  <div class="main-content">
    <div class="container">
      <!--左边分类部分-->
      <div class="left-column card" style="margin-top: 350px;">
        <div class="category-item" :class="{ 'category-item-active': item.name === current }"
          v-for="item in categoryList" :key="item.id" @click="selectCategory(item.name)">{{ item.name }}
        </div>
      </div>
      <!--中间正文部分-->
      <div class="main-column">
        <!--竞赛走马灯-->
        <div style="display: flex;height: 350px;">
          <div class="card competion-carousel">
            <el-carousel :interval="3000" arrow="always">
              <el-carousel-item v-for="(item, index) in activityList" :key="item.id">
                <a :href="'/front/activityDetail?activityId=' + item.id">
                  <img :src="item.cover" style="width: 100%; border-radius: 5px;" alt="">
                </a>
              </el-carousel-item>
            </el-carousel>
          </div>
          <div class="card announcements">
            <div slot="header" class="system_title">
              <span>倒计时！</span>
            </div>
            <div v-for="(item, index) in activityList" :key="item.id" class="announcement-item">
              <div class="separator"></div> 
              <div class="announcement-header">
                <span class="announcement-name">{{ item.name }}</span>
                <div v-if="!item.isApplyEnd" class="countdown">
                  <div class="countdown-block">
                    <div class="countdown-value">{{ item.applyRemainingDays }}天 | {{ item.applyRemainingHours }}小时</div>
                  </div>
                </div>
                <div v-else class="end-text">
                  报名已结束
                </div>
              </div>
              <div class="countdown-footer">
                <div v-if="!item.isEndActivity" class="countdown">
                  <div class="countdown-block">
                    <div class="countdown-value">{{ item.remainingDays }}天 | {{ item.remainingHours }}小时</div>
                  </div>
                </div>
                <div v-else class="end-text">
                  比赛已结束
                </div>
              </div>
            </div>
          </div>
        </div>
        <!--博客列表-->
        <div class="card blog-list">
          <el-button type="primary" @click="addBlog" v-if="user.isCreator" class="button-new-post">发表新帖子</el-button>
          <el-button type="warning" @click="goToApply" v-if="!user.isCreator" class="button-apply">点此认证后使用发帖功能</el-button>
          <BlogList :categoryName="current"></BlogList>
          <Footer></Footer>
        </div>
      </div>
      <!--右边竞赛、热门文章展示部分-->
      <div class="right-column" style="margin-top: 350px;">
        <!--欢迎语-->
        <div class="card welcome-card">
          <div class="welcome-header">欢迎您！</div>
          <div class="welcome-message">记录美好的一天！</div>
        </div>
        <!--热门文章-->
        <div class="card hot-articles">
          <div class="hot-articles-header">
            <div class="hot-articles-title">热门文章</div>
            <div class="refresh-button" @click="refreshTop"><i class="el-icon-refresh"></i>换一换</div>
          </div>
          <div>
            <div v-for="item in showList" :key="item.id" class="hot-article-item line1">
              <a :href="'/front/blogDetail?blogId=' + item.id" target="_blank">
                <span class="hot-article-index">
                  <span v-if="item.index === 1" class="first">{{ item.index }}</span>
                  <span v-else-if="item.index === 2" class="second">{{ item.index }}</span>
                  <span v-else-if="item.index === 3" class="third">{{ item.index }}</span>
                  <span v-else>{{ item.index }}</span>
                </span>
                <span class="hot-article-title">{{ item.title }}</span>
              </a>
            </div>
          </div>
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
      current: '全部竞赛',  //当前选择的分类名称，默认为全部
      categoryList: [],
      topList: [],  //排行榜数据
      showList: [],   //展示的topList
      lastNum: 0,
      activityList: [],
      user: JSON.parse(localStorage.getItem('xm-user') || '{}')
    }
  },
  mounted() {
    this.load()
    this.refreshTop()
    this.loadActivity()
    this.startCountdown()
  },
  methods: {
    loadActivity() {
      this.$request.get("/activity/selectActivityTop").then(res => {
        this.activityList = res.data || []
        this.activityList = this.activityList.slice(0, 5)  // 展示前5个竞赛
        this.updateCountdown()
      })
    },
    refreshTop() {
      this.$request.get("/blog/selectBlogTop").then(res => {
        //如果已经到了最后一页，就从第一页开始展示
        if (this.lastNum >= this.topList.length) {
          this.lastNum = 0
        }
        this.topList = res.data || []
        //给topList的每个元素添加序号
        for (let i = this.lastNum; i < this.lastNum + 5 && i < this.topList.length; i++) {
          this.topList[i].index = i - this.lastNum + 1
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
        this.categoryList.unshift({ name: '全部竞赛' })
      })
    },
    goToApply() {
      this.$router.push('/front/Certification')
    },
    addBlog() {
      window.open('/front/NewBlog')
    },
    startCountdown() {
      setInterval(this.updateCountdown, 1000);
    },
    updateCountdown() {
      const now = new Date();
      this.activityList.forEach(item => {
        const applyEndTime = new Date(item.applyend);
        if (applyEndTime > now) {
          const applyRemainingTime = this.calculateRemainingTime(now, applyEndTime);
          this.$set(item, 'applyRemainingDays', applyRemainingTime.days);
          this.$set(item, 'applyRemainingHours', applyRemainingTime.hours);
          this.$set(item, 'isApplyEnd', false);
        } else {
          this.$set(item, 'applyRemainingDays', 0);
          this.$set(item, 'applyRemainingHours', 0);
          this.$set(item, 'isApplyEnd', true);
        }

        const endTime = new Date(item.end);
        if (endTime > now) {
          const remainingTime = this.calculateRemainingTime(now, endTime);
          this.$set(item, 'remainingDays', remainingTime.days);
          this.$set(item, 'remainingHours', remainingTime.hours);
          this.$set(item, 'isEndActivity', false);
        } else {
          this.$set(item, 'remainingDays', 0);
          this.$set(item, 'remainingHours', 0);
          this.$set(item, 'isEndActivity', true);
        }
      });
    },
    calculateRemainingTime(startTime, endTime) {
      const diff = endTime - startTime;
      const days = Math.floor(diff / (1000 * 60 * 60 * 24));
      const hours = Math.floor((diff % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
      return { days, hours };
    }
  }
}
</script>

<style>
.container {
  display: flex;
  align-items: flex-start;
  grid-gap: 10px;
}

.left-column {
  width: 150px;
  align-self: flex-start; /* Align to the top */
}

.main-column {
  flex: 1;
}

.right-column {
  width: 260px;
  align-self: flex-start; /* Align to the top */
}

.card {
  margin-bottom: 10px;
}

.system_title {
  font-size: 20px;
  font-weight: bold;
}

.category-item {
  text-align: center;
  width: 100px;
  height: 50px;
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

.competion-carousel {
  position: relative;
  width: 100%;
  overflow: hidden;
  margin-bottom: 10px;
  flex: 2;
  margin-left: -160px;
}

.announcements {
  margin-bottom: 10px;
  flex: 1;
  margin-right: -270px;
}

.announcement-item {
  margin-bottom: 5px;
}
.separator {
  border-top: 1px solid #ccc;
  margin-top: 5px;
  margin-bottom: 3px;
}
.announcement-header {
  display: flex;
  justify-content: space-between;
  align-items: center;
}

.announcement-name {
  font-size: 16px;
  width: 300px;
}

.countdown-footer {
  display: flex;
  justify-content: flex-end;
  align-items: center;
  padding-bottom: 5px;
}

.end-text {
  color: gray;
  font-weight: bold;
}

.blog-list {
  flex: 1;
}

.button-new-post,
.button-apply {
  margin-bottom: 10px;
}

.welcome-card {
  margin-top: 0; /* Remove the margin-top and align with main content */
}

.welcome-header {
  font-size: 20px;
  font-weight: bold;
  margin-bottom: 10px;
}

.welcome-message {
  color: #666;
}

.hot-articles {
  margin-bottom: 10px;
}

.hot-articles-header {
  display: flex;
  padding-bottom: 10px;
  border-bottom: 1px solid #ddd;
}

.hot-articles-title {
  font-size: 20px;
  flex: 1;
}

.refresh-button {
  font-size: 12px;
  color: #666;
  cursor: pointer;
}

.hot-article-item {
  margin: 10px 0;
}

.hot-article-index {
  display: inline-block;
  margin-right: 10px;
  text-align: right;
  width: 20px;
}

.hot-article-title {
  color: #666;
}

.first {
  color: orangered;
}

.second {
  color: goldenrod;
}

.third {
  color: #409EFF;
}
</style>