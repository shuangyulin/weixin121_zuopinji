(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([["pages-fangkehuaxiang-add-or-update"],{2595:function(e,t,n){"use strict";var i=n("9774"),r=n.n(i);r.a},"303c":function(e,t,n){"use strict";n.r(t);var i=n("ee9a"),r=n("90c2");for(var a in r)"default"!==a&&function(e){n.d(t,e,(function(){return r[e]}))}(a);n("2595");var o,u=n("f0c5"),s=Object(u["a"])(r["default"],i["b"],i["c"],!1,null,"6147bd6a",null,!1,i["a"],o);t["default"]=s.exports},4040:function(e,t,n){"use strict";var i=n("4ea4");Object.defineProperty(t,"__esModule",{value:!0}),t.default=void 0,n("ac6a"),n("28a5"),n("96cf");var r=i(n("3b8d")),a=i(n("e2b1")),o={data:function(){return{ruleForm:{nianling:"",xingbie:""},xingbieOptions:[],xingbieIndex:0,user:{},ro:{nianling:!1,xingbie:!1}}},components:{wPicker:a.default},computed:{},onLoad:function(){var e=(0,r.default)(regeneratorRuntime.mark((function e(t){var n,i,r,a;return regeneratorRuntime.wrap((function(e){while(1)switch(e.prev=e.next){case 0:return n=uni.getStorageSync("nowTable"),e.next=3,this.$api.session(n);case 3:if(i=e.sent,this.user=i.data,this.xingbieOptions="男,女".split(","),this.ruleForm.userid=uni.getStorageSync("userid"),t.refid&&(this.ruleForm.refid=t.refid,this.ruleForm.nickname=uni.getStorageSync("nickname")),!t.id){e.next=14;break}return this.ruleForm.id=t.id,e.next=12,this.$api.info("fangkehuaxiang",this.ruleForm.id);case 12:i=e.sent,this.ruleForm=i.data;case 14:if(!t.cross){e.next=29;break}r=uni.getStorageSync("crossObj"),e.t0=regeneratorRuntime.keys(r);case 17:if((e.t1=e.t0()).done){e.next=29;break}if(a=e.t1.value,"nianling"!=a){e.next=23;break}return this.ruleForm.nianling=r[a],this.ro.nianling=!0,e.abrupt("continue",17);case 23:if("xingbie"!=a){e.next=27;break}return this.ruleForm.xingbie=r[a],this.ro.xingbie=!0,e.abrupt("continue",17);case 27:e.next=17;break;case 29:this.styleChange();case 30:case"end":return e.stop()}}),e,this)})));function t(t){return e.apply(this,arguments)}return t}(),methods:{styleChange:function(){this.$nextTick((function(){}))},xingbieChange:function(e){this.xingbieIndex=e.target.value,this.ruleForm.xingbie=this.xingbieOptions[this.xingbieIndex]},getUUID:function(){return(new Date).getTime()},onSubmitTap:function(){var e=(0,r.default)(regeneratorRuntime.mark((function e(){return regeneratorRuntime.wrap((function(e){while(1)switch(e.prev=e.next){case 0:if(!this.ruleForm.nianling||this.$validate.isIntNumer(this.ruleForm.nianling)){e.next=3;break}return this.$utils.msg("年龄应输入整数"),e.abrupt("return");case 3:if(!this.ruleForm.id){e.next=8;break}return e.next=6,this.$api.update("fangkehuaxiang",this.ruleForm);case 6:e.next=10;break;case 8:return e.next=10,this.$api.add("fangkehuaxiang",this.ruleForm);case 10:this.$utils.msgBack("提交成功");case 11:case"end":return e.stop()}}),e,this)})));function t(){return e.apply(this,arguments)}return t}(),optionsChange:function(e){this.index=e.target.value},bindDateChange:function(e){this.date=e.target.value},getDate:function(e){var t=new Date,n=t.getFullYear(),i=t.getMonth()+1,r=t.getDate();return"start"===e?n-=60:"end"===e&&(n+=2),i=i>9?i:"0"+i,r=r>9?r:"0"+r,"".concat(n,"-").concat(i,"-").concat(r)},toggleTab:function(e){this.$refs[e].show()}}};t.default=o},"90c2":function(e,t,n){"use strict";n.r(t);var i=n("4040"),r=n.n(i);for(var a in i)"default"!==a&&function(e){n.d(t,e,(function(){return i[e]}))}(a);t["default"]=r.a},9774:function(e,t,n){var i=n("a854");"string"===typeof i&&(i=[[e.i,i,""]]),i.locals&&(e.exports=i.locals);var r=n("4f06").default;r("7a58c34a",i,!0,{sourceMap:!1,shadowMode:!1})},a854:function(e,t,n){var i=n("24fb");t=i(!1),t.push([e.i,'@charset "UTF-8";\n/**\r\n * 这里是uni-app内置的常用样式变量\r\n *\r\n * uni-app 官方扩展插件及插件市场（https://ext.dcloud.net.cn）上很多三方插件均使用了这些样式变量\r\n * 如果你是插件开发者，建议你使用scss预处理，并在插件代码中直接使用这些变量（无需 import 这个文件），方便用户通过搭积木的方式开发整体风格一致的App\r\n *\r\n */\n/**\r\n * 如果你是App开发者（插件使用者），你可以通过修改这些变量来定制自己的插件主题，实现自定义主题功能\r\n *\r\n * 如果你的项目同样使用了scss预处理，你也可以直接在你的 scss 代码中使用如下变量，同时无需 import 这个文件\r\n */\n/* 颜色变量 */\n/* 行为相关颜色 */\n/* 文字基本颜色 */\n/* 背景颜色 */\n/* 边框颜色 */\n/* 尺寸变量 */\n/* 文字尺寸 */\n/* 图片尺寸 */\n/* Border Radius */\n/* 水平间距 */\n/* 垂直间距 */\n/* 透明度 */\n/* 文章场景相关 */.container[data-v-6147bd6a]{padding:%?20?%}.content[data-v-6147bd6a]:after{position:fixed;top:0;right:0;left:0;bottom:0;content:"";background-attachment:fixed;background-size:cover;background-position:50%}uni-textarea[data-v-6147bd6a]{border:%?1?% solid #eee;border-radius:%?20?%;padding:%?20?%}.title[data-v-6147bd6a]{width:%?180?%}.avator[data-v-6147bd6a]{width:%?150?%;height:%?60?%}.right-input[data-v-6147bd6a]{-webkit-box-flex:1;-webkit-flex:1;flex:1;text-align:left;padding:0 %?24?%}.cu-form-group.active[data-v-6147bd6a]{-webkit-box-pack:justify;-webkit-justify-content:space-between;justify-content:space-between}.btn[data-v-6147bd6a]{display:-webkit-box;display:-webkit-flex;display:flex;-webkit-box-align:center;-webkit-align-items:center;align-items:center;-webkit-box-pack:center;-webkit-justify-content:center;justify-content:center;-webkit-flex-wrap:wrap;flex-wrap:wrap;padding:%?20?% 0}.cu-form-group[data-v-6147bd6a]{padding:0 %?24?%;background-color:initial;min-height:inherit}.cu-form-group + .cu-form-group[data-v-6147bd6a]{border:0}.cu-form-group uni-input[data-v-6147bd6a]{padding:0 %?30?%}.uni-input[data-v-6147bd6a]{padding:0 %?30?%}.cu-form-group uni-textarea[data-v-6147bd6a]{padding:%?30?%;margin:0}.cu-form-group uni-picker[data-v-6147bd6a]::after{line-height:%?80?%}.select .uni-input[data-v-6147bd6a]{line-height:%?80?%}.input .right-input[data-v-6147bd6a]{line-height:%?80?%}',""]),e.exports=t},ee9a:function(e,t,n){"use strict";var i,r=function(){var e=this,t=e.$createElement,n=e._self._c||t;return n("v-uni-view",{staticClass:"content"},[n("v-uni-form",{staticClass:"app-update-pv"},[n("v-uni-view",{staticClass:"cu-form-group",style:{boxShadow:"0 0 0px rgba(0,0,0,.3)",backgroundColor:"rgba(1, 157, 214, 0.1)",borderColor:"rgba(245, 245, 245, 1)",margin:"0",borderWidth:"0 0 4rpx",borderStyle:"solid",height:"108rpx"}},[n("v-uni-view",{staticClass:"title",style:{width:"160rpx",fontSize:"28rpx",color:"rgba(51, 51, 51, 1)",textAlign:"center"}},[e._v("年龄")]),n("v-uni-input",{style:{boxShadow:"0 0 0px rgba(0,0,0,.6) inset",backgroundColor:"rgba(255, 255, 255, 0)",borderColor:"rgba(0,0,0,.6)",borderRadius:"0 20rpx",color:"rgba(51, 51, 51, 1)",textAlign:"left",borderWidth:"2rpx",fontSize:"26rpx",borderStyle:"solid",height:"80rpx"},attrs:{disabled:e.ro.nianling,placeholder:"年龄"},model:{value:e.ruleForm.nianling,callback:function(t){e.$set(e.ruleForm,"nianling",t)},expression:"ruleForm.nianling"}})],1),n("v-uni-view",{staticClass:"cu-form-group select",style:{boxShadow:"0 0 0px rgba(0,0,0,.3)",backgroundColor:"rgba(1, 157, 214, 0.1)",borderColor:"rgba(245, 245, 245, 1)",margin:"0",borderWidth:"0 0 4rpx",borderStyle:"solid",height:"108rpx"}},[n("v-uni-view",{staticClass:"title",style:{width:"160rpx",fontSize:"28rpx",color:"rgba(51, 51, 51, 1)",textAlign:"center"}},[e._v("性别")]),n("v-uni-picker",{attrs:{value:e.xingbieIndex,range:e.xingbieOptions},on:{change:function(t){arguments[0]=t=e.$handleEvent(t),e.xingbieChange.apply(void 0,arguments)}}},[n("v-uni-view",{staticClass:"uni-input",style:{boxShadow:"0 0 0px rgba(0,0,0,.6) inset",backgroundColor:"rgba(255, 255, 255, 0)",borderColor:"rgba(0,0,0,.6)",borderRadius:"0 20rpx",color:"rgba(51, 51, 51, 1)",textAlign:"left",borderWidth:"2rpx",fontSize:"26rpx",borderStyle:"solid",height:"80rpx"}},[e._v(e._s(e.ruleForm.xingbie?e.ruleForm.xingbie:"请选择性别"))])],1)],1),n("v-uni-view",{staticClass:"btn"},[n("v-uni-button",{staticClass:"bg-red",style:{boxShadow:"0 0 0px rgba(0,0,0,0) inset",backgroundColor:"rgba(1, 157, 214, 1)",borderColor:"#409EFF",borderRadius:"0 0 20rpx 20rpx",color:"#fff",borderWidth:"0",width:"90%",fontSize:"28rpx",borderStyle:"solid",height:"80rpx"},on:{click:function(t){arguments[0]=t=e.$handleEvent(t),e.onSubmitTap.apply(void 0,arguments)}}},[e._v("提交")])],1)],1)],1)},a=[];n.d(t,"b",(function(){return r})),n.d(t,"c",(function(){return a})),n.d(t,"a",(function(){return i}))}}]);