﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="paikemana.aspx.cs" Inherits="排课系统.admin.paikemana" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>后台管理</title>
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
                <li>欢迎你， </li>
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

            <ul class="sidebar-list" >
                <li onclick = "f('sub_menu_1')"> 
                  <a href="#"><i class=" iconfont">&#xe612;&nbsp;</i>基本操作</a>
                    <ul class="sub-menu" id="sub_menu_1" style="display:none"> 
                        <li><a href="majormana.aspx"><i class="iconfont">&#xe83a;&nbsp;</i>专业管理</a></li>
                        <li><a href="teacherman.aspx"><i class="iconfont">&#xe600;&nbsp;</i>教师管理</a></li>
                       </ul>
                </li>
                
                <li onclick = "f('sub_menu_2')">
                   
                    <a href="#"><i class="iconfont">&#xe638;&nbsp;</i>排课操作</a>
                    <ul class="sub-menu" id="sub_menu_2" style="display:none">
                        <li ><a href="courseplan.aspx"><i class="iconfont">&#xe607;&nbsp;</i>教学计划</a></li>
                        <li><a href="coursetask.aspx"><i class="iconfont">&#xe62b;&nbsp;</i>教学任务</a></li>
                        <li><a href="paikecodition.aspx"><i class="iconfont">&#xe735;&nbsp;</i>排课条件</a></li>
                        <li><a href="paikemana.aspx"><i class="iconfont">&#xe633;&nbsp;</i>排课管理</a></li>
                        <li><a href="coursetablemana.aspx"><i class="iconfont">&#xe655;&nbsp;</i>课表管理</a></li>
                    </ul>
                </li>
                <li onclick = "f('sub_menu_3')">
                    <a href="#"><i class="iconfont">&#xe68d;&nbsp;</i>系统管理</a>
                    <ul class="sub-menu" id="sub_menu_3" style="display:none">
                        <li><a href="modifypwd.aspx"><i class="iconfont">&#xe6c0;&nbsp;</i>个人密码</a></li>
                        
                    </ul>
                </li>
	            <li onclick = "f('sub_menu_4')">
                    <a href="#"><i class="iconfont">&#xe771;&nbsp;</i>反馈管理</a>
                    <ul class="sub-menu" id="sub_menu_4" style="display:none">
                        <li><a href="#"><i class="iconfont">&#xe727;&nbsp;</i>查看反馈</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div> 
    <!--/sidebar-->
    <!--/main-->

    
    <div class="main-wrap">

        <div class="crumb-wrap">
            <div class="crumb-list"><i class="iconfont">&#xe602;&nbsp;</i><a href="index.aspx">首页</a><span class="crumb-step">&gt;</span><span class="crumb-name">专业管理</span></div>
        </div>
        <div class="search-wrap">
            <div class="search-content">
                    <table class="search-tab">
                        <tr>
                            <th width="50"></th>
                            <td><asp:Button ID="Button1" class="btn btn-primary btn2" runat="server" Text="自动排课" 
                                    style="margin:auto;" onclick="Button1_Click" ToolTip="自动排课需要写时间..." /></td>
                            <th width="50"></th>
                            <th width="120">未排课关键字:</th>
                            <td><asp:TextBox class="common-text" placeholder="未排课关键字" ID="findinfo" runat="server" Type="text"></asp:TextBox></td>
                            <td >
                                <asp:Button ID="Button3" class="btn btn-success btn2" runat="server" Text="查询" 
                                    style="margin:auto;" onclick="Button3_Click"   /></td>
                            <th width="120">已排课关键字:</th>
                            <td><asp:TextBox class="common-text" placeholder="已排课关键字" ID="findinfo1" runat="server" Type="text"></asp:TextBox></td>
                            <td><asp:Button ID="Button2" class="btn btn-default btn2" runat="server" Text="查询" 
                                    style="margin:auto;" onclick="Button2_Click"  /></td>
                            <td><asp:Button ID="Button4" class="btn btn-default btn2" runat="server" Text="删除已排课表" 
                                    style="margin:auto; color:red" onclick="Button4_Click"  /></td>
                        </tr>
                    </table>
            </div>
        </div>
        <div class="result-wrap">
            <div align="center" style="font-size: large; font-weight: bold">未排课程列表</div>
                <div class="result-content">
                     <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                          GridLines="None"  AllowPaging="True"  CssClass="result-tab" 
                         DataKeyNames="id" Width="100%" 
                         onpageindexchanging="GridView1_PageIndexChanging" 
                         onrowdeleting="GridView1_RowDeleting" PageSize="4">
                         <Columns>
                            <asp:BoundField DataField="xuhao" HeaderText="课号" ReadOnly="True" />
                            <asp:BoundField DataField="coursename" HeaderText="课程名称" />
                            <asp:BoundField DataField="coursexingzhi" HeaderText="课程性质" />
                            <asp:BoundField DataField="xueshiallz" HeaderText="周总学时" />
                            <asp:BoundField DataField="xueshijiangshouz" HeaderText="周讲授学时" />
                            <asp:BoundField DataField="xueshishiyanz" HeaderText="周实验学时" />
                            <asp:BoundField DataField="zhouci" HeaderText="上课周次" />
                            <asp:BoundField DataField="teachidz" HeaderText="主讲教师工号" ReadOnly="True"/>
                            <asp:BoundField DataField="teachnamez" HeaderText="主讲教师" />
                            <asp:BoundField DataField="major" HeaderText="专业" />
                            <asp:BoundField DataField="grade" HeaderText="年级" />
                            <asp:BoundField DataField="dianjiao" HeaderText="是否使用电教" />
                            <asp:BoundField DataField="shuangyu" HeaderText="是否双语教学" />
                            <asp:CommandField HeaderText="手动排课" ShowDeleteButton="True" DeleteText="手动排课" />
                        </Columns>
                        <RowStyle ForeColor="#000066" />
                        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="Black" />
                   </asp:GridView>
                </div>
        </div>

        <div class="result-wrap">
            <div align="center" style="font-size: large; font-weight: bold">已排课程列表</div>
                <div class="result-content">
                     <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                          GridLines="None"  AllowPaging="True"  CssClass="result-tab" 
                         DataKeyNames="id" Width="100%" 
                         
                          PageSize="5" onpageindexchanging="GridView2_PageIndexChanging" 
                         onrowcancelingedit="GridView2_RowCancelingEdit" 
                         onrowediting="GridView2_RowEditing" onrowupdating="GridView2_RowUpdating">
                         <Columns>
                            <asp:BoundField DataField="xuhao" HeaderText="课号" ReadOnly="True" />
                            <asp:BoundField DataField="coursename" HeaderText="课程名称" ReadOnly="True"/>
                            <asp:BoundField DataField="coursexingzhi" HeaderText="课程性质" ReadOnly="True"/>
                            <asp:BoundField DataField="xueshiallz" HeaderText="周总学时" ReadOnly="True"/>
                            <asp:BoundField DataField="xueshijiangshouz" HeaderText="周讲授学时" ReadOnly="True"/>
                            <asp:BoundField DataField="xueshishiyanz" HeaderText="周实验学时" ReadOnly="True"/>
                            <asp:BoundField DataField="zhouci" HeaderText="上课周次" ReadOnly="True"/>
                            <asp:BoundField DataField="teachidz" HeaderText="主讲教师工号" ReadOnly="True"/>
                            <asp:BoundField DataField="teachnamez" HeaderText="主讲教师" ReadOnly="True"/>
                            <asp:BoundField DataField="major" HeaderText="专业" ReadOnly="True"/>
                            <asp:BoundField DataField="grade" HeaderText="年级" ReadOnly="True"/>
                            <asp:BoundField DataField="dianjiao" HeaderText="是否使用电教" ReadOnly="True"/>
                            <asp:BoundField DataField="shuangyu" HeaderText="是否双语教学" ReadOnly="True"/>
                            <asp:BoundField DataField="weekdays" HeaderText="星期" />
                            <asp:BoundField DataField="sections" HeaderText="节次" />
                            <asp:CommandField HeaderText="手动调节" ShowEditButton="True" EditText="手动调节" />
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
