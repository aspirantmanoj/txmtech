<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="front.aspx.cs" Inherits="txm_tech.front" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title></title>
      <link rel="stylesheet" href="css/bootstrap.min.css">
    <script src="css/jquery.min.js"></script>
    <script src="css/bootstrap.min.js"></script>
    <style type="text/css">
        .auto-style1 {
            width: 100%; height: 594px;
        }
        .auto-style2 {
            height: 60px; background-color: #333399; width: 1612px;  text-align: center;
        }
        .auto-style4 {
            height: 103px; text-align: center;  background-color: #333399; width: 1612px;
        }
        .auto-style5 {
            width: 1612px; background-color: #333333;
        }
        .auto-style6 {
            height: 515px; background-color: #99CCFF; width: 1612px;
        }
        .auto-style7 {
            font-size: medium;

        }
        .auto-style8 {
            height: 250px;
        }
        .auto-style9 {
            height: 250px;
            width: 296px;
        }
        .auto-style11 {
            height: 250px;
            width: 634px;
            text-align: left;
            
        }
        .auto-style12 {
            height: 41px;
            width: 296px;
        }
        .auto-style13 {
            height: 41px;
            text-align: center;
        }
        .auto-style14 {
            height: 41px;
        }
        .auto-style15 {
            width: 100%;
            height: 409px;
            margin-right: 50px;
        }
        </style>
</head>
<body>
      <form id="form1" runat="server">
          <div> 
        <table class="auto-style1">
            <tr>  <td class="auto-style4">
                    <asp:Label ID="Label1" runat="server" ClientIDMode="Static" Font-Bold="True" Font-Size="40pt" ForeColor="#CCCCCC" Text="TXM TECHNOLOGY TIME CHART"></asp:Label>
            </td>  </tr>
            <tr>  <td class="auto-style5">
            <div class="container">
  <ul class="nav nav-pills nav-justified" style="font-size: medium">
    <li class="auto-style7" ><a href="index.aspx">Home</a></li>
    <li class="active"><a href="login.aspx"  onserverclick="login_ServerClick"> View Drawing</a></li>
    <li class="auto-style7"><a href="add_drawing.aspx">Add Drawing</a></li>
    <li class="auto-style7"><asp:linkbutton runat="server" OnClick="Logout_Click">Logout</asp:linkbutton></li>
  </ul>
</div>   </td>
            </tr>
            <tr> 
                <td class="auto-style6">  
                    
                    <table class="auto-style15">
                        <tr>
                            <td class="auto-style12"></td>
                            <td class="auto-style13" style="font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif; font-size: xx-large; font-weight: normal;" colspan="2">
                                <asp:Label ID="Label2" runat="server" Text="SEARCH DRAWING"></asp:Label>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                            <td class="auto-style14"></td>
                        </tr>
                        <tr>
                            <td class="auto-style9">
                                <br />
                            </td>
                            <td class="auto-style11" style="font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif; font-size: large; font-weight: normal;">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; DRAWING No.
                                <br />
                                <br />
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; REV NO&nbsp;
                                <br />
                                <br />
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label4" runat="server"></asp:Label>
                            </td>
                            <td class="auto-style8">
                                    <asp:TextBox ID="TextBox2" runat="server" Width="200px" class="form-control" ></asp:TextBox>
                                <br />
                                    <asp:TextBox ID="TextBox3" runat="server" Width="200px" class="form-control"></asp:TextBox>
                                <br />
                                <br />
                                <asp:Button ID="Button1" runat="server" Text="SEARCH" Width="125px" class="btn btn-primary btn-block" OnClick="Button1_Click"/>
                                </td>
                            <td class="auto-style8">&nbsp;</td>
                        </tr>
                    </table>
                    
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="color: #FFFFFF"> Created by @ TXM - Technology     </table>
              </div>
   </form>
</body>
</html>
