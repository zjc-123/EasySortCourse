﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="coursetable.aspx.cs" Inherits="排课系统.student.coursetable" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>学生系统</title>
    <link rel="stylesheet" type="text/css" href="../css/common.css"/>
    <link rel="stylesheet" type="text/css" href="../css/main.css"/>
    <script type="text/javascript" src="../Scripts/modernizr.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
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
                        <asp:Label ID="stureg" runat="server" Text=""></asp:Label></li>
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
                            <li><a href="majormana.aspx"><i class="icon-font">&#xe008;</i></a></li>
                            </ul>
                        </li>
                    <li>
                        <ul class="sub-menu">
                            <li><a href="coursetable.aspx"><i class="icon-font">&#xe052;</i>学生课表</a></li>
                            <li><a href="#"><i class="icon-font">&#xe008;</i>培养方案</a></li>
                            </ul>
                        </li>
                    <li>
                        <a href="#"><i class="icon-font">&#xe018;</i>系统管理</a>
                        <ul class="sub-menu">
                            <li><a href="updatepwd.aspx"><i class="icon-font">&#xe017;</i>个人密码</a></li>
                            </ul>
                        </li>
                    <li>
                        <a href="#"><i class="icon-font">&#xe018;</i>反馈系统</a>
                        <ul class="sub-menu">
                            <li><a href="modifypwd.aspx"><i class="icon-font">&#xe017;</i>提交反馈</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        <div class="main-wrap">
            <div class="crumb-wrap">
                <div class="crumb-list"><i class="icon-font"></i><a href="index.aspx">首页</a>
                    <span class="crumb-step">&gt;</span><span class="crumb-name">学生课表</span>
                    </div>
                </div>
            <div class="result-wrap">
                <div class="result-content">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"
                        GridLines="None"  AllowPaging="True"  CssClass="result-tab"
                        Width="100%" PageSize="22">
                        <Columns>
                            <asp:BoundField DataField="weekdays" HeaderText="周次" ReadOnly="True">
                                <ItemStyle Width="15%" HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:BoundField>
                            <asp:BoundField DataField="sections" HeaderText="节次">
                                <ItemStyle Width="20%" HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:BoundField>
                            <asp:BoundField DataField="course" HeaderText="课程教室">
                                <ItemStyle Width="60%" />
                                </asp:BoundField>
                            </Columns>
                        <RowStyle ForeColor="#000066" />
                        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="Black" />
                        <RowStyle ForeColor="#000066" />
                        </asp:GridView>
                </div>
            </div>
        </div>
    </div>
    </form>
</body>
</html> 
