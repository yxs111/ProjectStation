// 登录注册显示和消失弹出框
$('#reg_open').click(function () {
    $('#reg').removeClass('hidden');
});
$('#login_open').click(function () {
    $('#login').removeClass('hidden');
});
$('#reg_close').click(function(){
    $('#reg').addClass('hidden');
});
$('#login_close').click(function(){
    $('#login').addClass('hidden');
});

// 获取url路径中的参数
function GetUrlParam(paraName) {
    var url = document.location.toString();
    var arrObj = url.split("?");

    if (arrObj.length > 1) {
        var arrPara = arrObj[1].split("&");
        var arr;
        for (var i = 0; i < arrPara.length; i++) {
            arr = arrPara[i].split("=");

            if (arr != null && arr[0] == paraName) {
                return arr[1];
            }
        }
        return "";
    }
    else {
        return "";
    }
}




//==========================Java02班升级JS===============================

$("#regEmail").blur(function(){

    
    //不为空再校验
    var emailVal=$("#regEmail").val();
    //alert(emailVal);
    // js 判断不相等  不能使用   !""==xxxx
    if(null != emailVal && ""!=emailVal){
        var params={"email":emailVal};
       // alert(params);
        $.post("user/validateEmail.action",params,function(data){
            if(data=="success"){
               regIsCommitEmail=true;
               $("#emailMsg").text("该邮箱可用").css("color","green");
            }else{
               regIsCommitEmail=false;
               $("#emailMsg").text("该邮箱已注册，请直接登录").css("color","red");
            }
        });
    }

});

$("#regPswAgain").blur(function(){
     var pass01= $("#regPsw").val();
      var pass02= $("#regPswAgain").val();
      if(null==pass01 || ""==pass01 || null==pass02 || ""==pass02){
          $("#passMsg").text("密码不能为空").css("color","red");
          regIsCommitPsw =false;
      }else{
          if(pass01!=pass02){
              regIsCommitPsw=false;
              $("#passMsg").text("两次密码输入不一致，请重新输入").css("color","red");
          }else{
              regIsCommitPsw=true;
              $("#passMsg").text("");
          }
      }
      
});

$("#loginout").click(function(){
     
     $.get("user/loginOut.action",null,function(){
          $("#regBlock").css("display","block");
          $("#userBlock").css("display","none");
     });

});

var regIsCommitEmail=false;
var regIsCommitPsw=false;
var verifyCode;
function commitRegForm(){
     
     var code =$("input[name='yzm']").val();
     //alert(code);
     //alert(regIsCommitEmail+","+regIsCommitPsw);
         if(regIsCommitEmail && regIsCommitPsw && verifyCode.validate(code)){
              //用js提交表单
             // $("#regForm").commit();
             
             $.ajax({
              
                url:"user/insertUser.action",
                data:$("#regForm").serialize(),
                type:"POST",
                success:function(data){
                   if(data=='success'){
                      //注册框消失
                      $("#reg").addClass("hidden");
                      
                      $("#account").text($("#regEmail").val());
                      //将注册的user信息展示
                      $("#regBlock").css("display","none");
                      $("#userBlock").css("display","block");
                      
                   }
                },
                error:function(){
                   alert("联系管理员");
                }
             
             });
         
         return false;
         
     }else{
        return false;
     }
      
}

verifyCode = new GVerify("v_container");

function commitLogin(){
   
   var email =$("#loginEmail").val();
   var password =$("#loginPassword").val();
   if(null!=email && email!="" && null!=password && password!=""){
        var params=$("#loginForm").serialize();
       // alert(params);
        // post要小写
        $.post("user/loginUser.action",params,function(data){
        // alert(data);
                 if(data=='success'){
                     
                      //登录框消失
                      $("#login").addClass("hidden");
                      
                      $("#account").text($("#loginEmail").val());
                      //将注册的user信息展示
                      $("#regBlock").css("display","none");
                      $("#userBlock").css("display","block");
                      
                      $("#isLogin").val(1);
                   }
        });
        
        return false;
   }
   
   return false;
}

