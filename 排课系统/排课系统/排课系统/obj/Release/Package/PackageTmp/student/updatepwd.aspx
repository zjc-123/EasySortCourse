﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="updatepwd.aspx.cs" Inherits="排课系统.student.modifypwd" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>学生系统</title>
    <link rel="stylesheet" type="text/css" href="../css/common.css"/>
    <link rel="stylesheet" type="text/css" href="../css/main.css"/>
    <script type="text/javascript" src="../Scripts/modernizr.min.js"></script>
</head>
<body>
    <div class="topbar-wrap white">
        <div class="topbar-inner clearfix">
            <div class="topbar-logo-wrap clearfix">
                <h1 class="topbar-logo none"><a href="index.aspx" class="navbar-brand">学生系统</a></h1>
                <ul class="navbar-list clearfix">
                    <li><a class="on" href="index.aspx">首页</a></li>
                    </ul>
                </div>
            <div class="top-info-wrap">
                <ul class="top-info-list clearfix">
                    <li>
                        <asp:Label ID="Label1" runat="server" Text=""></asp:Label></li>
                    <li><a href="../NewLogin.aspx">退出</a></li>
                    </ul>
                </div>
            </div>
    </div>
    <div class="container clearfix">
        <div class="sidebar-wrap">
            <div class="sidebar-title">
                <h1>菜单</h1>
                </div>
            <div class="sidebar-content">
                    <ul class="sidebar-list">
                        <li>
                        <a href="#"><i class="icon-font">&#xe003;</i>专业管理</a>
                        <ul class="sub-menu">
                            <!--选择院系后右伸展页展示该院系的专业名称-->
                            <%--<li><a href="majormana.aspx"><i class="icon-font">&#xe008;</i></a></li>--%>
                            </ul>
                        </li>
                    <li>
                        <ul class="sub-menu">
                            <li><a href="#"><i class="icon-font">&#xe052;</i>学生课表</a></li>
                            <%--<li><a href="paikecodition.aspx"><i class="icon-font">&#xe008;</i>培养方案</a></li>--%>
                            </ul>
                        </li>
                    <li>
                        <a href="#"><i class="icon-font">&#xe018;</i>系统管理</a>
                        <ul class="sub-menu">
                            <li><a href="information.aspx"><i class="icon-font">&#xe017;</i>个人信息</a></li>
                            <li><a href="updatepwd.aspx"><i class="icon-font">&#xe017;</i>个人密码</a></li>
                            </ul>
                        </li>
                    <li>
                        <a href="#"><i class="icon-font">&#xe018;</i>反馈系统</a>
                        <ul class="sub-menu">
                            <li><a href="feedback.aspx"><i class="icon-font">&#xe017;</i>提交反馈</a></li>
                            </ul>
                        </li>
                        </ul>
                    </div>
            </div>
        <!--/sidebar-->
        <div class="main-wrap">
            <div class="crumb-wrap">
                <div class="crumb-list"><i class="icon-font"></i><a href="index.aspx">首页</a>
                    <span class="crumb-step">&gt;</span><span class="crumb-name">修改密码</span></div>
                </div>
            <form id="login_form" runat="server">
                <div class="result-wrap">
                    <div class="result-title">
                        </div>
                    <div class="result-content">
                        <ul class="sys-info-list">
                            <li>
                                <label class="res-lab">新密码</label><asp:TextBox ID="TextBox1" runat="server"
                                    TextMode="Password"></asp:TextBox>
                                </li>
                            <li>
                                <label class="res-lab">确认密码</label><asp:TextBox ID="TextBox2" runat="server"
                                    TextMode="Password"></asp:TextBox>
                                </li>
                            <li>
                                <label class="res-lab"></label>
                                <asp:Button ID="Button1" runat="server" class="btn btn-success btn6 mr10"
                                    Text="保存" Height="33px" Width="72px" onclick="Button1_Click" />
                                </li>
                            </ul>
                        </div>
                    </div>
                </form>
            </div>
    </div>
</body>
</html>
