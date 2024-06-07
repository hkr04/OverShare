<template>
  <div class="main-content">
    <div style="display: flex">
      <div class="left" style="flex: 1">

        <div class="card" style="padding: 20px 30px; margin-bottom: 10px">
          <!--标题-->
          <div style="font-weight: bold;font-size: 26px; margin-bottom: 20px">
            {{ blog.title }}
          </div>
          <!--标签-->
          <div style="color: #999999; font-size: 12px; margin-bottom: 5px">
            <span style="margin-right: 20px"><i class="el-icon-user"
                                                style="margin-right: 3px"></i>{{ blog.userName }}</span>
            <span style="margin-right: 20px"><i class="el-icon-date"
                                                style="margin-right: 3px"></i>{{ blog.date }}</span>
            <span style="margin-right: 20px"><i class="el-icon-eye"
                                                style="margin-right: 3px"></i>{{ blog.readCount }}</span>
          </div>
          <div style="margin-bottom: 20px">
            <el-tag v-for="item in tagsArr" :key="item.id" type="primary" style="margin-right: 3px" size="mini">
              {{ item }}
            </el-tag>
          </div>
          <!--内容-->
          <div class="w-e-text" style="width: 100%">
            <div v-html="blog.content"></div>
          </div>

        </div>
        <!--点赞、收藏-->
        <div class="card" style="text-align: center; font-size: 20px; color: #666; margin-bottom: 10px">
          <span style="margin-right: 20px; cursor: pointer" @click="setLikes" :class="{'active' : blog.userLike}"><i
              class="el-icon-like"></i> {{ blog.likesCount }}</span>
          <span style=" cursor: pointer" @click="setCollect" :class="{'active' : blog.userCollect}"><i
              class="el-icon-star-off"></i>{{ blog.collectCount }}</span>
        </div>
        <!--评论-->
        <Comment :fid="blogId" :module="module"></Comment>

      </div>
      <div class="right" style="width: 260px;margin-left: 10px">
        <div class="card" style="margin-bottom: 10px">
          <div style="display: flex;grid-gap: 10px;align-items: center;margin-bottom: 10px">
            <img :src="blog.user?.avatar" alt="" @click="homePage(blog.user.id)" style="width: 50px; height: 50px; border-radius: 50%">
            <div style="flex: 1">
              <div style="font-weight: bold;margin-bottom: 5px">{{ blog.user?.name }}</div>
              <div class="line2" style="color: #666666;font-size: 12px">{{ blog.user?.info }}</div>
            </div>
          </div>
          <div style="display: flex">
            <div style="flex: 1; text-align: center">
              <div style="margin-bottom: 5px">文章</div>
              <div style="color: #888">{{ blog.userBlogCount }}</div>
            </div>
            <div style="flex: 1; text-align: center">
              <div style="margin-bottom: 5px">点赞</div>
              <div style="color: #888">{{ blog.userLikeCount }}</div>
            </div>
            <div style="flex: 1; text-align: center">
              <div style="margin-bottom: 5px">收藏</div>
              <div style="color: #888">{{ blog.userCollectCount }}</div>
            </div>
          </div>
        </div>

        <div class="card" style="margin-bottom: 10px">
          <div
              style="font-weight: bold; font-size: 20px; padding-bottom: 10px; border-bottom: 1px solid #ddd; margin-bottom: 10px">
            相关推荐
          </div>

          <div>
            <div style="margin-bottom: 15px" v-for="item in recommendList" :key="item.id">
              <a :href="'/front/blogDetail?blogId=' + item.id" target="_blank">
                <div class="line2 reCommendTitle">{{ item.title }}</div>
              </a>
              <div style="color: #888">
                <span>阅读</span> <span>{{ item.readCount }}</span>
                <span style="margin-left: 10px">点赞</span> <span>{{ item.likesCount }}</span>
              </div>
            </div>
          </div>
        </div>

        <div class="card">
          <div style="display: flex; grid-gap: 10px; ">
            <div style="flex: 1; line-height: 25px">
              广告广告广告广告广告广告广
              告广告广告广告广告广告广告广告
            </div>
            <img src="@/assets/imgs/广告.png" alt="" style="width: 50px; height: 50px; border-radius: 5px">
          </div>
        </div>

      </div>
    </div>
  </div>

</template>
<script>
import Comment from "@/components/Comment";
export default {
  name: "BlogDetail",
  components: {Comment},
  data() {
    return {
      blogId: this.$route.query.blogId,
      blog: {},
      tagsArr: [],
      recommendList: [],
      module: '作品'
    }
  },
  created() {
    this.load()
    //更新阅读量
    this.$request.put('/blog/updateCount/' + this.blogId)
  },
  methods: {
    homePage(userId){
      this.$router.push('/front/HomePage?userId=' + userId)
    },
    load() {
      this.$request.get("/blog/select/" + this.blogId).then(res => {
        this.blog = res.data || {}
        this.tagsArr = JSON.parse(this.blog.tags || '[]')
      })

      this.$request.get("/blog/selectRecommend/" + this.blogId).then(res => {
        this.recommendList = res.data || []
      })
    },
    setLikes() {
      this.$request.post("/likes/set", {fid: this.blogId, module: '作品'}).then(res => {
        if (res.code === '200') {
          this.$message.success("操作成功")
        }
        this.load() // 刷新页面
      })
    },
    setCollect() {
      this.$request.post("/collect/set/collect", {fid: this.blogId, module: '作品'}).then(res => {
        if (res.code === '200') {
          this.$message.success("操作成功")
        }
        this.load()// 刷新页面
      })
    }
  }
}

</script>

<style>
/* blockquote 样式 */
blockquote {
  display: block;
  border-left: 8px solid #d0e5f2;
  padding: 20px 10px;
  margin: 10px 0;
  line-height: 1.4;
  font-size: 100%;
  background-color: #d9d9d9;
}

/* code 样式 */
code {
  display: inline-block;
  *display: inline;
  *zoom: 1;
  background-color: #909399;
  border-radius: 3px;
  padding: 3px 5px;
  margin: 3px 3px;
}

pre code {
  display: block;
}

p {
  line-height: 15px
}

.line2 {
  word-break: break-all;
  text-overflow: ellipsis;
  display: -webkit-box;
  -webkit-box-orient: vertical;
  -webkit-line-clamp: 2; /* 超出几行省略 */
  overflow: hidden;
}

.active {
  color: orange !important;
}

.reCommendTitle {
  margin-bottom: 5px
}

.reCommendTitle:hover {
  color: #409EFF;
}


</style>