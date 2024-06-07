<template>
  <div>
    <el-row :gutter="10" v-if="total">
      <el-col :span="span" v-for="item in tableData" :key="item.id">
        <div class="card" style="margin-bottom: 10px; cursor: pointer" @click="goDetail(item.id)">
          <img :src="item.cover" style="width: 100%; height: 150px;border-radius: 5px" alt="">
          <div style="margin: 10px 0; font-weight: bold">{{ item.name }}</div>
          <div style="display: flex; align-items: center">
            <div style="flex: 1">
              <div><i class="el-icon-time" style="margin-right: 5px"></i>开始时间：{{ item.start }}</div>
              <div><i class="el-icon-time" style="margin-right: 5px"></i>结束时间：{{ item.end }}</div>
            </div>
            <div>
              <el-button type="primary" disabled v-if="item.isEndActivity" key="已结束">已结束</el-button>
              <el-button type="primary" disabled v-else-if="item.isSign" key="已报名">已报名</el-button>
              <el-button type="primary" v-else key="报 名">报 名</el-button>
            </div>
          </div>
        </div>
      </el-col>
    </el-row>
    <div class="card" v-if="total === 0" style="text-align: center; font-size: 16px; color: #666">暂无数据</div>
    <div class="card" style="padding: 10px" v-if="total">
      <el-pagination
          background
          @current-change="handleCurrentChange"
          :current-page="pageNum"
          :page-sizes="[5, 10, 20]"
          :page-size="pageSize"
          layout="total, prev, pager, next"
          :total="total">
      </el-pagination>

      <Footer></Footer>
    </div>
  </div>
</template>

<script>

export default {
  name: "ActivityList",
  data() {
    return {
      tableData: [],  // 所有的数据
      pageNum: 1,   // 当前的页码
      pageSize: 8,  // 每页显示的个数
      total: 0,
      name: null,
    }
  },
  props:{
    type: null,
    span:null
  },
  mounted() {
    this.load(1)
  },
  // methods：本页面所有的点击事件或者其他函数定义区
  methods: {
    goDetail(id) {
      window.open('/front/ActivityDetail?activityId=' + id)
    },
    load(pageNum) {  // 分页查询
      let url
      switch (this.type) {
        case 'user':
          url = '/activity/selectUser';
          break;
        case 'like':
          url = '/activity/selectLike';
          break;
        case 'collect':
          url = '/activity/selectCollect';
          break;
        case 'comment':
          url = '/activity/selectComment';
          break;
        default:
          url = '/activity/selectPage';
      }
      if (pageNum) this.pageNum = pageNum
      this.$request.get(url, {
        params: {
          pageNum: this.pageNum,
          pageSize: this.pageSize,
          name: this.name,
          host: this.host
        }
      }).then(res => {
        this.tableData = res.data?.list
        this.total = res.data?.total
      })
    },
    reset() {
      this.name = null
      this.host = null
      this.load(1)
    },
    handleCurrentChange(pageNum) {
      this.load(pageNum)
    },
  }
}
</script>
