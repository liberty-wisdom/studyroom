<%--
  Created by IntelliJ IDEA.
  User: 哈哈
  Date: 2020/11/15
  Time: 0:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>自习室管理系统登录</title>
</head>
<body>
    <form>
        <table>
            <tr>
                <td colspan="2">自习室管理系统</td>
            </tr>
            <tr>
                <td>用户名</td>
                <td><input type="text" name="username"></td>
            </tr>
            <tr>
                <td>密码</td>
                <td><input type="password" name="password"></td>
            </tr>
            <tr>
                <td>验证码</td>
                <td>
                    <canvas id="canvas" width="100" height="30" style="margin-top: 3px"></canvas>
                    <input type="text" id="text" >
                    <input type="button" value="提交" id="bt">
                </td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <input type="submit" value="登录">
                    <a href="/managerController/findOneManager?username=admin"><input type="button" value="查询"></a>
                </td>
            </tr>
        </table>
    </form>
    <script>
        var canvas = document.getElementById("canvas");
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
            context.strokeRect(0, 0, 100, 30);//绘制矩形（无填充）
            var aCode = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "a", "b", "c", "d", "e", "f"];
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
                var deg=90*Math.random()*Math.PI/180;//0-90度随机旋转
                context.rotate(deg);// 	旋转当前绘图
                context.fillText(txt, 0, 0);//在画布上绘制“被填充的”文本
                context.rotate(-deg);//将画布旋转回初始状态
                context.translate(-x,-y);//将画布移动回初始状态
                arr[i] = txt //接收产生的随机数
            }
            num = arr[0] + arr[1] + arr[2] + arr[3] //将产生的验证码放入num
            //点击按钮验证
            button.onclick = function () {
                var text = input.value //获取输入框的值
                if (text === num) {
                    alert('验证通过')
                } else {
                    alert('验证失败')
                }
            }
        }
    </script>
</body>
</html>
