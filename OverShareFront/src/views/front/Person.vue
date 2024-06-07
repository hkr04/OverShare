<template>
  <div class="main-content" style="width: 50%">

    <el-tabs v-model="activeName" @tab-click="clickTab">
      <el-tab-pane label="个人信息" name="个人信息">
        <PersonPage @update:user="updateUser"/>
      </el-tab-pane>
      <el-tab-pane label="我的作品" name="我的作品">
        <div class="card" style="padding: 5px">
          <el-button type="primary" @click="addBlog" v-if="user.isCreator" style="margin-right: 30px">发表新作品</el-button>
          <el-button type="primary" @click="goHomePage" v-if="user.isCreator">我的主页</el-button>
          <el-button type="info" @click="exitHomePage" v-if="user.isCreator">编辑主页</el-button>
          <el-button type="warning" @click="goToApply" v-if="!user.isCreator">您还不是创作者，点击这里申请！</el-button>
        </div>
        <div style="margin-top: 10px">
          <BlogList type="user" :showOpt="true"/>
        </div>
      </el-tab-pane>
      <el-tab-pane label="我报名的活动" name="我报名的活动">
        <ActivityList type="user" :span="12"/>
      </el-tab-pane>
      <el-tab-pane label="我的点赞" name="我的点赞">
        <div class="card" style="display: flex;padding: 5px">
          <div class="category-btn" :class="{'active': likesCurrent === '作品'}" @click="likesCurrent = '作品'">作品
          </div>
          <div class="category-btn" :class="{'active': likesCurrent === '活动'}" @click="likesCurrent = '活动'">活动
          </div>
        </div>
        <div style="margin-top: 10px">
          <BlogList v-if="likesCurrent === '作品'" type="like"></BlogList>
          <ActivityList v-if="likesCurrent === '活动'" type="like" :span="12"/>
        </div>
      </el-tab-pane>
      <el-tab-pane label="我的收藏" name="我的收藏">
        <div class="card" style="display: flex;padding: 5px">
          <div class="category-btn" :class="{'active': collectCurrent === '作品'}" @click="collectCurrent='作品'">作品
          </div>
          <div class="category-btn" :class="{'active': collectCurrent === '活动'}" @click="collectCurrent='活动'">活动
          </div>
        </div>
        <div style="margin-top: 10px">
          <BlogList v-if="collectCurrent === '作品'" type="collect"></BlogList>
          <ActivityList v-if="collectCurrent === '活动'" type="collect" :span="12"/>
        </div>
      </el-tab-pane>
      <el-tab-pane label="我的评论" name="我的评论">
        <div class="card" style="display: flex;padding: 5px">
          <div class="category-btn" :class="{'active': commentCurrent === '作品'}" @click="commentCurrent='作品'">作品
          </div>
          <div class="category-btn" :class="{'active': commentCurrent === '活动'}" @click="commentCurrent='活动'">活动
          </div>
        </div>
        <div style="margin-top: 10px">
          <BlogList v-if="commentCurrent === '作品'" type="comment"></BlogList>
          <ActivityList v-if="commentCurrent === '活动'" type="comment" :span="12"/>
        </div>
      </el-tab-pane>
      <el-tab-pane label="我的关注" name="我的关注">
        <div class="card" style="margin-top: 10px">
          <ConcernList/>
        </div>
      </el-tab-pane>
      <el-tab-pane label="我的福利" name="我的福利">
        <div class="card" style="margin-top: 10px">
          <MyWelfare/>
        </div>
      </el-tab-pane>
    </el-tabs>

    <Footer/>
  </div>
</template>

<script>
import Footer from "@/components/Footer.vue";
import PersonPage from "@/components/PersonPage.vue";
import BlogList from "@/components/BlogList.vue";
import ActivityList from "@/components/ActivityList.vue";
import ConcernList from "@/components/ConcernList.vue";
import MyWelfare from "@/components/MyWelfare.vue";
export default {
  data() {
    return {
      activeName: '个人信息',
      likesCurrent: '作品',
      collectCurrent: '作品',
      commentCurrent: '作品',
      user: JSON.parse(localStorage.getItem('xm-user') || '{}')
    }
  },
  components: {
    Footer,
    PersonPage,
    BlogList,
    ActivityList,
    ConcernList,
    MyWelfare
  },
  created() {

  },
  methods: {
    goHomePage(){
      this.$router.push('/front/HomePage?userId=' + this.user.id)
    },
    exitHomePage(){
      window.open('/front/ExitHomePage')
    },
    updateUser() {
      // 触发父级的数据更新
      this.$emit('update:user')
    },
    goToApply(){
      this.$router.push('/front/Certification')
    },
    clickTab() {

    },
    addBlog() {
      window.open('/front/NewBlog')
    }
  }
}
</script>

<style>
.category-btn {
  width: fit-content;
  padding: 5px 10px;
  border-radius: 5px;
  cursor: pointer;
}

.active {
  background-color: #409EFF;
  color: white;
}
</style>