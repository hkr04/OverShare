"use strict";(self["webpackChunkvue"]=self["webpackChunkvue"]||[]).push([[466],{74941:function(t,e,s){s.d(e,{A:function(){return c}});var i=function(){var t=this,e=t._self._c;return e("div",{staticClass:"card"},[t._l(t.tableData,(function(s){return t.total>0?e("div",{key:s.id,staticClass:"blog-box"},[e("div",{staticStyle:{flex:"1",width:"0",height:"100px"}},[e("a",{attrs:{href:"/front/blogDetail?blogId="+s.id,target:"_blank"}},[e("div",{staticClass:"blog-box-title"},[t._v(t._s(s.title)+" ")])]),e("div",{staticClass:"line1",staticStyle:{color:"#666","margin-bottom":"10px","font-size":"13px"}},[t._v(" "+t._s(s.descr)+" ")]),e("div",{staticStyle:{display:"flex"}},[e("div",{staticStyle:{flex:"1","font-size":"13px"}},[e("span",{staticStyle:{color:"#666","margin-right":"20px"}},[e("i",{staticClass:"el-icon-user",staticStyle:{"margin-right":"5px"}}),t._v(" "+t._s(s.userName)+" ")]),e("span",{staticStyle:{color:"#666","margin-right":"20px"}},[e("i",{staticClass:"el-icon-eye",staticStyle:{"margin-right":"5px"}}),t._v(" "+t._s(s.readCount)+" ")]),e("span",{staticStyle:{color:"#666"}},[e("i",{staticClass:"el-icon-like",staticStyle:{"margin-right":"5px"}}),t._v(" "+t._s(s.likesCount)+" ")]),t.showOpt?e("span",{staticStyle:{"margin-left":"40px",color:"red",cursor:"pointer"},on:{click:function(e){return t.del(s.id)}}},[e("i",{staticClass:"el-icon-delete"}),t._v("删除")]):t._e(),t.showOpt?e("span",{staticStyle:{"margin-left":"10px",color:"#2a60c9",cursor:"pointer"},on:{click:function(e){return t.editBlog(s.id)}}},[e("i",{staticClass:"el-icon-edit"}),t._v("编辑")]):t._e()]),e("div",{staticStyle:{width:"fit-content"}},t._l(JSON.parse(s.tags||[]),(function(s){return e("el-tag",{key:s.id,staticStyle:{"margin-right":"5px"},attrs:{type:"primary"}},[t._v(t._s(s)+" ")])})),1)])]),e("div",[e("div",{staticStyle:{width:"100%"}},[e("img",{staticStyle:{width:"100%",height:"80px","border-radius":"5px"},attrs:{src:s.cover,alt:""}})])])]):t._e()})),0===t.total?e("div",{staticStyle:{padding:"20px","text-align":"center","font-size":"16px",color:"#666"}},[t._v("暂无数据")]):t._e(),t.total?e("div",{staticClass:"pagination",staticStyle:{"margin-top":"10px"}},[e("el-pagination",{attrs:{background:"","current-page":t.pageNum,"page-sizes":[5,10,20],"page-size":t.pageSize,layout:"total, prev, pager, next",total:t.total},on:{"current-change":t.handleCurrentChange}})],1):t._e()],2)},a=[],n={name:"BlogList",props:{categoryName:null,type:null,showOpt:!1},watch:{categoryName(){this.loadBlog(1)}},data(){return{pageNum:1,pageSize:10,tableData:[],total:0,title:this.$route.query.title,userId:this.$route.query.userId}},mounted(){this.loadBlog(1)},methods:{editBlog(t){window.open("/front/newBlog?blogId="+t)},del(t){this.$confirm("您确定删除吗？","确认删除",{type:"warning"}).then((e=>{this.$request.delete("/blog/delete/"+t).then((t=>{"200"===t.code?(this.$message.success("操作成功"),this.loadBlog(1)):this.$message.error(t.msg)}))})).catch((()=>{}))},loadBlog(t){let e;switch(t&&(this.pageNum=t),this.type){case"user":e="/blog/selectUser";break;case"like":e="/blog/selectLike";break;case"collect":e="/blog/selectCollect";break;case"comment":e="/blog/selectComment";break;case"certification":e="/blog/selectCertification";break;default:e="/blog/selectPage"}this.$request.get(e,{params:{pageNum:this.pageNum,pageSize:this.pageSize,categoryName:"全部竞赛"===this.categoryName?null:this.categoryName,title:this.title,userId:this.userId}}).then((t=>{this.tableData=t.data?.list,this.total=t.data?.total}))},handleCurrentChange(t){this.loadBlog(t)}}},l=n,o=s(81656),r=(0,o.A)(l,i,a,!1,null,"76fafb92",null),c=r.exports},56088:function(t,e,s){s.d(e,{A:function(){return c}});var i=function(){var t=this;t._self._c;return t._m(0)},a=[function(){var t=this,e=t._self._c;return e("div",{staticStyle:{"font-size":"16px",padding:"20px 0","text-align":"center","line-height":"30px",color:"#666666"}},[e("div",[t._v("OverShare竞赛信息平台")]),e("div",[t._v("OverShare竞赛信息平台是高含金量竞赛平台。为全国大学生提供各类高含金量竞赛信息聚合、报名和团队招募服务")]),e("div",[t._v("武汉大学软件工程小组NO.14")])])}],n={name:"Footer"},l=n,o=s(81656),r=(0,o.A)(l,i,a,!1,null,"4faddf82",null),c=r.exports},66466:function(t,e,s){s.r(e),s.d(e,{default:function(){return u}});var i=function(){var t=this,e=t._self._c;return e("div",{staticClass:"main-content"},[e("div",{staticClass:"container"},[e("div",{staticClass:"left-column card",staticStyle:{"margin-top":"350px"}},t._l(t.categoryList,(function(s){return e("div",{key:s.id,staticClass:"category-item",class:{"category-item-active":s.name===t.current},on:{click:function(e){return t.selectCategory(s.name)}}},[t._v(t._s(s.name)+" ")])})),0),e("div",{staticClass:"main-column"},[e("div",{staticStyle:{display:"flex",height:"350px"}},[e("div",{staticClass:"card competion-carousel"},[e("el-carousel",{attrs:{interval:3e3,arrow:"always"}},t._l(t.activityList,(function(t,s){return e("el-carousel-item",{key:t.id},[e("a",{attrs:{href:"/front/activityDetail?activityId="+t.id}},[e("img",{staticStyle:{width:"100%","border-radius":"5px"},attrs:{src:t.cover,alt:""}})])])})),1)],1),e("div",{staticClass:"card announcements"},[e("div",{staticClass:"system_title",attrs:{slot:"header"},slot:"header"},[e("span",[t._v("倒计时！")])]),t._l(t.activityList,(function(s,i){return e("div",{key:s.id,staticClass:"announcement-item"},[e("div",{staticClass:"separator"}),e("div",{staticClass:"announcement-header"},[e("span",{staticClass:"announcement-name"},[t._v(t._s(s.name))]),s.isApplyEnd?e("div",{staticClass:"end-text"},[t._v(" 报名已结束 ")]):e("div",{staticClass:"countdown"},[e("div",{staticClass:"countdown-block"},[e("div",{staticClass:"countdown-value"},[t._v(t._s(s.applyRemainingDays)+"天 | "+t._s(s.applyRemainingHours)+"小时")])])])]),e("div",{staticClass:"countdown-footer"},[s.isEndActivity?e("div",{staticClass:"end-text"},[t._v(" 比赛已结束 ")]):e("div",{staticClass:"countdown"},[e("div",{staticClass:"countdown-block"},[e("div",{staticClass:"countdown-value"},[t._v(t._s(s.remainingDays)+"天 | "+t._s(s.remainingHours)+"小时")])])])])])}))],2)]),e("div",{staticClass:"card blog-list"},[t.user.isCreator?e("el-button",{staticClass:"button-new-post",attrs:{type:"primary"},on:{click:t.addBlog}},[t._v("发表新帖子")]):t._e(),t.user.isCreator?t._e():e("el-button",{staticClass:"button-apply",attrs:{type:"warning"},on:{click:t.goToApply}},[t._v("点此认证后使用发帖功能")]),e("BlogList",{attrs:{categoryName:t.current}}),e("Footer")],1)]),e("div",{staticClass:"right-column",staticStyle:{"margin-top":"350px"}},[t._m(0),e("div",{staticClass:"card hot-articles"},[e("div",{staticClass:"hot-articles-header"},[e("div",{staticClass:"hot-articles-title"},[t._v("热门文章")]),e("div",{staticClass:"refresh-button",on:{click:t.refreshTop}},[e("i",{staticClass:"el-icon-refresh"}),t._v("换一换")])]),e("div",t._l(t.showList,(function(s){return e("div",{key:s.id,staticClass:"hot-article-item line1"},[e("a",{attrs:{href:"/front/blogDetail?blogId="+s.id,target:"_blank"}},[e("span",{staticClass:"hot-article-index"},[1===s.index?e("span",{staticClass:"first"},[t._v(t._s(s.index))]):2===s.index?e("span",{staticClass:"second"},[t._v(t._s(s.index))]):3===s.index?e("span",{staticClass:"third"},[t._v(t._s(s.index))]):e("span",[t._v(t._s(s.index))])]),e("span",{staticClass:"hot-article-title"},[t._v(t._s(s.title))])])])})),0)])])])])},a=[function(){var t=this,e=t._self._c;return e("div",{staticClass:"card welcome-card"},[e("div",{staticClass:"welcome-header"},[t._v("欢迎您！")]),e("div",{staticClass:"welcome-message"},[t._v("记录美好的一天！")])])}],n=(s(28743),s(56088)),l=s(74941),o={name:"Home",components:{Footer:n.A,BlogList:l.A},data(){return{current:"全部竞赛",categoryList:[],topList:[],showList:[],lastNum:0,activityList:[],user:JSON.parse(localStorage.getItem("xm-user")||"{}")}},mounted(){this.load(),this.refreshTop(),this.loadActivity(),this.startCountdown()},methods:{loadActivity(){this.$request.get("/activity/selectActivityTop").then((t=>{this.activityList=t.data||[],this.activityList=this.activityList.slice(0,5),this.updateCountdown()}))},refreshTop(){this.$request.get("/blog/selectBlogTop").then((t=>{this.topList=t.data||[];for(let e=0;e<this.topList.length;e++)this.topList[e].index=e+1;this.lastNum===this.topList.length&&(this.lastNum=0),this.showList=this.topList.slice(this.lastNum,this.lastNum+10),this.lastNum+=10}))},selectCategory(t){this.current=t},load(){this.$request.get("/category/selectAll").then((t=>{this.categoryList=t.data||[],this.categoryList.unshift({name:"全部竞赛"})}))},goToApply(){this.$router.push("/front/Certification")},addBlog(){window.open("/front/NewBlog")},startCountdown(){setInterval(this.updateCountdown,1e3)},updateCountdown(){const t=new Date;this.activityList.forEach((e=>{const s=new Date(e.applyend);if(s>t){const i=this.calculateRemainingTime(t,s);this.$set(e,"applyRemainingDays",i.days),this.$set(e,"applyRemainingHours",i.hours),this.$set(e,"isApplyEnd",!1)}else this.$set(e,"applyRemainingDays",0),this.$set(e,"applyRemainingHours",0),this.$set(e,"isApplyEnd",!0);const i=new Date(e.end);if(i>t){const s=this.calculateRemainingTime(t,i);this.$set(e,"remainingDays",s.days),this.$set(e,"remainingHours",s.hours),this.$set(e,"isEndActivity",!1)}else this.$set(e,"remainingDays",0),this.$set(e,"remainingHours",0),this.$set(e,"isEndActivity",!0)}))},calculateRemainingTime(t,e){const s=e-t,i=Math.floor(s/864e5),a=Math.floor(s%864e5/36e5);return{days:i,hours:a}}}},r=o,c=s(81656),d=(0,c.A)(r,i,a,!1,null,null,null),u=d.exports}}]);
//# sourceMappingURL=466.79ad89b8.js.map