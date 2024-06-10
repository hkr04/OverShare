"use strict";(self["webpackChunkvue"]=self["webpackChunkvue"]||[]).push([[574],{71574:function(e,t,r){r.r(t),r.d(t,{default:function(){return u}});var s=function(){var e=this,t=e._self._c;return t("div",{staticClass:"main-content",staticStyle:{width:"50%"}},[t("div",{staticClass:"card",staticStyle:{"font-weight":"bold","font-size":"28px",display:"flex"}},[e._v(" 身份认证 ")]),t("div",{staticClass:"card",staticStyle:{"margin-top":"10px"}},[t("el-form",{ref:"formRef",attrs:{model:e.form,"label-width":"100px","label-align":"right",rules:e.rules}},[t("el-form-item",{attrs:{label:"姓名",prop:"name",required:""}},[t("el-input",{attrs:{placeholder:"请输入姓名"},model:{value:e.form.name,callback:function(t){e.$set(e.form,"name",t)},expression:"form.name"}})],1),t("el-form-item",{attrs:{label:"本人照片",prop:"avatar",required:""}},[t("el-upload",{attrs:{action:e.$baseUrl+"/files/upload",headers:{token:e.user.token},"list-type":"picture","on-success":e.handleAvatarSuccess}},[t("el-button",{attrs:{type:"primary"}},[e._v("上传本人照片")])],1)],1),t("el-form-item",{attrs:{label:"身份证正面(国徽面)",prop:"card1",required:""}},[t("el-upload",{attrs:{action:e.$baseUrl+"/files/upload",headers:{token:e.user.token},"list-type":"picture","on-success":e.handleCard1Success}},[t("el-button",{attrs:{type:"primary"}},[e._v("上传身份证正面")])],1)],1),t("el-form-item",{attrs:{label:"身份证反面(人像面)",prop:"card2",required:""}},[t("el-upload",{attrs:{action:e.$baseUrl+"/files/upload",headers:{token:e.user.token},"list-type":"picture","on-success":e.handleCard2Success}},[t("el-button",{attrs:{type:"primary"}},[e._v("上传身份证反面")])],1)],1),t("el-form-item",{attrs:{label:"身份证号码",prop:"cardNo",required:""}},[t("el-input",{attrs:{placeholder:"请输入身份证号码",minlength:"18"},model:{value:e.form.cardNo,callback:function(t){e.$set(e.form,"cardNo",t)},expression:"form.cardNo"}})],1),t("el-form-item",{attrs:{label:"联系方式",prop:"phone",required:""}},[t("el-input",{attrs:{placeholder:"请输入联系方式",minlength:"11"},model:{value:e.form.phone,callback:function(t){e.$set(e.form,"phone",t)},expression:"form.phone"}})],1),t("el-form-item",{attrs:{label:"常住地址",prop:"address",required:""}},[t("el-input",{attrs:{placeholder:"请输入常住地址"},model:{value:e.form.address,callback:function(t){e.$set(e.form,"address",t)},expression:"form.address"}})],1),t("el-form-item",{attrs:{label:"审核状态",prop:"status"}},[t("div",{staticStyle:{"padding-top":"15rpx"}},[e.form.status?e._e():t("el-tag",{attrs:{type:"default"}},[e._v("待申请")]),"待审核"===e.form.status?t("el-tag",{attrs:{type:"warning"}},[e._v("待审核")]):e._e(),"审核通过"===e.form.status?t("el-tag",{attrs:{type:"success"}},[e._v("审核通过，请重新登录")]):e._e(),"审核未通过"===e.form.status?t("el-tag",{attrs:{type:"error"}},[e._v("审核未通过")]):e._e()],1)]),e.form.reason?t("el-form-item",{attrs:{label:"审核理由",prop:"reason"}},[t("div",{staticStyle:{"padding-top":"15rpx"}},[e._v(" "+e._s(e.form.reason)+" ")])]):e._e(),t("div",{staticStyle:{"margin-bottom":"20rpx"}},[t("el-button",{staticClass:"my-button-primary",staticStyle:{"background-color":"#006eff"},attrs:{disabled:e.isFormDisabled,type:"primary"},on:{click:e.submitRequest}},[e._v(" 提交申请 ")])],1),e.form.id&&"审核未通过"===e.form.status?t("div",[t("el-button",{staticClass:"my-button-danger",staticStyle:{"background-color":"#ff2050"},attrs:{type:"primary"},on:{click:e.deleteRequest}},[e._v(" 删除申请 ")])],1):e._e()],1)],1)])},a=[],l={name:"Certification",data(){return{user:JSON.parse(localStorage.getItem("xm-user")||"{}"),form:{},rules:{name:[{required:!0,message:"请输入姓名",trigger:"blur"},{min:2,max:10,message:"长度在 2 到 10 个字符",trigger:"blur"},{required:!0,pattern:/^[\u4e00-\u9fa5_a-zA-Z0-9.·-]+$/,message:"姓名不支持特殊字符",trigger:"blur"}],avatar:[{required:!0,message:"请上传本人照片",trigger:"blur"}],card1:[{required:!0,message:"请上传身份证正面",trigger:"blur"}],card2:[{required:!0,message:"请上传身份证反面",trigger:"blur"}],cardNo:[{required:!0,message:"请输入正确的身份证号码",trigger:"blur"},{pattern:/(^\d{15}$)|(^\d{18}$)|(^\d{17}(\d|X|x)$)/,message:"请输入正确的身份证号码"}],phone:[{required:!0,message:"请输入联系方式",trigger:"blur"},{min:11,max:11,message:"请输入11位手机号码",trigger:"blur"},{pattern:/^(13[0-9]|14[579]|15[0-3,5-9]|16[6]|17[0135678]|18[0-9]|19[89])\d{8}$/,message:"请输入正确的手机号码"}],address:[{required:!0,message:"请输入常住地址",trigger:"blur"}]}}},mounted(){this.load()},computed:{isFormDisabled(){const e=["审核未通过","待审核","审核通过"];return e.includes(this.form.status)}},methods:{load(){this.$request.get("/certification/selectUserCertification").then((e=>{this.form=e.data||{}}))},handleAvatarSuccess(e){this.form.avatar=e.data},handleCard1Success(e){this.form.card1=e.data},handleCard2Success(e){this.form.card2=e.data},submitRequest(){this.$refs.formRef.validate().then((e=>{this.form.userId=this.user.id,this.$request.post("/certification/add",this.form).then((e=>{"200"===e.code?(this.$message.success("提交成功"),this.load()):this.$message.error(e.msg)}))})).catch((e=>{console.log("err",e)}))},deleteRequest(){this.$confirm("您确定删除申请吗？","确认删除",{type:"warning"}).then((e=>{this.$request.delete("/certification/deleteByUserId/"+this.user.id).then((e=>{"200"===e.code?(this.$message.success("删除成功"),this.load()):(console.log(e.code),this.$message.error(e.msg))}))})).catch((e=>{console.log("err",e)}))}}},o=l,i=r(81656),d=(0,i.A)(o,s,a,!1,null,"7a6e9ed4",null),u=d.exports}}]);
//# sourceMappingURL=574.3bf5d361.js.map