<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>

<!DOCTYPE html>
<html lang="zh-CN">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>登录</title>
    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">
	<style type="text/css">
	
	</style>
	<script type="text/javascript">
		window.onload=function(){
			$("#button_01").mousedown(function(){
			
				$("#input_01").prop("type","text");
				
			});
			$("#button_01").mouseup(function(){
				$("#input_01").prop("type","password");
			});
			//点击验证码图像，获取新的验证码
			$("#codeImg").click(function(){
				//因为浏览器缓存的原因，如果src路径相同，不会再次发送请求，所以在路径后增加随机值
				$(this).attr("src","${pageContext.request.contextPath}/admin/create?id="+Math.random());
			});
		}
		
		function login(){
			if($("#YZM").val() == null && $("#YZM").val() == ""){
				$("#font_0").text("验证码不能为空!");
				return false;
			}
			var data = $("form").serialize();
			$.post(
				"${pageContext.request.contextPath}/admin/login",data,function (data) {

					alert(data)
						if(data == '1'){
							location.href = "${pageContext.request.contextPath}/project/list";
						}else {
							if(data == '2'){
								$("#font_0").text("验证码错误!");
							}
							if(data == '3'){
								$("#font_0").text("账户或密码错误!");
							}

						}
					}
				);
			return false;
		}
		

	</script>
	

    <!-- HTML5 shim 和 Respond.js 是为了让 IE8 支持 HTML5 元素和媒体查询（media queries）功能 -->
    <!-- 警告：通过 file:// 协议（就是直接将 html 页面拖拽到浏览器中）访问页面时 Respond.js 不起作用 -->
    <!--[if lt IE 9]>
      <script src="https://cdn.jsdelivr.net/npm/html5shiv@3.7.3/dist/html5shiv.min.js"></script>
      <script src="https://cdn.jsdelivr.net/npm/respond.js@1.4.2/dest/respond.min.js"></script>
    <![endif]-->
  </head>
  <body>
	    <div class="container"style=" width: 500px;padding-top: 300px;">
			<table class="table table-bordered">
				<tr style="background-color:#347AB6;">
					<td>
						<div>
						  <h3>后台登录</h3>
						</div>
					</td>
				</tr>
				<tr>
					<td>
					<%-- ${pageContext.request.contextPath} --%>
					<form method="post" >
						<div style="padding-left:20px">
							<img src="${pageContext.request.contextPath}/img/logo0701.png">
							<font style="font-size: 25px;" color="#347AB6"></font>
						</div>
					  <div class="form-group">
						<label for="exampleInputEmail1">用户名：</label>
						<input type="text" class="form-control" id="exampleInputEmail1" placeholder="用户名"value="张三" name="email">
					  </div>
					  <div class="form-group">
						<%--@declare id="exampleinputpassword1"--%><label for="exampleInputPassword1">密码：</label>
						<div class="input-group">
						  <input type="password" id="input_01" class="form-control" placeholder="密码" value="123" name="password">
						  <div class="input-group-btn">
							<button type="button" class="btn btn-default" id="button_01" aria-label="Help"><span class="glyphicon glyphicon-eye-open" ></span></button>
							
						  </div>
						</div>
					  </div>
					  <label for="exampleInputPassword1">验证码：</label>
					  <div class="input-group">
						<div class="left fl"><input class="form-control" style="width: 150px" type="text" name="yzm" id="YZM" placeholder="请输入验证码"/> 
							&nbsp;&nbsp;&nbsp;<img id="codeImg" src="${pageContext.request.contextPath}/admin/create" style="padding-left:20px;">
							&nbsp;&nbsp;<span id="span_1"></span>
						</div>
						<div class="right fl"></div><!-- img的src是生成验证码的servlet资源 -->
						<div class="clear"></div>
					</div>
					   <div style="text-align: left; width: 100px;height: 20px;">
					  	  
					  	<span id="msg"><font id="font_0" color="red"></font></span>
					  	
					  </div>
					  <div style="text-align: center;padding-top:10px;">
					  	  <button type="submit" class="btn btn-default" onclick="return login()">登录</button>
					  	<span>     </span>
					  	<button type="reset" class="btn btn-default">重置</button>
					  </div>
					</form>	
					</td>
				</tr>
			  </table>
	  </div>
    <!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
    <script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
    <!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
  </body>
</html>
