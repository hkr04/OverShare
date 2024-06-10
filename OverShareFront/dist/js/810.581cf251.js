"use strict";(self["webpackChunkvue"]=self["webpackChunkvue"]||[]).push([[810],{15783:function(t,e,a){a.d(e,{A:function(){return c}});var s=function(){var t=this,e=t._self._c;return e("div",[t.total?e("el-row",{attrs:{gutter:10}},t._l(t.tableData,(function(a){return e("el-col",{key:a.id,attrs:{span:12}},[e("div",{staticClass:"card",staticStyle:{"margin-bottom":"10px",cursor:"pointer"},on:{click:function(e){return t.goDetail(a.id)}}},[e("img",{staticStyle:{width:"100%",height:"250px","border-radius":"5px"},attrs:{src:a.cover,alt:""}}),e("div",{staticStyle:{margin:"10px 0","font-weight":"bold",width:"100%",height:"35px","font-size":"15px"}},[t._v(t._s(a.name))]),e("div",{staticStyle:{display:"flex","align-items":"center","justify-content":"space-between"}},[e("div",[e("i",{staticClass:"el-icon-time",staticStyle:{"margin-right":"5px"}}),t._v("报名时间："+t._s(a.applystart)+" - "+t._s(a.applyend))]),a.isApplyEnd?e("div",{staticStyle:{color:"gray","font-weight":"bold"}},[t._v(" 报名已结束 ")]):e("div",{staticClass:"countdown"},[e("div",{staticClass:"countdown-block1"},[e("div",{staticClass:"countdown-value1"},[t._v(t._s(a.applyRemainingDays)+"天 | "+t._s(a.applyRemainingHours)+"小时")])])])]),e("div",{staticStyle:{display:"flex","align-items":"center","justify-content":"space-between"}},[e("div",[e("i",{staticClass:"el-icon-time",staticStyle:{"margin-right":"5px","margin-top":"10px"}}),t._v("比赛时间："+t._s(a.start)+" - "+t._s(a.end))]),a.isEndActivity?e("div",{staticStyle:{color:"gray","font-weight":"bold"}},[t._v(" 已结束 ")]):e("div",{staticClass:"countdown"},[e("div",{staticClass:"countdown-block1"},[e("div",{staticClass:"countdown-value1"},[t._v(t._s(a.remainingDays)+"天 | "+t._s(a.remainingHours)+"小时")])])])]),e("div",{staticStyle:{"text-align":"right","margin-top":"10px"}},[a.isEndActivity?e("el-button",{key:"已结束",attrs:{type:"primary",disabled:""}},[t._v("已结束")]):a.isSign?e("el-button",{key:"已报名",attrs:{type:"primary",disabled:""}},[t._v("已报名")]):e("el-button",{key:"查看详情",attrs:{type:"primary"}},[t._v("查看详情")])],1)])])})),1):t._e(),0===t.total?e("div",{staticClass:"card",staticStyle:{"text-align":"center","font-size":"16px",color:"#666"}},[t._v("暂无数据")]):t._e(),t.total?e("div",{staticClass:"card",staticStyle:{padding:"10px"}},[e("el-pagination",{attrs:{background:"","current-page":t.pageNum,"page-sizes":[4,8,12],"page-size":t.pageSize,layout:"total, prev, pager, next",total:t.total},on:{"current-change":t.handleCurrentChange}}),e("Footer")],1):t._e()],1)},i=[],r=(a(56088),{name:"ActivityList",data(){return{tableData:[],pageNum:1,pageSize:4,total:0,name:null}},props:{type:null,span:null},mounted(){this.load(1),this.startCountdown()},methods:{goDetail(t){window.open("/front/ActivityDetail?activityId="+t)},load(t){let e;switch(this.type){case"user":e="/activity/selectUser";break;case"like":e="/activity/selectLike";break;case"collect":e="/activity/selectCollect";break;case"comment":e="/activity/selectComment";break;default:e="/activity/selectPage"}t&&(this.pageNum=t),this.$request.get(e,{params:{pageNum:this.pageNum,pageSize:this.pageSize,name:this.name,host:this.host}}).then((t=>{this.tableData=t.data?.list,this.total=t.data?.total,this.updateCountdown()}))},reset(){this.name=null,this.host=null,this.load(1)},handleCurrentChange(t){this.load(t)},startCountdown(){setInterval(this.updateCountdown,1e3)},updateCountdown(){if(null==this.tableData||0===this.tableData.length)return;const t=new Date;this.tableData.forEach((e=>{const a=new Date(e.applyend);if(a>t){const s=this.calculateRemainingTime(t,a);this.$set(e,"applyRemainingDays",s.days),this.$set(e,"applyRemainingHours",s.hours),this.$set(e,"isApplyEnd",!1)}else this.$set(e,"applyRemainingDays",0),this.$set(e,"applyRemainingHours",0),this.$set(e,"isApplyEnd",!0);const s=new Date(e.end);if(s>t){const a=this.calculateRemainingTime(t,s);this.$set(e,"remainingDays",a.days),this.$set(e,"remainingHours",a.hours),this.$set(e,"isEndActivity",!1)}else this.$set(e,"remainingDays",0),this.$set(e,"remainingHours",0),this.$set(e,"isEndActivity",!0)}))},calculateRemainingTime(t,e){const a=e-t,s=Math.floor(a/864e5),i=Math.floor(a%864e5/36e5);return{days:s,hours:i}}}}),l=r,n=a(81656),o=(0,n.A)(l,s,i,!1,null,null,null),c=o.exports},74941:function(t,e,a){a.d(e,{A:function(){return c}});var s=function(){var t=this,e=t._self._c;return e("div",{staticClass:"card"},[t._l(t.tableData,(function(a){return t.total>0?e("div",{key:a.id,staticClass:"blog-box"},[e("div",{staticStyle:{flex:"1",width:"0",height:"100px"}},[e("a",{attrs:{href:"/front/blogDetail?blogId="+a.id,target:"_blank"}},[e("div",{staticClass:"blog-box-title"},[t._v(t._s(a.title)+" ")])]),e("div",{staticClass:"line1",staticStyle:{color:"#666","margin-bottom":"10px","font-size":"13px"}},[t._v(" "+t._s(a.descr)+" ")]),e("div",{staticStyle:{display:"flex"}},[e("div",{staticStyle:{flex:"1","font-size":"13px"}},[e("span",{staticStyle:{color:"#666","margin-right":"20px"}},[e("i",{staticClass:"el-icon-user",staticStyle:{"margin-right":"5px"}}),t._v(" "+t._s(a.userName)+" ")]),e("span",{staticStyle:{color:"#666","margin-right":"20px"}},[e("i",{staticClass:"el-icon-eye",staticStyle:{"margin-right":"5px"}}),t._v(" "+t._s(a.readCount)+" ")]),e("span",{staticStyle:{color:"#666"}},[e("i",{staticClass:"el-icon-like",staticStyle:{"margin-right":"5px"}}),t._v(" "+t._s(a.likesCount)+" ")]),t.showOpt?e("span",{staticStyle:{"margin-left":"40px",color:"red",cursor:"pointer"},on:{click:function(e){return t.del(a.id)}}},[e("i",{staticClass:"el-icon-delete"}),t._v("删除")]):t._e(),t.showOpt?e("span",{staticStyle:{"margin-left":"10px",color:"#2a60c9",cursor:"pointer"},on:{click:function(e){return t.editBlog(a.id)}}},[e("i",{staticClass:"el-icon-edit"}),t._v("编辑")]):t._e()]),e("div",{staticStyle:{width:"fit-content"}},t._l(JSON.parse(a.tags||[]),(function(a){return e("el-tag",{key:a.id,staticStyle:{"margin-right":"5px"},attrs:{type:"primary"}},[t._v(t._s(a)+" ")])})),1)])]),e("div",[e("div",{staticStyle:{width:"100%"}},[e("img",{staticStyle:{width:"100%",height:"80px","border-radius":"5px"},attrs:{src:a.cover,alt:""}})])])]):t._e()})),0===t.total?e("div",{staticStyle:{padding:"20px","text-align":"center","font-size":"16px",color:"#666"}},[t._v("暂无数据")]):t._e(),t.total?e("div",{staticClass:"pagination",staticStyle:{"margin-top":"10px"}},[e("el-pagination",{attrs:{background:"","current-page":t.pageNum,"page-sizes":[5,10,20],"page-size":t.pageSize,layout:"total, prev, pager, next",total:t.total},on:{"current-change":t.handleCurrentChange}})],1):t._e()],2)},i=[],r={name:"BlogList",props:{categoryName:null,type:null,showOpt:!1},watch:{categoryName(){this.loadBlog(1)}},data(){return{pageNum:1,pageSize:10,tableData:[],total:0,title:this.$route.query.title,userId:this.$route.query.userId}},mounted(){this.loadBlog(1)},methods:{editBlog(t){window.open("/front/newBlog?blogId="+t)},del(t){this.$confirm("您确定删除吗？","确认删除",{type:"warning"}).then((e=>{this.$request.delete("/blog/delete/"+t).then((t=>{"200"===t.code?(this.$message.success("操作成功"),this.loadBlog(1)):this.$message.error(t.msg)}))})).catch((()=>{}))},loadBlog(t){let e;switch(t&&(this.pageNum=t),this.type){case"user":e="/blog/selectUser";break;case"like":e="/blog/selectLike";break;case"collect":e="/blog/selectCollect";break;case"comment":e="/blog/selectComment";break;case"certification":e="/blog/selectCertification";break;default:e="/blog/selectPage"}this.$request.get(e,{params:{pageNum:this.pageNum,pageSize:this.pageSize,categoryName:"全部竞赛"===this.categoryName?null:this.categoryName,title:this.title,userId:this.userId}}).then((t=>{this.tableData=t.data?.list,this.total=t.data?.total}))},handleCurrentChange(t){this.loadBlog(t)}}},l=r,n=a(81656),o=(0,n.A)(l,s,i,!1,null,"76fafb92",null),c=o.exports},56088:function(t,e,a){a.d(e,{A:function(){return c}});var s=function(){var t=this;t._self._c;return t._m(0)},i=[function(){var t=this,e=t._self._c;return e("div",{staticStyle:{"font-size":"16px",padding:"20px 0","text-align":"center","line-height":"30px",color:"#666666"}},[e("div",[t._v("OverShare竞赛信息平台")]),e("div",[t._v("OverShare竞赛信息平台是高含金量竞赛平台。为全国大学生提供各类高含金量竞赛信息聚合、报名和团队招募服务")]),e("div",[t._v("武汉大学软件工程小组NO.14")])])}],r={name:"Footer"},l=r,n=a(81656),o=(0,n.A)(l,s,i,!1,null,"4faddf82",null),c=o.exports},93810:function(t,e,a){a.r(e),a.d(e,{default:function(){return P}});var s=function(){var t=this,e=t._self._c;return e("div",{staticClass:"main-content",staticStyle:{width:"50%"}},[e("el-tabs",{on:{"tab-click":t.clickTab},model:{value:t.activeName,callback:function(e){t.activeName=e},expression:"activeName"}},[e("el-tab-pane",{attrs:{label:"个人信息",name:"个人信息"}},[e("PersonPage",{on:{"update:user":t.updateUser}})],1),e("el-tab-pane",{attrs:{label:"我的帖子",name:"我的帖子"}},[e("div",{staticStyle:{"margin-top":"10px"}},[e("BlogList",{attrs:{type:"user",showOpt:!0}})],1)]),e("el-tab-pane",{attrs:{label:"已报名竞赛",name:"已报名竞赛"}},[e("ActivityList",{attrs:{type:"user",span:12}})],1),e("el-tab-pane",{attrs:{label:"我的点赞",name:"我的点赞"}},[e("div",{staticClass:"card",staticStyle:{display:"flex",padding:"5px"}},[e("div",{staticClass:"category-btn",class:{active:"帖子"===t.likesCurrent},on:{click:function(e){t.likesCurrent="帖子"}}},[t._v("帖子 ")]),e("div",{staticClass:"category-btn",class:{active:"竞赛"===t.likesCurrent},on:{click:function(e){t.likesCurrent="竞赛"}}},[t._v("竞赛 ")])]),e("div",{staticStyle:{"margin-top":"10px"}},["帖子"===t.likesCurrent?e("BlogList",{attrs:{type:"like"}}):t._e(),"竞赛"===t.likesCurrent?e("ActivityList",{attrs:{type:"like",span:12}}):t._e()],1)]),e("el-tab-pane",{attrs:{label:"我的收藏",name:"我的收藏"}},[e("div",{staticClass:"card",staticStyle:{display:"flex",padding:"5px"}},[e("div",{staticClass:"category-btn",class:{active:"帖子"===t.collectCurrent},on:{click:function(e){t.collectCurrent="帖子"}}},[t._v("帖子 ")]),e("div",{staticClass:"category-btn",class:{active:"竞赛"===t.collectCurrent},on:{click:function(e){t.collectCurrent="竞赛"}}},[t._v("竞赛 ")])]),e("div",{staticStyle:{"margin-top":"10px"}},["帖子"===t.collectCurrent?e("BlogList",{attrs:{type:"collect"}}):t._e(),"竞赛"===t.collectCurrent?e("ActivityList",{attrs:{type:"collect",span:12}}):t._e()],1)]),e("el-tab-pane",{attrs:{label:"我的评论",name:"我的评论"}},[e("div",{staticClass:"card",staticStyle:{display:"flex",padding:"5px"}},[e("div",{staticClass:"category-btn",class:{active:"帖子"===t.commentCurrent},on:{click:function(e){t.commentCurrent="帖子"}}},[t._v("帖子 ")]),e("div",{staticClass:"category-btn",class:{active:"竞赛"===t.commentCurrent},on:{click:function(e){t.commentCurrent="竞赛"}}},[t._v("竞赛 ")])]),e("div",{staticStyle:{"margin-top":"10px"}},["帖子"===t.commentCurrent?e("BlogList",{attrs:{type:"comment"}}):t._e(),"竞赛"===t.commentCurrent?e("ActivityList",{attrs:{type:"comment",span:12}}):t._e()],1)]),e("el-tab-pane",{attrs:{label:"我的关注",name:"我的关注"}},[e("div",{staticClass:"card",staticStyle:{"margin-top":"10px"}},[e("ConcernList")],1)])],1),e("Footer")],1)},i=[],r=a(56088),l=function(){var t=this,e=t._self._c;return e("div",[e("el-card",[e("div",{staticStyle:{"text-align":"right","margin-bottom":"20px"}},[e("el-button",{attrs:{type:"primary"},on:{click:t.updatePassword}},[t._v("修改密码")])],1),e("el-form",{staticStyle:{"padding-right":"20px"},attrs:{model:t.user,"label-width":"80px",rules:t.rules}},[e("div",{staticStyle:{margin:"15px","text-align":"center"}},[e("el-upload",{staticClass:"avatar-uploader",attrs:{action:t.$baseUrl+"/files/upload","show-file-list":!1,"on-success":t.handleAvatarSuccess}},[t.user.avatar?e("img",{staticClass:"avatar",attrs:{src:t.user.avatar}}):e("i",{staticClass:"el-icon-plus avatar-uploader-icon"})])],1),e("el-form-item",{attrs:{label:"用户名",prop:"username"}},[e("el-input",{attrs:{placeholder:"用户名",disabled:""},model:{value:t.user.username,callback:function(e){t.$set(t.user,"username",e)},expression:"user.username"}})],1),e("el-form-item",{attrs:{label:"姓名",prop:"name"}},[e("el-input",{attrs:{placeholder:"姓名"},model:{value:t.user.name,callback:function(e){t.$set(t.user,"name",e)},expression:"user.name"}})],1),e("el-form-item",{attrs:{label:"电话",prop:"phone"}},[e("el-input",{attrs:{placeholder:"电话"},model:{value:t.user.phone,callback:function(e){t.$set(t.user,"phone",e)},expression:"user.phone"}})],1),e("el-form-item",{attrs:{label:"邮箱",prop:"email"}},[e("el-input",{attrs:{placeholder:"邮箱"},model:{value:t.user.email,callback:function(e){t.$set(t.user,"email",e)},expression:"user.email"}})],1),e("div",{staticStyle:{"text-align":"center","margin-bottom":"20px"}},[e("el-button",{attrs:{type:"primary"},on:{click:t.update}},[t._v("保 存")])],1)],1)],1),e("el-dialog",{attrs:{title:"修改密码",visible:t.dialogVisible,width:"30%","close-on-click-modal":!1,"destroy-on-close":""},on:{"update:visible":function(e){t.dialogVisible=e}}},[e("el-form",{ref:"formRef",staticStyle:{"padding-right":"20px"},attrs:{model:t.user,"label-width":"80px",rules:t.rules}},[e("el-form-item",{attrs:{label:"原始密码",prop:"password"}},[e("el-input",{attrs:{"show-password":"",placeholder:"原始密码"},model:{value:t.user.password,callback:function(e){t.$set(t.user,"password",e)},expression:"user.password"}})],1),e("el-form-item",{attrs:{label:"新密码",prop:"newPassword"}},[e("el-input",{attrs:{"show-password":"",placeholder:"新密码"},model:{value:t.user.newPassword,callback:function(e){t.$set(t.user,"newPassword",e)},expression:"user.newPassword"}})],1),e("el-form-item",{attrs:{label:"确认密码",prop:"confirmPassword"}},[e("el-input",{attrs:{"show-password":"",placeholder:"确认密码"},model:{value:t.user.confirmPassword,callback:function(e){t.$set(t.user,"confirmPassword",e)},expression:"user.confirmPassword"}})],1)],1),e("div",{staticClass:"dialog-footer",attrs:{slot:"footer"},slot:"footer"},[e("el-button",{on:{click:function(e){t.dialogVisible=!1}}},[t._v("取 消")]),e("el-button",{attrs:{type:"primary"},on:{click:t.save}},[t._v("确 定")])],1)],1)],1)},n=[],o=(a(28743),{data(){const t=(t,e,a)=>{""===e?a(new Error("请确认密码")):e!==this.user.newPassword?a(new Error("确认密码错误")):a()};let e=(t,e,a)=>{const s=/^([a-zA-Z]|[0-9])(\w|\-)+@[a-zA-Z0-9]+\.([a-zA-Z]{2,4})$/;""==this.user.email||s.test(this.user.email)||a(new Error("请输入有效的邮箱"))};return{user:JSON.parse(localStorage.getItem("xm-user")||"{}"),dialogVisible:!1,rules:{phone:[{required:!0,message:"请输入联系方式",trigger:"blur"},{min:11,max:11,message:"请输入11位手机号码",trigger:"blur"},{pattern:/^(13[0-9]|14[579]|15[0-3,5-9]|16[6]|17[0135678]|18[0-9]|19[89])\d{8}$/,message:"请输入正确的手机号码"}],email:[{required:!0,message:"邮箱不能为空",trigger:"blur"},{validator:e,trigger:"blur"}],password:[{required:!0,message:"请输入原始密码",trigger:"blur"}],newPassword:[{required:!0,message:"请输入新密码",trigger:"blur"}],confirmPassword:[{validator:t,required:!0,trigger:"blur"}]}}},created(){},methods:{update(){this.$request.put("/user/update",this.user).then((t=>{"200"===t.code?(this.$message.success("保存成功"),localStorage.setItem("xm-user",JSON.stringify(this.user)),this.$emit("update:user")):this.$message.error(t.msg)}))},handleAvatarSuccess(t,e,a){this.$set(this.user,"avatar",t.data)},updatePassword(){this.dialogVisible=!0},save(){this.$refs.formRef.validate((t=>{t&&this.$request.put("/updatePassword",this.user).then((t=>{"200"===t.code?(this.$message.success("修改密码成功"),this.$router.push("/login")):this.$message.error(t.msg)}))}))}}}),c=o,u=a(81656),d=(0,u.A)(c,l,n,!1,null,"7d67d923",null),p=d.exports,g=a(74941),m=a(15783),h=function(){var t=this,e=t._self._c;return e("div",[t._l(t.creatorList,(function(a){return e("div",{key:a.id,staticClass:"card",staticStyle:{padding:"10px",display:"flex","justify-content":"space-between","margin-bottom":"10px"}},[e("div",{staticStyle:{display:"flex","align-items":"center","margin-right":"15px"},on:{click:function(e){return t.homePage(a.creatorId)}}},[e("el-avatar",{attrs:{size:70,src:a.avatar}}),e("span",{staticStyle:{"font-weight":"bold","font-size":"30px","margin-left":"10px"}},[t._v(t._s(a.userName))])],1),e("div",{staticStyle:{"margin-left":"auto",display:"flex","align-items":"center"}},[e("el-button",{attrs:{round:"",type:"warning",size:"medium"},on:{click:function(e){return t.cancelConcern(a.creatorId)}}},[t._v("取消关注")])],1)])})),0===t.total?e("div",{staticStyle:{padding:"20px","text-align":"center","font-size":"16px",color:"#666"}},[t._v("暂无数据")]):t._e(),t.total?e("div",{staticClass:"pagination",staticStyle:{"margin-top":"10px"}},[e("el-pagination",{attrs:{background:"","current-page":t.pageNum,"page-sizes":[5,10,20],"page-size":t.pageSize,layout:"total, prev, pager, next",total:t.total},on:{"current-change":t.handleCurrentChange}})],1):t._e()],2)},v=[],y={name:"ConcernList",data(){return{user:JSON.parse(localStorage.getItem("xm-user")||"{}"),creatorList:[],pageNum:1,pageSize:10,total:0}},mounted(){this.load()},methods:{load(){this.$request.get("/concern/selectConcernList/",{params:{pageNum:this.pageNum,pageSize:this.pageSize,userId:this.user.id}}).then((t=>{this.creatorList=t.data?.list,this.total=t.data?.total}))},cancelConcern(t){this.$request.delete("/concern/delete/"+this.user.id+"/"+t).then((t=>{"200"===t.code?(this.$message.success("取消关注成功"),this.load()):this.$message.error(t.msg)}))},handleCurrentChange(t){this.load(t)},homePage(t){this.$router.push("/front/HomePage?userId="+t)}}},f=y,b=(0,u.A)(f,h,v,!1,null,"0d878b50",null),x=b.exports,_=function(){var t=this,e=t._self._c;return e("div",[t._l(t.myWelfare,(function(a){return e("div",{key:a.id,staticClass:"card",staticStyle:{padding:"10px",display:"flex","justify-content":"space-between","margin-bottom":"10px"}},[e("div",{staticStyle:{position:"relative","margin-right":"15px","text-align":"center"},on:{click:function(e){return t.homePage(a.dbUserId)}}},[e("el-avatar",{attrs:{size:50,src:a.avatar}}),e("div",{staticStyle:{"font-size":"16px",color:"#999999"}},[t._v(t._s(a.username))])],1),e("div",{staticStyle:{"margin-right":"15px",flex:"1","align-items":"center","max-width":"600px",overflow:"hidden"}},[e("div",{staticClass:"line1",staticStyle:{"font-size":"20px","font-weight":"bold","margin-bottom":"22px","margin-top":"10px"}},[t._v(" "+t._s(a.title)+" ")]),e("div",{staticStyle:{"font-size":"12px",color:"#999999"}},[t._v(t._s(a.time))])]),e("div",{staticStyle:{"margin-left":"auto",display:"flex","align-items":"center"}},[e("el-button",{attrs:{round:"",type:"warning",size:"medium"},on:{click:function(e){return t.detail(a.content,a.title)}}},[t._v("查看详情")])],1)])})),0===t.total?e("div",{staticStyle:{padding:"20px","text-align":"center","font-size":"16px",color:"#666"}},[t._v("暂无数据")]):t._e(),t.total?e("div",{staticClass:"pagination",staticStyle:{"margin-top":"10px"}},[e("el-pagination",{attrs:{background:"","current-page":t.pageNum,"page-sizes":[5,10,20],"page-size":t.pageSize,layout:"total, prev, pager, next",total:t.total},on:{"current-change":t.handleCurrentChange}})],1):t._e(),e("el-dialog",{attrs:{title:"查看详情",visible:t.fromVisible1,width:"60%","close-on-click-modal":!1,"destroy-on-close":""},on:{"update:visible":function(e){t.fromVisible1=e}}},[e("div",{staticStyle:{"font-weight":"bold","font-size":"28px"}},[t._v(" "+t._s(t.title)+" ")]),e("div",{staticClass:"w-e-text"},[e("div",{domProps:{innerHTML:t._s(t.content)}})]),e("div",{staticClass:"dialog-footer",attrs:{slot:"footer"},slot:"footer"},[e("el-button",{on:{click:function(e){t.fromVisible1=!1}}},[t._v("关 闭")])],1)])],2)},C=[],S={name:"MyWelfare",data(){return{user:JSON.parse(localStorage.getItem("xm-user")||"{}"),myWelfare:[],pageNum:1,pageSize:10,total:0,content:"",title:"",fromVisible1:!1}},mounted(){this.load()},methods:{load(){this.$request.get("/myWelfare/selectByUserId/",{params:{pageNum:this.pageNum,pageSize:this.pageSize,userId:this.user.id}}).then((t=>{this.myWelfare=t.data?.list,this.total=t.data?.total}))},detail(t,e){this.content=t,this.title=e,this.fromVisible1=!0},handleCurrentChange(t){this.load(t)},homePage(t){this.$router.push("/front/HomePage?userId="+t)}}},w=S,k=(0,u.A)(w,_,C,!1,null,"2ce5937f",null),$=k.exports,z={data(){return{activeName:"个人信息",likesCurrent:"帖子",collectCurrent:"帖子",commentCurrent:"帖子",user:JSON.parse(localStorage.getItem("xm-user")||"{}")}},components:{Footer:r.A,PersonPage:p,BlogList:g.A,ActivityList:m.A,ConcernList:x,MyWelfare:$},created(){},methods:{updateUser(){this.$emit("update:user")},clickTab(){}}},N=z,A=(0,u.A)(N,s,i,!1,null,null,null),P=A.exports}}]);
//# sourceMappingURL=810.581cf251.js.map