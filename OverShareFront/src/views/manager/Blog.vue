<template>
  <div>
    <div class="search">
      <el-input placeholder="请输入标题查询" style="width: 200px" v-model="title"></el-input>
      <el-input placeholder="请输入发布人查询" style="width: 200px; margin-left: 5px" v-model="userName"></el-input>
      <el-input placeholder="请输入分类查询" style="width: 200px; margin-left: 5px" v-model="categoryName"></el-input>
      <el-button type="info" plain style="margin-left: 10px" @click="load(1)">查询</el-button>
      <el-button type="warning" plain style="margin-left: 10px" @click="reset">重置</el-button>
    </div>

    <div class="operation">
      <el-button type="primary" plain @click="handleAdd">新增</el-button>
      <el-button type="danger" plain @click="delBatch">批量删除</el-button>
    </div>

    <div class="table">
      <el-table :data="tableData" stripe @selection-change="handleSelectionChange">
        <el-table-column type="selection" width="55" align="center"></el-table-column>
        <el-table-column prop="id" label="序号" width="80" align="center" sortable></el-table-column>
        <el-table-column prop="title" label="标题" show-overflow-tooltip></el-table-column>
        <el-table-column prop="descr" label="简介" show-overflow-tooltip></el-table-column>
        <el-table-column prop="cover" label="封面">
          <template v-slot="scope">
            <div style="display: flex; align-items: center">
              <el-image style="width: 50px;height: 50px;border-radius: 5px;" v-if="scope.row.cover"
                        :src="scope.row.cover" :preview-src-list="[scope.row.cover]"></el-image>
            </div>
          </template>
        </el-table-column>
        <el-table-column prop="categoryName" label="分类"></el-table-column>
        <el-table-column prop="tags" label="标签">
          <template v-slot="scope">
            <!--tag in JSON.parse(scope.row.tags || '[]')  将tags对象转成字符串后的字符串转成数组，然后循环渲染-->
            <el-tag v-for="tag in JSON.parse(scope.row.tags || '[]')" :key="tag.id" style="margin: 5px">{{ tag }}
            </el-tag>
          </template>
        </el-table-column>
        <el-table-column prop="userId" label="发布人id"></el-table-column>
        <el-table-column prop="userName" label="发布人"></el-table-column>
        <el-table-column prop="date" label="发布日期"></el-table-column>
        <el-table-column prop="readCount" label="浏览量"></el-table-column>
        <el-table-column label="帖子内容">
          <template v-slot="scope">
            <div>
              <el-button @click="handleBlogContent(scope.row.content)">查看内容</el-button>
            </div>
          </template>
        </el-table-column>
        <el-table-column label="操作" width="180" align="center">
          <template v-slot="scope">
            <el-button plain type="primary" @click="handleEdit(scope.row)" size="mini">编辑</el-button>
            <el-button plain type="danger" size="mini" @click="del(scope.row.id); updateCircularsUserId(scope.row.userId)">删除</el-button>
          </template>
        </el-table-column>
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


    <el-dialog title="帖子信息" :visible.sync="fromVisible" width="40%" :close-on-click-modal="false" destroy-on-close>
      <el-form :model="form" label-width="100px" style="padding-right: 50px" :rules="rules" ref="formRef">
        <el-form-item label="标题" prop="title">
          <el-input v-model="form.title" placeholder="标题"></el-input>
        </el-form-item>
        <el-form-item label="简介" prop="descr">
          <el-input type="textarea" v-model="form.descr" placeholder="简介"></el-input>
        </el-form-item>
        <el-form-item label="封面" prop="cover">
          <el-upload
              :action="$baseUrl + '/files/upload'"
              :headers="{ token: user.token }"
              list-type="picture"
              :on-success="handleCoverSuccess"
          >
            <el-button type="primary">上传封面</el-button>
          </el-upload>
        </el-form-item>
        <el-form-item label="分类" prop="categoryId">
          <el-select v-model="form.categoryId" style="width: 100%">
            <el-option v-for="item in categoryList" :key="item.id" :value="item.id" :label="item.name"></el-option>
          </el-select>
        </el-form-item>
        <el-form-item label="标签" prop="tags">
          <el-select v-model="tagsArr" multiple filterable allow-create default-first-option style="width: 100%">
            <el-option value="绘画"></el-option>
            <el-option value="写作"></el-option>
            <el-option value="游戏"></el-option>
            <el-option value="音乐"></el-option>
            <el-option value="博客"></el-option>
            <el-option value="技术"></el-option>
            <el-option value="素材"></el-option>
            <el-option value="动画"></el-option>
            <el-option value="数码"></el-option>
            <el-option value="虚拟偶像"></el-option>
          </el-select>
        </el-form-item>
        <el-form-item label="内容" prop="content">
          <div id="editor"></div>
        </el-form-item>
      </el-form>
      <div slot="footer" class="dialog-footer">
        <el-button @click="fromVisible = false">取 消</el-button>
        <el-button type="primary" @click="save">确 定</el-button>
      </div>
    </el-dialog>

    <el-dialog title="帖子内容" :visible.sync="fromVisible1" width="60%" :close-on-click-modal="false" destroy-on-close>
      <div class="w-e-text">
        <div v-html="content"></div>
      </div>
      <div slot="footer" class="dialog-footer">
        <el-button @click="fromVisible1 = false">关 闭</el-button>
      </div>
    </el-dialog>
    <div v-if="visible">
      <Circulars :userId="circularsUserid" :visible="isVisible" @close="visible = false"></Circulars>
    </div>
  </div>
</template>

<script>
import E from "wangeditor"
import hljs from 'highlight.js'
import category from "@/views/manager/Category.vue";
import Circulars from "@/components/Circulars.vue";

export default {
  name: "Blog",
  components: {Circulars},
  computed: {
    category() {
      return category
    }
  },
  data() {
    return {
      tableData: [],  // 所有的数据
      pageNum: 1,   // 当前的页码
      pageSize: 10,  // 每页显示的个数
      total: 0,
      title: null,
      fromVisible: false,
      fromVisible1: false,
      form: {},
      user: JSON.parse(localStorage.getItem('xm-user') || '{}'),
      rules: {},
      ids: [],
      categoryList: [],
      tagsArr: [],
      categoryName: null,
      userName: null,
      content: '',
      visible: false,
      isVisible: true,
      circularsUserid: null
    }
  },
  created() {
    this.load(1)
  },
  methods: {
    updateCircularsUserId(userId) {
      this.circularsUserid = userId;
    },
    handleBlogContent(content) {
      this.content = content
      this.fromVisible1 = true
    },
    handleAdd() {   // 新增数据
      this.form = {}  // 新增数据的时候清空数据
      this.tagsArr = [] // 清空标签数组
      this.setRichText()  // 初始化富文本编辑器
      this.fromVisible = true   // 打开弹窗
    },
    handleEdit(row) {   // 编辑数据
      this.form = JSON.parse(JSON.stringify(row))  // 给form对象赋值  注意要深拷贝数据
      this.tagsArr = JSON.parse(row.tags || '[]') // 将tags对象转成数组
      this.fromVisible = true   // 打开弹窗
      this.setRichText()  // 初始化富文本编辑器
      setTimeout(() => {
        this.editor.txt.html(this.form.content) // 将编辑器内容赋值给form对象
      }, 0)
    },
    save() {   // 保存按钮触发的逻辑  它会触发新增或者更新
      this.$refs.formRef.validate((valid) => {
        if (valid) {
          this.form.tags = JSON.stringify(this.tagsArr) // 将tags对象转成字符串
          this.form.content = this.editor.txt.html()
          this.$request({
            url: this.form.id ? '/blog/update' : '/blog/add',
            method: this.form.id ? 'PUT' : 'POST',
            data: this.form
          }).then(res => {
            if (res.code === '200') {  // 表示成功保存
              this.$message.success('保存成功')
              this.load(1)
              this.fromVisible = false
            } else {
              this.$message.error(res.msg)  // 弹出错误的信息
            }
          })
        }
      })
    },
    del(id) {   // 单个删除
      this.$confirm('您确定删除吗？', '确认删除', {type: "warning"}).then(response => {
        this.$request.delete('/blog/delete/' + id).then(res => {
          if (res.code === '200') {   // 表示操作成功
            this.$message.success('操作成功')
            this.load(1)
            //发送通知给用户
            this.visible = true
          } else {
            this.$message.error(res.msg)  // 弹出错误的信息
          }
        })
        this.visible = false
      }).catch(() => {
      })
    },
    handleSelectionChange(rows) {   // 当前选中的所有的行数据
      this.ids = rows.map(v => v.id)   //  [1,2]
    },
    delBatch() {   // 批量删除
      if (!this.ids.length) {
        this.$message.warning('请选择数据')
        return
      }
      this.$confirm('您确定批量删除这些数据吗？', '确认删除', {type: "warning"}).then(response => {
        this.$request.delete('/blog/delete/batch', {data: this.ids}).then(res => {
          if (res.code === '200') {   // 表示操作成功
            this.$message.success('操作成功')
            this.load(1)
          } else {
            this.$message.error(res.msg)  // 弹出错误的信息
          }
        })
      }).catch(() => {
      })
    },
    load(pageNum) {  // 分页查询
      if (pageNum) this.pageNum = pageNum
      this.$request.get('/blog/selectPage', {
        params: {
          pageNum: this.pageNum,
          pageSize: this.pageSize,
          title: this.title,
          categoryName: this.categoryName,
          userName: this.userName,
        }
      }).then(res => {
        this.tableData = res.data?.list
        this.total = res.data?.total
      })
      this.$request.get('/category/selectAll').then(res => {
        this.categoryList = res.data || []
      })
    },
    reset() {
      this.title = null
      this.categoryName = null
      this.userName = null
      this.load(1)
    },
    handleCurrentChange(pageNum) {
      this.load(pageNum)
    },
    handleCoverSuccess(res) {
      this.form.cover = res.data
    },
    setRichText() {
      this.$nextTick(() => {
        this.editor = new E(`#editor`)  // 实例化\初始化
        this.editor.highlight = hljs    // 配置高亮
        this.editor.config.uploadImgServer = this.$baseUrl + '/files/editor/upload' // 上传图片的接口
        this.editor.config.uploadFileName = 'file'  // 上传图片的参数名
        this.editor.config.uploadImgHeaders = {
          token: this.user.token  // token
        }
        this.editor.config.uploadImgParams = {
          type: 'img',
        }
        this.editor.create()  // 创建
      })
    },
  }
}
</script>

<style scoped>

</style>
