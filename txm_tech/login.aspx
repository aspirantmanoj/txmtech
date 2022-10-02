<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="txm_tech.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style8 {
            width: 469px;
            height: 75px;
        }
        .auto-style12 {
            width: 176px;
            height: 78px;
        }
        .auto-style13 {
            width: 267px;
            height: 78px;
            text-align: center;
        }
        .auto-style14 {
            height: 78px;
        }
        .auto-style15 {
            width: 176px;
            height: 74px;
        }
        .auto-style16 {
            width: 267px;
            height: 74px;
            font-size: x-large;
            text-align: center;
        }
        .auto-style17 {
            height: 74px;
        }
        .auto-style18 {
            width: 176px;
            height: 75px;
        }
        .auto-style19 {
            width: 267px;
            height: 75px;
            text-align: center;
            font-size: x-large;
        }
        .auto-style20 {
            font-weight: bold;
        }
        .auto-style21 {
            height: 78px;
            text-align: justify;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    &nbsp;<table class="nav-justified">
        <tr>
            <td class="auto-style15">L</td>
            <td class="auto-style16"><strong>S</strong><span class="auto-style20">TAFF NO</span></td>
            <td class="auto-style17">
                <asp:TextBox ID="TextBox1" runat="server" Height="33px" Width="405px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style18"></td>
            <td class="auto-style19"><strong>PASSWORD</strong></td>
            <td class="auto-style8">
                <asp:TextBox ID="TextBox2" runat="server" Height="33px" Width="405px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style12"></td>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style14">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <div class="text-right">
                <asp:Button ID="Button1" class="btn btn-primary btn-block" runat="server" Height="42px" Text="Login" Width="201px" OnClick="Button1_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;
                </div>
            </td>
        </tr>
        <tr>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style21">
                <asp:Label ID="Label3" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>
