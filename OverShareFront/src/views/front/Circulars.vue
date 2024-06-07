<template>
  <div class="main-content" style="width: 50%">
    <div class="card" style="font-weight: bold;font-size: 28px;display: flex">
      系统通知
    </div>
    <div class="card" style="margin-top: 10px">
      <el-table :data="tableData" stripe>
        <el-table-column prop="title" label="标题" width="200"></el-table-column>
        <el-table-column label="通知内容">
          <template v-slot="scope">
            <div>
              <el-button @click="handleMsgContent(scope.row.content)">查看内容</el-button>
            </div>
          </template>
        </el-table-column>
        <el-table-column prop="time" label="时间" width="200"></el-table-column>
      </el-table>

      <div class="pagination">
        <el-pagination
            background
            @current-change="handleCurrentChange"
            :current-page="pageNum"
            :page-sizes="[5, 10, 20]"
            :page-size="pageSize"
            layout="total, prev, pager, next"
            :total="total">
        </el-pagination>
      </div>
    </div>
    <el-dialog title="通知内容" :visible.sync="fromVisible" width="60%" :close-on-click-modal="false" destroy-on-close>
      <div class="w-e-text">
        <div v-html="content"></div>
      </div>
      <div slot="footer" class="dialog-footer">
        <el-button @click="fromVisible = false">关 闭</el-button>
      </div>
    </el-dialog>
  </div>
</template>
<script>
export default {
  name: "Circulars",
  data() {
    return {
      notice: [],
      user: JSON.parse(localStorage.getItem("xm-user") || '{}'),
      tableData: [],  // 所有的数据
      pageNum: 1,   // 当前的页码
      pageSize: 10,  // 每页显示的个数
      total: 0,
      fromVisible: false,
      content: ''
    }
  },
  mounted() {
    this.load()
  },
  methods: {
    load(pageNum) {  // 分页查询
      if (pageNum) this.pageNum = pageNum
      this.$request.get('/msg/selectByUserId', {
        params: {
          pageNum: this.pageNum,
          pageSize: this.pageSize,
          userId: this.user.id
        }
      }).then(res => {
        this.tableData = res.data?.list
        this.total = res.data?.total
      })
    },
    handleCurrentChange(pageNum) {
      this.load(pageNum)
    },
    handleMsgContent(content) {
      this.content = content
      this.fromVisible = true
    }
  }
}
</script>


<style scoped>

</style>