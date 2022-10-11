<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="view_drawing.aspx.cs" Inherits="txm_tech.view_drawing" %>

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
        .auto-style9 {
            height: 272px;
            width: 78px;
            text-align: center;
        }
        .auto-style13 {
            width: 100%;
            height: 200px;
        }
        .auto-style14 {
            height: 272px;
            width: 349px;
            text-align: left;
        }
        .auto-style15 {
            height: 272px;
            text-align: left;
        }
        .auto-style16 {
            height: 368px;
            width: 78px;
        }
        .auto-style17 {
            height: 368px;
            width: 410px;
            text-align: center;
        }
        .auto-style18 {
            height: 368px;
            width: 518px;
            text-align: left;
        }
        .auto-style19 {
            position: relative;
            left: 120px;
            top: -57px;
            width: 349px;
        }

        .auto-style20 {
            height: 368px;
            width: 537px;
            text-align: left;
        }
        .auto-style21 {
            height: 272px;
            text-align: left;
            width: 410px;
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
                    
                    <table class="auto-style13">
                        <tr>
                            <td class="auto-style16"   border-top="thin solid";  border-color="black">
                                &nbsp;</td>
                            <td class="auto-style17" style="font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif; font-size: large; font-weight: normal;" rowspan="1" >
                                <br />
                                <asp:Button ID="Button1" class="btn btn-primary btn-block" runat="server" Text="View Operations" Width="250px" OnClick="Button1_Click" />
                                <div class="text-justify">
                                <br />
                                </div>
                                <asp:Button ID="Button2" class="btn btn-primary btn-block" runat="server" Text="Save Changes" Width="250px" />
                                <div class="text-justify">
                                <br />
                                </div>
                                <asp:Button ID="Button3" class="btn btn-primary btn-block" runat="server" Text="Delete Drawing" Width="250px" />
                                <div class="text-justify">
                                <br />
                                </div>
                                <asp:Button ID="Button4" class="btn btn-primary btn-block" runat="server" Text="Save PDF" Width="250px" />
                            </td>
                            <td class="auto-style20" style="font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif; font-size: large; font-weight: normal;" rowspan="1" >
                               <h2> <asp:Label ID="Label2" runat="server" Text=" DRAWING DETAILS :"></asp:Label></h2> &nbsp;<br />
                                DRAWING No.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="TextBox1" runat="server" Width="250px" class="form-control"></asp:TextBox> 
                              
                                <br />
                                REV NO&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                                <asp:TextBox ID="TextBox2" runat="server" Width="250px" class="form-control"></asp:TextBox>
                                
                                <br />
                                DIVISION&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="TextBox3" runat="server" Width="250px" class="form-control"></asp:TextBox>
                                
                                <br />
                                LOCATION&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="TextBox4" runat="server" Width="250px" class="form-control"></asp:TextBox><br /><br />
                            </td>
                            <td class="auto-style18" style="font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif; font-size: large; font-weight: normal;" rowspan="1">
                                <br />
                                <br />
                                <br />
                                VARIENT&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="TextBox5" runat="server" Width="250px" class="form-control"></asp:TextBox>
                               
                                <br />
                                ITEM No&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; 
                                <asp:TextBox ID="TextBox6" runat="server" Width="250px" class="form-control"></asp:TextBox>
                                <br />
                                ASSEMBLY DRAWING <asp:TextBox ID="TextBox7" runat="server" Width="250px" class="form-control"></asp:TextBox>
                               
                                <br />
                                TOTAL PROCESS&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="TextBox8" runat="server" Width="250px" class="form-control"></asp:TextBox>
                                <br />
                            </td>
                            <td class="auto-style19" style="font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif; font-size: large; font-weight: normal;">
                              <br /><br /><br /><br /><br />
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style9">&nbsp;</td>
                            <td class="auto-style21" style="font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif; font-size: large; font-weight: normal;">
                                &nbsp;</td>
                            <td class="auto-style15" style="font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif; font-size: large; font-weight: normal;" colspan="2">
                                DESCRIPTION    <br />
                                <asp:TextBox ID="TextBox9" runat="server" Width="643px" Height="243px" class="form-control" TextMode="MultiLine"></asp:TextBox>
                                <br />
                                <br />
                            </td>
                            <td class="auto-style14" style="font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif; font-size: large; font-weight: normal;">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                        </tr>
                        </table>
                    
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="color: #FFFFFF"> Created by @ TXM - Technology      </table>
              </div>
   </form>
</body>
</html>
