<template>
  <div>
    <el-row :gutter="10" v-if="total">
      <el-col :span="12" v-for="item in tableData" :key="item.id">
        <div class="card" style="margin-bottom: 10px; cursor: pointer" @click="goDetail(item.id)">
          <img :src="item.cover" style="width: 100%; height: 250px;border-radius: 5px" alt="">
          <div style="margin: 10px 0; font-weight: bold;width: 100%; height: 35px;font-size:15px;">{{ item.name }}</div>
          <div style="display: flex; align-items: center; justify-content: space-between;">
            
            <div><i class="el-icon-time" style="margin-right: 5px"></i>报名时间：{{ item.applystart }} - {{ item.applyend }}</div>
            <div v-if="!item.isApplyEnd" class="countdown">
              <div class="countdown-block">
                <div class="countdown-value">{{ item.applyRemainingDays }}天 | {{ item.applyRemainingHours }}小时</div>
              </div>
            </div>
            <div v-else style="color: gray; font-weight: bold;">
              报名已结束
            </div>
          </div>
          <div style="display: flex; align-items: center; justify-content: space-between;">
            <div><i class="el-icon-time" style="margin-right: 5px;margin-top: 10px;"></i>比赛时间：{{ item.start }} - {{ item.end }}</div>
            <div v-if="!item.isEndActivity" class="countdown">
              <div class="countdown-block">
                <div class="countdown-value">{{ item.remainingDays }}天 | {{ item.remainingHours }}小时</div>
              </div>
            </div>
            <div v-else style="color: gray; font-weight: bold;">
              已结束
            </div>
          </div>
          <div style="text-align: right; margin-top: 10px;">
            <el-button type="primary" disabled v-if="item.isEndActivity" key="已结束">已结束</el-button>
            <el-button type="primary" disabled v-else-if="item.isSign" key="已报名">已报名</el-button>
            <el-button type="primary" v-else key="报 名" >报 名</el-button>
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
          :page-sizes="[4, 8, 12]"
          :page-size="pageSize"
          layout="total, prev, pager, next"
          :total="total">
      </el-pagination>

      <Footer></Footer>
    </div>
  </div>
</template>

<script>
import Footer from "@/components/Footer.vue";

export default {
  name: "ActivityList",
  data() {
    return {
      tableData: [],  // 所有的数据
      pageNum: 1,   // 当前的页码
      pageSize: 4,  // 每页显示的个数
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
    this.startCountdown()
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
        this.updateCountdown()
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
    startCountdown() {
      setInterval(this.updateCountdown, 1000);
    },
    updateCountdown() {
      const now = new Date();
      this.tableData.forEach(item => {
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
.countdown {
  display: flex;
  gap: 10px;
}

.countdown-block {
  display: flex;
  flex-direction: column;
  align-items: center;
  width: 120px;
  height: 25px;
  border: 2px solid #7acaddcc;
  border-radius: 5px;
  background-color: #f5f5f5;
}

.countdown-value {
  font-size: 15px;
  font-weight: bold;
}

</style>
