<!DOCTYPE html>

<head>
    <%@ page language="java" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%--<meta charset="utf-8">--%>
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <title>LOGIN</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/auth.css">
</head>

<body>
<div class="lowin">
    <div class="lowin-brand">
        <img src="/image/kodinger.jpg" alt="logo">
    </div>
    <div class="lowin-wrapper">
        <div class="lowin-box lowin-login">
            <div class="lowin-box-inner">
                <form>
                    <p>Sign in to continue</p>
                    <div class="lowin-group">
                        <label>Email <a href="#" class="login-back-link">Sign in?</a></label>
                        <input type="email" autocomplete="email" name="email" class="lowin-input">
                    </div>
                    <div class="lowin-group password-group">
                        <label>Password <a href="#" class="forgot-link">Forgot Password?</a></label>
                        <input type="password" name="password" autocomplete="current-password" class="lowin-input">
                    </div>
                    <button class="lowin-btn login-btn">
                        Sign In
                    </button>

                    <div class="text-foot">
                        Don't have an account? <a href="" class="register-link">Register</a>
                    </div>
                </form>
            </div>
        </div>

        <div class="lowin-box lowin-register">
            <div class="lowin-box-inner">
                <form>
                    <p>Let's create your account</p>
                    <div class="lowin-group">
                        <label>Name</label>
                        <input type="text" name="name" autocomplete="name" class="lowin-input">
                    </div>
                    <div class="lowin-group">
                        <label>Email</label>
                        <input type="email" autocomplete="email" name="email" class="lowin-input">
                    </div>
                    <div class="lowin-group">
                        <label>Password</label>
                        <input type="password" name="password" autocomplete="current-password" class="lowin-input">
                    </div>
                    <button class="lowin-btn">
                        Sign Up
                    </button>

                    <div class="text-foot">
                        Already have an account? <a href="" class="login-link">Login</a>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <footer class="lowin-footer">
        <%--Design By @itskodinger. More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a>--%>
    </footer>
</div>

<script src="/js/auth.js"></script>
<script>
    Auth.init({
        login_url: '<c:url  value='/admin/login'/>',
        forgot_url: '#forgot'
    });
</script>
</body>
</html>