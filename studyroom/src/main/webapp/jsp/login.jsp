<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
	<head>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>自习室管理系统</title>
		<link rel="stylesheet" href="../jsp/assets/css/core.css" />
		<link rel="stylesheet" href="../jsp/assets/css/menu.css" />
		<link rel="stylesheet" href="../jsp/assets/css/amazeui.css" />
		<link rel="stylesheet" href="../jsp/assets/css/component.css" />
		<link rel="stylesheet" href="../jsp/assets/css/page/form.css" />
	</head>
	<body>
		<div class="account-pages">
			<div class="wrapper-page">
				<div class="text-center">
	                <a href="../jsp/login.jsp" class="logo"><span>自习室管理系统</span></a>
	            </div>
	            
	            <div class="m-t-40 card-box">
	            	<div class="text-center">
	                    <h4 class="text-uppercase font-bold m-b-0">登录</h4>
	                </div>
	                <div class="panel-body">
	                	<form class="am-form">
	                		<div class="am-g">
	                			<div class="am-form-group">
							      <input type="text" class="am-radius" id="name"  placeholder="用户名">
							    </div>
							
							    <div class="am-form-group form-horizontal m-t-20">
							      <input type="password" class="am-radius" id="pwd" placeholder="密码">
							    </div>
							    
							    <div class="am-form-group ">
									<label style="font-weight: normal;color: #999;">
										<table>
											<tr>
												<td><canvas id="canvas" width="100" height="30"></canvas></td>
												<td><input type="text" placeholder="验证码" style="margin-left: 12px" id="text"></td>
											</tr>
										</table>
									</label>
		                        </div>
		                        
		                        <div class="am-form-group ">
		                        	<button type="button" class="am-btn am-btn-primary am-radius" id="bt" style="width: 100%;height: 100%;">登录</button>
		                        </div>
	                		</div>

	                	</form>
							
	                </div>
	            </div>
			</div>
		</div>
		<script>
			var canvas = document.getElementById("canvas");//演员
			var context = canvas.getContext("2d");//舞台，getContext() 方法可返回一个对象，该对象提供了用于在画布上绘图的方法和属性。
			var button = document.getElementById("bt");//获取按钮
			var input = document.getElementById("text");//获取输入框
			draw();
			canvas.onclick = function () {
				context.clearRect(0, 0, 100, 30);//在给定的矩形内清除指定的像素
				draw();
			}
			// 随机颜色函数
			function getColor() {
				var r = Math.floor(Math.random() * 256);
				var g = Math.floor(Math.random() * 256);
				var b = Math.floor(Math.random() * 256);
				return "rgb(" + r + "," + g + "," + b + ")";
			}
			function draw() {
				context.strokeRect(0, 0, 120, 40);//绘制矩形（无填充）
				var aCode = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "a", "b", "c", "d", "e", "f","g","h"];
				// 绘制字母
				var arr = [] //定义一个数组用来接收产生的随机数
				var num //定义容器接收验证码
				for (var i = 0; i < 4; i++) {
					var x = 10 + i * 20;//每个字母之间间隔20
					var y = 10 + 10 * Math.random();//y轴方向位置为20-30随机
					var index = Math.floor(Math.random() * aCode.length);//随机索引值
					var txt = aCode[index];
					context.font = "bold 20px 微软雅黑";//设置或返回文本内容的当前字体属性
					context.fillStyle=getColor();//设置或返回用于填充绘画的颜色、渐变或模式，随机
					context.translate(x,y);//重新映射画布上的 (0,0) 位置，字母不可以旋转移动，所以移动容器
					var deg=30*Math.random()*Math.PI/180;//0-90度随机旋转
					context.rotate(deg);// 	旋转当前绘图
					context.fillText(txt, 0, 0);//在画布上绘制“被填充的”文本
					context.rotate(-deg);//将画布旋转回初始状态
					context.translate(-x,-y);//将画布移动回初始状态
					arr[i] = txt //接收产生的随机数
				}
				num = arr[0] + arr[1] + arr[2] + arr[3] //将产生的验证码放入num
				// 绘制干扰点，和上述步骤一样，此处用长度为1的线代替点
				for (var i = 0; i < 20; i++) {
					context.beginPath();
					var x = Math.random() * 120;
					var y = Math.random() * 40;
					context.moveTo(x, y);
					context.lineTo(x + 1, y + 1);
					context.strokeStyle=getColor();
					context.stroke();
				}
				//点击按钮验证
				button.onclick = function () {
					var text = input.value; //获取输入框的值
					if (text === num) {
						alert('验证通过');
					} else {
						alert('验证失败')
					}
				}

			}

		</script>
	</body>
</html>
