"use strict";(self["webpackChunkvue"]=self["webpackChunkvue"]||[]).push([[468],{75468:function(t,e,i){i.r(e),i.d(e,{default:function(){return c}});var l=function(){var t=this,e=t._self._c;return e("div",[e("div",{staticStyle:{display:"flex",margin:"10px 0"}},[e("div",{staticClass:"card",staticStyle:{width:"100%","margin-bottom":"10px"}},[e("div",{staticStyle:{"margin-bottom":"30px","font-size":"20px","font-weight":"bold"}},[t._v("具体公告细节")]),e("div",[e("el-timeline",{attrs:{slot:"reference",reverse:""},slot:"reference"},t._l(t.notices,(function(i){return e("el-timeline-item",{key:i.id,attrs:{timestamp:i.time}},[e("el-popover",{attrs:{placement:"right",width:"200",trigger:"hover",content:i.content}},[e("span",{attrs:{slot:"reference"},slot:"reference"},[t._v(t._s(i.title))])])],1)})),1)],1)])]),e("div",{staticClass:"search"},[e("el-input",{staticStyle:{width:"200px"},attrs:{placeholder:"请输入标题查询"},model:{value:t.title,callback:function(e){t.title=e},expression:"title"}}),e("el-button",{staticStyle:{"margin-left":"10px"},attrs:{type:"info",plain:""},on:{click:function(e){return t.load(1)}}},[t._v("查询")]),e("el-button",{staticStyle:{"margin-left":"10px"},attrs:{type:"warning",plain:""},on:{click:t.reset}},[t._v("重置")])],1),e("div",{staticClass:"operation"},[e("el-button",{attrs:{type:"primary",plain:""},on:{click:t.handleAdd}},[t._v("新增")]),e("el-button",{attrs:{type:"danger",plain:""},on:{click:t.delBatch}},[t._v("批量删除")])],1),e("div",{staticClass:"table"},[e("el-table",{attrs:{data:t.tableData,stripe:""},on:{"selection-change":t.handleSelectionChange}},[e("el-table-column",{attrs:{type:"selection",width:"55",align:"center"}}),e("el-table-column",{attrs:{prop:"id",label:"序号",width:"80",align:"center",sortable:""}}),e("el-table-column",{attrs:{prop:"title",label:"标题","show-overflow-tooltip":""}}),e("el-table-column",{attrs:{prop:"content",label:"内容","show-overflow-tooltip":""}}),e("el-table-column",{attrs:{prop:"time",label:"创建时间"}}),e("el-table-column",{attrs:{prop:"user",label:"创建人"}}),e("el-table-column",{attrs:{label:"操作",width:"180",align:"center"},scopedSlots:t._u([{key:"default",fn:function(i){return[e("el-button",{attrs:{plain:"",type:"primary",size:"mini"},on:{click:function(e){return t.handleEdit(i.row)}}},[t._v("编辑")]),e("el-button",{attrs:{plain:"",type:"danger",size:"mini"},on:{click:function(e){return t.del(i.row.id)}}},[t._v("删除")])]}}])})],1),e("div",{staticClass:"pagination"},[e("el-pagination",{attrs:{background:"","current-page":t.pageNum,"page-sizes":[5,10,20],"page-size":t.pageSize,layout:"total, prev, pager, next",total:t.total},on:{"current-change":t.handleCurrentChange}})],1)],1),e("el-dialog",{attrs:{title:"信息",visible:t.fromVisible,width:"40%","close-on-click-modal":!1,"destroy-on-close":""},on:{"update:visible":function(e){t.fromVisible=e}}},[e("el-form",{ref:"formRef",staticStyle:{"padding-right":"50px"},attrs:{"label-width":"100px",model:t.form,rules:t.rules}},[e("el-form-item",{attrs:{prop:"title",label:"标题"}},[e("el-input",{attrs:{autocomplete:"off"},model:{value:t.form.title,callback:function(e){t.$set(t.form,"title",e)},expression:"form.title"}})],1),e("el-form-item",{attrs:{prop:"content",label:"内容"}},[e("el-input",{attrs:{type:"textarea",rows:5,autocomplete:"off"},model:{value:t.form.content,callback:function(e){t.$set(t.form,"content",e)},expression:"form.content"}})],1)],1),e("div",{staticClass:"dialog-footer",attrs:{slot:"footer"},slot:"footer"},[e("el-button",{on:{click:function(e){t.fromVisible=!1}}},[t._v("取 消")]),e("el-button",{attrs:{type:"primary"},on:{click:t.save}},[t._v("确 定")])],1)],1)],1)},a=[],s={name:"Home",data(){return{user:JSON.parse(localStorage.getItem("xm-user")||"{}"),notices:[],tableData:[],pageNum:1,pageSize:10,total:0,title:null,fromVisible:!1,form:{},user:JSON.parse(localStorage.getItem("xm-user")||"{}"),rules:{title:[{required:!0,message:"请输入标题",trigger:"blur"}],content:[{required:!0,message:"请输入内容",trigger:"blur"}]},ids:[]}},created(){this.$request.get("/notice/selectAll").then((t=>{this.notices=t.data||[]})),this.load(1)},methods:{handleAdd(){this.form={},this.fromVisible=!0},handleEdit(t){this.form=JSON.parse(JSON.stringify(t)),this.fromVisible=!0},save(){this.$refs.formRef.validate((t=>{t&&this.$request({url:this.form.id?"/notice/update":"/notice/add",method:this.form.id?"PUT":"POST",data:this.form}).then((t=>{"200"===t.code?(this.$message.success("保存成功"),this.load(1),this.fromVisible=!1):this.$message.error(t.msg)}))}))},del(t){this.$confirm("您确定删除吗？","确认删除",{type:"warning"}).then((e=>{this.$request.delete("/notice/delete/"+t).then((t=>{"200"===t.code?(this.$message.success("操作成功"),this.load(1)):this.$message.error(t.msg)}))})).catch((()=>{}))},handleSelectionChange(t){this.ids=t.map((t=>t.id))},delBatch(){this.ids.length?this.$confirm("您确定批量删除这些数据吗？","确认删除",{type:"warning"}).then((t=>{this.$request.delete("/notice/delete/batch",{data:this.ids}).then((t=>{"200"===t.code?(this.$message.success("操作成功"),this.load(1)):this.$message.error(t.msg)}))})).catch((()=>{})):this.$message.warning("请选择数据")},load(t){t&&(this.pageNum=t),this.$request.get("/notice/selectPage",{params:{pageNum:this.pageNum,pageSize:this.pageSize,title:this.title}}).then((t=>{this.tableData=t.data?.list,this.total=t.data?.total}))},reset(){this.title=null,this.load(1)},handleCurrentChange(t){this.load(t)}}},r=s,o=i(81656),n=(0,o.A)(r,l,a,!1,null,null,null),c=n.exports}}]);
//# sourceMappingURL=468.08b09fff.js.map