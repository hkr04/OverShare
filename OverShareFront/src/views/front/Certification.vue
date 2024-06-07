<template>
  <div class="main-content" style="width: 50%">
    <div class="card" style="font-weight: bold;font-size: 28px;display: flex">
      创作者认证
    </div>
    <div class="card" style="margin-top: 10px">
      <el-form :model="form" ref="formRef" label-width="100px" label-align="right" :rules="rules">
        <el-form-item label="姓名" prop="name" required>
          <el-input v-model="form.name" placeholder="请输入姓名"></el-input>
        </el-form-item>
        <el-form-item label="本人照片" prop="avatar" required>
          <el-upload
              :action="$baseUrl + '/files/upload'"
              :headers="{ token: user.token }"
              list-type="picture"
              :on-success="handleAvatarSuccess"
          >
            <el-button type="primary">上传本人照片</el-button>
          </el-upload>
        </el-form-item>
        <el-form-item label="身份证正面(国徽面)" prop="card1" required>
          <el-upload
              :action="$baseUrl + '/files/upload'"
              :headers="{ token: user.token }"
              list-type="picture"
              :on-success="handleCard1Success"
          >
            <el-button type="primary">上传身份证正面</el-button>
          </el-upload>
        </el-form-item>
        <el-form-item label="身份证反面(人像面)" prop="card2" required>
          <el-upload
              :action="$baseUrl + '/files/upload'"
              :headers="{ token: user.token }"
              list-type="picture"
              :on-success="handleCard2Success"
          >
            <el-button type="primary">上传身份证反面</el-button>
          </el-upload>
        </el-form-item>
        <el-form-item label="身份证号码" prop="cardNo" required>
          <el-input v-model="form.cardNo" placeholder="请输入身份证号码" minlength="18"></el-input>
        </el-form-item>
        <el-form-item label="联系方式" prop="phone" required>
          <el-input v-model="form.phone" placeholder="请输入联系方式" minlength="11"></el-input>
        </el-form-item>
        <el-form-item label="常住地址" prop="address" required>
          <el-input v-model="form.address" placeholder="请输入常住地址"></el-input>
        </el-form-item>
        <el-form-item label="审核状态" prop="status">
          <div style="padding-top: 15rpx;">
            <el-tag type="default" v-if="!form.status">待申请</el-tag>
            <el-tag type="warning" v-if="form.status === '待审核'">待审核</el-tag>
            <el-tag type="success" v-if="form.status === '审核通过'">审核通过，请重新登录</el-tag>
            <el-tag type="error" v-if="form.status === '审核未通过'">审核未通过</el-tag>
          </div>
        </el-form-item>
        <el-form-item label="审核理由" prop="reason" v-if="form.reason">
          <div style="padding-top: 15rpx;">
            {{ form.reason }}
          </div>
        </el-form-item>

        <div style="margin-bottom: 20rpx;">
          <el-button style="background-color: #006eff" :disabled="isFormDisabled" class="my-button-primary"
                     type="primary" @click="submitRequest">
            提交申请
          </el-button>
        </div>
        <div v-if="form.id && form.status === '审核未通过'">
          <el-button style="background-color: #ff2050" class="my-button-danger"
                     type="primary" @click="deleteRequest">
            删除申请
          </el-button>
        </div>
      </el-form>
    </div>
  </div>
</template>
<script>
export default {
  name: "Certification",
  data() {
    return {
      user: JSON.parse(localStorage.getItem('xm-user') || '{}'),
      form: {},
      rules: {
        name: [
          { required: true, message: '请输入姓名', trigger: 'blur' },
          { min: 2, max: 10, message: '长度在 2 到 10 个字符', trigger: 'blur' },
          {
            required: true,
            pattern: /^[\u4e00-\u9fa5_a-zA-Z0-9.·-]+$/,
            message: '姓名不支持特殊字符',
            trigger: 'blur'
          }
        ],
        avatar: [
          {required: true, message: '请上传本人照片', trigger: 'blur'},
        ],
        card1: [
          {required: true, message: '请上传身份证正面', trigger: 'blur'},
        ],
        card2: [
          {required: true, message: '请上传身份证反面', trigger: 'blur'},
        ],
        cardNo: [
          {required: true, message: "请输入正确的身份证号码", trigger: "blur"},
          {
            pattern: /(^\d{15}$)|(^\d{18}$)|(^\d{17}(\d|X|x)$)/,
            message: "请输入正确的身份证号码",
          },
        ],
        phone: [
          {required: true, message: "请输入联系方式", trigger: "blur"},
          {min: 11, max: 11, message: "请输入11位手机号码", trigger: "blur"},
          {
            pattern: /^(13[0-9]|14[579]|15[0-3,5-9]|16[6]|17[0135678]|18[0-9]|19[89])\d{8}$/,
            //pattern: /^1[3456789]\d{9}$/,
            message: "请输入正确的手机号码",
          },
        ],
        address: [
          {required: true, message: '请输入常住地址', trigger: 'blur'},
        ],
      }
    }
  },
  mounted() {
    this.load()
  },
  computed: {
    isFormDisabled() {
      const disabledStatuses = ['审核未通过', '待审核', '审核通过'];
      return disabledStatuses.includes(this.form.status);
    },
  },

  methods: {
    load() {
      this.$request.get('/certification/selectUserCertification').then(res => {
        this.form = res.data || {}
      })
    },
    handleAvatarSuccess(res) {
      this.form.avatar = res.data
    },
    handleCard1Success(res) {
      this.form.card1 = res.data
    },
    handleCard2Success(res) {
      this.form.card2 = res.data
    },
    submitRequest() {
      this.$refs.formRef.validate().then(r => {
        this.form.userId = this.user.id
        this.$request.post('/certification/add', this.form).then(res => {
          if (res.code === '200') {
            this.$message.success('提交成功')
            this.load()
          } else {
            this.$message.error(res.msg)  // 弹出错误的信息
          }
        })
      }).catch(err => {
        console.log('err', err);
      })
    },
    deleteRequest() {
      this.$confirm('您确定删除申请吗？', '确认删除', {type: "warning"}).then(response => {
        this.$request.delete('/certification/deleteByUserId/' + this.user.id).then(res => {
          if (res.code === '200') {   // 表示删除成功
            this.$message.success('删除成功')
            this.load()
          } else {
            console.log(res.code)
            this.$message.error(res.msg)  // 弹出错误的信息
          }
        })
      }).catch(err => {
        console.log('err', err);
      })
    }
  }
}
</script>


<style scoped>
.my-button-primary {
  background-color: #006eff !important;
  height: 70rpx;
  line-height: 70rpx;
  font-size: 28rpx;
}
</style>