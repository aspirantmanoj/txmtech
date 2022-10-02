<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="view.aspx.cs" Inherits="txm_tech.view1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
       <style type="text/css">
        #form1 {
            width: 995px;
        }
        .auto-style1 {
            width: 121px;
        }
        .auto-style2 {
            width: 338px;
        }
        .auto-style3 {
            text-align: left;
        }
        .auto-style4 {
            width: 121px;
            height: 34px;
        }
        .auto-style5 {
            width: 338px;
            height: 34px;
        }
        .auto-style6 {
            height: 34px;
        }
        .auto-style7 {
            width: 99%;
            height: 260px;
        }
        .auto-style8 {
            width: 1127px;
            height: 566px;
        }
    </style>
</head>
<body>
   <form id="form1" runat="server" class="auto-style8">

        <div style="margin-left: 1120px">
            <asp:Button ID="Button1" runat="server" Text="LOG OUT" height="20px" width="100px" margin-top="10px" OnClick="Button1_Click"/>
        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Width="935px" Height="132px" AllowSorting="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:BoundField DataField="div" HeaderText="DIVISION" SortExpression="div" />
                <asp:BoundField DataField="drawing" HeaderText="DRAWING" SortExpression="drawing" />
                <asp:BoundField DataField="rev" HeaderText="REV NO" SortExpression="rev" />
                <asp:BoundField DataField="descript" HeaderText="DESCRIPTION" SortExpression="descript" />
                <asp:BoundField DataField="op_no" HeaderText="OPERATION NO" SortExpression="op_no" />
                <asp:BoundField DataField="totalprocess" HeaderText="TOTAL OP" SortExpression="totalprocess" />
                <asp:CommandField ShowSelectButton="True" />
            </Columns>
            <EmptyDataTemplate>
                <asp:Label ID="Label1" runat="server" style="font-size: medium; text-align: center" Text='<%# Eval("name") %>'></asp:Label>
            </EmptyDataTemplate>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [drawing], [rev], [div], [op_no], [totalprocess], [descript] FROM [drawing]">
        </asp:SqlDataSource>

            <br />
            <table class="auto-style7">
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label2" runat="server" Text="Drawing"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="TextBox1" runat="server" Width="269px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Label ID="Label7" runat="server" Text="Revision No"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="TextBox6" runat="server" Width="300px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label3" runat="server" Text="Operation No"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="TextBox2" runat="server" Width="269px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Label ID="Label8" runat="server" Text="Total Operations"></asp:Label>
&nbsp;&nbsp;&nbsp; &nbsp;
                        <asp:TextBox ID="TextBox7" runat="server" Width="300px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="Label4" runat="server" Text="Set Hours"></asp:Label>
                    </td>
                    <td class="auto-style5">
                        <asp:TextBox ID="TextBox3" runat="server" Width="269px"></asp:TextBox>
                    </td>
                    <td class="auto-style6">
                        <asp:Label ID="Label9" runat="server" Text="Operation Hours"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="TextBox8" runat="server" Width="300px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label5" runat="server" Text="Set Minutes"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="TextBox4" runat="server" Width="269px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Label ID="Label10" runat="server" Text="Operation Minutes"></asp:Label>
&nbsp;&nbsp;
                        <asp:TextBox ID="TextBox9" runat="server" Width="300px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label6" runat="server" Text="Drawing Description"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="TextBox5" runat="server" Height="70px" Width="320px"></asp:TextBox>
                    </td>
                    <td class="auto-style3">
                        <asp:Label ID="Label11" runat="server" Text="Operation Description "></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="TextBox10" runat="server" Height="70px" Width="320px"></asp:TextBox>
                    </td>
                </tr>
                </table>
            <br />
&nbsp;<br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
        </form>

    </body>
</html>
