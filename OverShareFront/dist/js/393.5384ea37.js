"use strict";(self["webpackChunkvue"]=self["webpackChunkvue"]||[]).push([[393],{961:function(t,e,i){i.d(e,{A:function(){return d}});var r=function(){var t=this,e=t._self._c;return e("div",{staticClass:"s-canvas"},[e("canvas",{attrs:{id:"s-canvas",width:t.contentWidth,height:t.contentHeight}})])},o=[],s={name:"Identify",props:{identifyCode:{type:String,default:"1234"},fontSizeMin:{type:Number,default:28},fontSizeMax:{type:Number,default:40},backgroundColorMin:{type:Number,default:180},backgroundColorMax:{type:Number,default:240},colorMin:{type:Number,default:50},colorMax:{type:Number,default:160},lineColorMin:{type:Number,default:40},lineColorMax:{type:Number,default:180},dotColorMin:{type:Number,default:0},dotColorMax:{type:Number,default:255},contentWidth:{type:Number,default:112},contentHeight:{type:Number,default:35}},methods:{randomNum(t,e){return Math.floor(Math.random()*(e-t)+t)},randomColor(t,e){var i=this.randomNum(t,e),r=this.randomNum(t,e),o=this.randomNum(t,e);return"rgb("+i+","+r+","+o+")"},drawPic(){var t=document.getElementById("s-canvas"),e=t.getContext("2d");e.textBaseline="bottom",e.fillStyle=this.randomColor(this.backgroundColorMin,this.backgroundColorMax),e.fillRect(0,0,this.contentWidth,this.contentHeight);for(let i=0;i<this.identifyCode.length;i++)this.drawText(e,this.identifyCode[i],i);this.drawLine(e),this.drawDot(e)},drawText(t,e,i){t.fillStyle=this.randomColor(this.colorMin,this.colorMax),t.font=this.randomNum(this.fontSizeMin,this.fontSizeMax)+"px SimHei";var r=(i+1)*(this.contentWidth/(this.identifyCode.length+1)),o=this.randomNum(this.fontSizeMax,this.contentHeight-5),s=this.randomNum(-30,30);t.translate(r,o),t.rotate(s*Math.PI/270),t.fillText(e,0,0),t.rotate(-s*Math.PI/270),t.translate(-r,-o)},drawLine(t){for(let e=0;e<2;e++)t.strokeStyle=this.randomColor(this.lineColorMin,this.lineColorMax),t.beginPath(),t.moveTo(this.randomNum(0,this.contentWidth),this.randomNum(0,this.contentHeight)),t.lineTo(this.randomNum(0,this.contentWidth),this.randomNum(0,this.contentHeight)),t.stroke()},drawDot(t){for(let e=0;e<20;e++)t.fillStyle=this.randomColor(0,255),t.beginPath(),t.arc(this.randomNum(0,this.contentWidth),this.randomNum(0,this.contentHeight),1,0,2*Math.PI),t.fill()}},watch:{identifyCode(){this.drawPic()}},mounted(){this.drawPic()}},a=s,n=i(81656),l=(0,n.A)(a,r,o,!1,null,"32112728",null),d=l.exports},75393:function(t,e,i){i.r(e),i.d(e,{default:function(){return m}});var r=function(){var t=this,e=t._self._c;return e("div",[e("main",[e("div",{staticClass:"box"},[e("div",{staticClass:"inner-box"},[e("div",{staticClass:"container"},[e("div",{staticStyle:{width:"350px",padding:"20px 30px","background-color":"white","border-radius":"5px","margin-left":"40px"}},[t._m(0),t._m(1),e("el-form",{ref:"formRef",attrs:{model:t.form,rules:t.rules}},[e("el-form-item",{attrs:{prop:"username"}},[e("el-input",{attrs:{size:"medium","prefix-icon":"el-icon-user",placeholder:"请输入账号"},model:{value:t.form.username,callback:function(e){t.$set(t.form,"username",e)},expression:"form.username"}})],1),e("el-form-item",{attrs:{prop:"password"}},[e("el-input",{attrs:{size:"medium","prefix-icon":"el-icon-lock",placeholder:"请输入密码","show-password":""},model:{value:t.form.password,callback:function(e){t.$set(t.form,"password",e)},expression:"form.password"}})],1),e("el-form-item",{attrs:{prop:"role"}},[e("el-radio-group",{model:{value:t.form.role,callback:function(e){t.$set(t.form,"role",e)},expression:"form.role"}},[e("el-radio",{attrs:{label:"ADMIN"}},[t._v("管理员")]),e("el-radio",{attrs:{label:"USER"}},[t._v("用户")])],1)],1),e("el-form-item",{attrs:{prop:"code"}},[e("div",{staticStyle:{display:"flex"}},[e("el-input",{staticStyle:{flex:"1"},attrs:{size:"medium"},model:{value:t.code,callback:function(e){t.code=e},expression:"code"}}),e("Identify",{attrs:{identifyCode:t.identifyCode},nativeOn:{click:function(e){return t.refreshCode.apply(null,arguments)}}})],1)]),e("el-form-item",[e("el-button",{staticClass:"sign-btn",staticStyle:{width:"100%"},attrs:{size:"medium"},on:{click:t.login}},[t._v("登录")])],1),e("div",{staticStyle:{display:"flex","align-items":"center"}},[e("div",{staticStyle:{flex:"1"}}),e("div",{staticStyle:{flex:"1","text-align":"right"}},[t._v(" 还没有账号？请 "),e("a",{attrs:{href:"/register"}},[t._v("注册")])])])],1)],1),t._m(2)])])])])])},o=[function(){var t=this,e=t._self._c;return e("div",{staticClass:"logo1",staticStyle:{"margin-top":"-20px"}},[e("img",{attrs:{src:i(94581),alt:"OverShare"}}),e("h4",{staticStyle:{"margin-top":"5px"}},[t._v("OverShare竞赛信息平台")])])},function(){var t=this,e=t._self._c;return e("div",{staticClass:"heading",staticStyle:{"margin-top":"50px","margin-bottom":"20px"}},[e("h2",{staticStyle:{width:"350px","font-size":"28px","margin-bottom":"40px"}},[t._v("Welcome to OverShare! ")])])},function(){var t=this,e=t._self._c;return e("div",{staticClass:"pics"},[e("div",{staticClass:"images-wrapper"},[e("img",{staticStyle:{width:"100%",height:"100%"},attrs:{src:i(16003)}})]),e("div",{staticClass:"text-slider"},[e("div",{staticClass:"text-wrap"},[e("div",{staticClass:"text-group",staticStyle:{"margin-top":"-50px"}},[e("h2",[t._v("OverShare竞赛信息平台")])])])])])}],s=i(961),a={name:"Login",components:{Identify:s.A},data(){return{form:{role:"ADMIN"},rules:{username:[{required:!0,message:"请输入账号",trigger:"blur"}],password:[{required:!0,message:"请输入密码",trigger:"blur"}]},code:"",identifyCode:"",identifyCodes:"123456789ABCDEFGHGKMNPQRSTUVWXY"}},mounted(){this.refreshCode()},methods:{refreshCode(){this.identifyCode="",this.makeCode(this.identifyCodes,4)},makeCode(t,e){for(let i=0;i<e;i++)this.identifyCode+=this.identifyCodes[Math.floor(Math.random()*this.identifyCodes.length)]},login(){return this.code?this.code.toLowerCase()!==this.identifyCode.toLowerCase()?(this.$message.warning("验证码错误"),void this.refreshCode()):void this.$refs["formRef"].validate((t=>{t&&this.$request.post("/login",this.form).then((t=>{"200"===t.code?(localStorage.setItem("xm-user",JSON.stringify(t.data)),this.$message.success("登录成功"),setTimeout((()=>{"ADMIN"===t.data.role?location.href="/home":location.href="/front/home"}),500)):(this.refreshCode(),this.$message.error(t.msg))}))})):(this.$message.warning("请输入验证码"),void this.refreshCode())}}},n=a,l=i(81656),d=(0,l.A)(n,r,o,!1,null,"22fb4334",null),m=d.exports},16003:function(t,e,i){t.exports=i.p+"img/pic2.d37775ac.png"},94581:function(t){t.exports="data:image/png;base64,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"}}]);
//# sourceMappingURL=393.5384ea37.js.map