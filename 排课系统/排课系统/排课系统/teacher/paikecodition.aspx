﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="paikecodition.aspx.cs" Inherits="排课系统.teacher.paikecodition" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>教师管理</title>
    <link rel="stylesheet" type="text/css" href="../css/common.css"/>
    <link rel="stylesheet" type="text/css" href="../css/main.css"/>
    <script type="text/javascript" src="../Scripts/modernizr.min.js"></script>
    <script type="text/javascript" src="../Scripts/caidan.js"></script>
    <style type="text/css">   #sub_menu_1,#sub_menu_2,#sub_menu_3,#sub_menu_4{ display: none;  }  ul li:hover{  cursor: pointer; } </style>

</head>
<body>
    <form id="form1" runat="server">
<div class="topbar-wrap white">
    <div class="topbar-inner clearfix">
        <div class="topbar-logo-wrap clearfix">
            <h1 class="topbar-logo none"><a href="index.aspx" class="navbar-brand">后台管理</a></h1>
            <ul class="navbar-list clearfix">
                <li><a class="on" href="index.aspx">首页</a></li>
            </ul>
        </div>
        <div class="top-info-wrap">
            <ul class="top-info-list clearfix">
                 <li> <i class="iconfont">&#xe62a;&nbsp;</i></li>
                <li> 
                    <asp:Label ID="Label1" runat="server" Text=""></asp:Label> </li>
                <li><a href="../NewLogin.aspx" ><font color="#FF000" >退出</font></a></li>
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
                <li onclick = "f('sub_menu_1')">
                    <a href="#"><i class="iconfont">&#xe612;&nbsp;</i>排课操作</a>
                    <ul class="sub-menu" id="sub_menu_1" style="display:none">
                        <li><a href="paikecodition.aspx"><i class="iconfont">&#xe6b5;&nbsp;</i>提交要求</a></li>
                        <li><a href="coursetablemana.aspx"><i class="iconfont">&#xe60a;&nbsp;</i>查看课表</a></li>
                    </ul>
                </li>
                <li onclick = "f('sub_menu_2')">
                    <a href="#"><i class="iconfont">&#xe68d;&nbsp;</i>系统管理</a>
                    <ul class="sub-menu" id="sub_menu_2" style="display:none">
                        <li><a href="info.aspx"><i class="iconfont">&#xe608;&nbsp;</i>个人信息</a></li>
                        <li><a href="modifypwd.aspx"><i class="iconfont">&#xe6c0;&nbsp;</i>个人密码</a></li>
                    </ul>
                </li>
                <li onclick = "f('sub_menu_3')">
                    <a href="#"><i class="iconfont">&#xe601;&nbsp;</i>反馈系统</a>
                    <ul class="sub-menu" id="sub_menu_3" style="display:none">
                        <li><a href="Tfeedback.aspx"><i class="iconfont">&#xe767;</i>提交反馈</a></li>
                        </ul>
                </li>
            </ul>
        </div>
    </div>    <!--/sidebar-->
    <!--/main-->

    
    <div class="main-wrap">

        <div class="crumb-wrap">
            <div class="crumb-list"><i class="iconfont">&#xe602;&nbsp;</i><a href="index.aspx">首页</a><span class="crumb-step">&gt;</span><span class="crumb-name">排课条件</span></div>
        </div>
        <div class="search-wrap">
            <div class="search-content">
                    <table class="search-tab">
                        <tr>
                            <th width="70">星期:</th>
                            <td>
                                <asp:DropDownList ID="DropDownList1" runat="server" class="common-text" 
                                    Height="25px" Width="121px">
                                </asp:DropDownList>
                            </td>
                            <th width="70">节次:</th>
                            <td>
                                <asp:DropDownList ID="DropDownList2" runat="server" class="common-text" 
                                    Height="32px" Width="130px">
                                </asp:DropDownList>
                            </td>
                            <th width="70">起始周:</th>
                            <td>
                                <asp:DropDownList ID="DropDownList3" runat="server" class="common-text" 
                                    Height="32px" Width="129px">
                                </asp:DropDownList>
                            </td>
                            <th width="70">截止周:</th>
                            <td>
                                <asp:DropDownList ID="DropDownList4" runat="server" class="common-text" 
                                    Height="28px" Width="131px">
                                </asp:DropDownList>
                            </td>
                            <td width="50"></td>
                            <td >
                                <asp:Button ID="Button1" runat="server" Text="添加" class="btn btn-primary btn2" 
                                    onclick="Button1_Click1"/>
                            </td>
                        </tr>
                    </table>
            </div>
        </div>
        <div class="result-wrap">
        <div align="center"><h1 style="font-size: large">教师个人禁忌排课列表</h1></div>
                <div class="result-content">
                     <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                          GridLines="None"  AllowPaging="True"  CssClass="result-tab" 
                         DataKeyNames="id" Width="100%" 
                         onpageindexchanging="GridView1_PageIndexChanging" 
                         onrowdeleting="GridView1_RowDeleting">
                         <Columns>
                            <asp:BoundField DataField="weekdays" HeaderText="星期" />
                            <asp:BoundField DataField="sections" HeaderText="节次" />
                            <asp:BoundField DataField="weeksstart" HeaderText="起止周" />
                            <asp:BoundField DataField="weeksend" HeaderText="截止周" />
                            <asp:BoundField DataField="shenhestatus" HeaderText="审核状态" />
                            <asp:CommandField HeaderText="删除" ShowDeleteButton="True" />
                        </Columns>
                        <RowStyle ForeColor="#000066" />
                        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="Black" />

                   </asp:GridView>
                </div>

        </div>
    </div>


</div>

</form>
</body>
</html>
