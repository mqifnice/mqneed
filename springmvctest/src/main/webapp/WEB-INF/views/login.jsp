<!DOCTYPE html>

<head>
    <%@ page language="java" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%--<meta charset="utf-8">--%>
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <title>LOGIN</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/auth.css">
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>

<body>


<c:if test="${flag==1}">
    <div id="myAlert" class="alert alert-success">
        <a href="#" class="close" data-dismiss="alert">&times;</a>
        <strong>成功！</strong>${message}
    </div>
</c:if>

<c:if test="${flag==2}">
    <div id="myAlert2" class="alert alert-warning">
        <a href="#" class="close" data-dismiss="alert">&times;</a>
        <strong>警告！</strong>${message}
    </div>
</c:if>
<div class="lowin">
    <div class="lowin-brand">
        <img src="/image/kodinger.jpg" alt="logo">
    </div>
    <div class="lowin-wrapper">
        <div class="lowin-box lowin-login">
            <div class="lowin-box-inner">
                <form method=post>
                    <p></p>
                    <div class="lowin-group">
                        <label>邮箱 <a href="#" class="login-back-link">登录</a></label>
                        <input type="email" autocomplete="email" name="email" class="lowin-input" required="required">
                    </div>
                    <div class="lowin-group password-group">
                        <label>密码 <a href="#" class="forgot-link">忘记密码?</a></label>
                        <input type="password" name="password" autocomplete="current-password" class="lowin-input"
                               id="pwd" required="required">
                    </div>
                    <button class="lowin-btn login-btn">
                        登录
                    </button>

                    <div class="text-foot">
                        <a href="" class="register-link">立即注册</a>
                    </div>
                </form>
            </div>
        </div>

        <div class="lowin-box lowin-register">
            <div class="lowin-box-inner">
                <form method=post>
                    <p></p>
                    <div class="lowin-group">
                        <label>昵称</label>
                        <input type="text" name="name" autocomplete="name" class="lowin-input" required="required">
                    </div>
                    <div class="lowin-group">
                        <label>邮箱</label>
                        <input type="email" autocomplete="email" name="email" class="lowin-input"
                               required="required">
                    </div>
                    <div class="lowin-group">
                        <label>密码</label>
                        <input type="password" name="password" autocomplete="current-password" class="lowin-input"
                               required="required">
                    </div>
                    <button class="lowin-btn">
                        注册
                    </button>

                    <div class="text-foot">
                        已有账号? <a href="" class="login-link">登录</a>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <footer class="lowin-footer">

        Copyright © 2019 四川红番茄科技有限公司 版权所有|蜀ICP备17041385号-2
        <%--Design By @itskodinger. More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a>--%>
        <%--- Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a>--%>
    </footer>
</div>

<script src="/js/auth.js"></script>
<script>
    Auth.init({
        login_url: '<c:url  value='/admin/login'/>',
        forgot_url: '<c:url  value='/admin/forgot'/>',
        register_url: '<c:url  value='/admin/register'/>'
    });

    $(function () {
        $(".close").click(function () {
            $("#myAlert").alert();
            $("#myAlert2").alert();
        });
    });

</script>
</body>
</html>