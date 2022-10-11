<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="view_operations.aspx.cs" Inherits="txm_tech.view_operations" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
      <link rel="stylesheet" href="css/bootstrap.min.css">
    <script src="css/jquery.min.js"></script>
    <script src="css/bootstrap.min.js"></script>
    <script>
        function delFunction() {
            alert(documentwrite("Confirm Deletion").innerHTML);
        }
  //alert(document.getElementById("myTable").rows.namedItem("myRow").innerHTML);}
    </script>ipt>
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
            margin:auto;
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
            width: 308px;
            text-align: left;
        }
        .auto-style19 {
            height: 368px;
            width: 500px;
            text-align: left;
        }

        .auto-style21 {
            height: 272px;
            width: 308px;
            text-align: left;
        }

        .auto-style23 {
            height: 48px;
            width: 78px;
        }
        .auto-style24 {
            height: 48px;
            width: 308px;
            text-align: center;
        }
        .auto-style25 {
            height: 48px;
            width: 500px;
            text-align: left;
        }

        .auto-style26 {
            height: 48px;
            width: 362px;
        }

        .auto-style28 {
            height: 272px;
            width: 446px;
            text-align: left;
            margin: auto;
        }
        .auto-style30 {
            height: 368px;
            width: 446px;
            text-align: left;
        }
        .auto-style31 {
            height: 48px;
            width: 446px;
            text-align: left;
        }
        .auto-style32 {
            height: 368px;
            width: 362px;
            text-align: left;
        }
        .auto-style33 {
            height: 48px;
            width: 339px;
            text-align: left;
        }
        .auto-style34 {
            height: 368px;
            width: 339px;
            text-align: left;
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
  <ul class="nav nav-pills nav-justified">
    <li class="active" style="font-size: medium"><a href="index.aspx">Home</a></li>
    <li class="auto-style7"><a href="add_drawing.aspx"  onserverclick="login_ServerClick"> Add Drawing</a></li>
    <li class="auto-style7"><a href="ch-password.aspx">Change Password</a></li>
    <li class="auto-style7"><asp:linkbutton runat="server" OnClick="Logout_Click">Logout</asp:linkbutton></li>
  </ul>
</div>   </td>
            </tr>
            <tr> 
                <td class="auto-style6">  
                    
                    <table class="auto-style13">
                        <tr>
                            <td class="auto-style23"   border-top="thin solid";  border-color="black">
                                </td>
                            <td class="auto-style24" style="font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif; font-size: large; font-weight: normal;" >
                            </td>
                            <td class="auto-style33" style="font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif; font-size: large; font-weight: normal;" >
                                <H2><asp:Label ID="Label2" runat="server" Text="OPERATIONS DETAILS :"></asp:Label></H2>                            </td>
                            <td class="auto-style26" style="font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif; font-size: large; font-weight: normal;">
                                &nbsp;</td>
                            <td class="auto-style31" style="font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif; font-size: large; font-weight: normal;">
                                &nbsp;</td>
                            <td class="auto-style25" style="font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif; font-size: large; font-weight: normal;">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style16"   border-top="thin solid";  border-color="black">
                                &nbsp;</td>
                            <td class="auto-style17" style="font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif; font-size: large; font-weight: normal;" rowspan="1" >
                                <br />
                                <asp:Button ID="Button4" class="btn btn-primary btn-block" runat="server" Text="Next Operation" margin="auto" Width="200px" OnClick="Button4_Click" />
                                <br />
                                <asp:Button ID="Button2" class="btn btn-primary btn-block" runat="server" Text="Save Changes" Width="200px" />
                                <br />
                                <asp:Button ID="Button3" class="btn btn-primary btn-danger" runat="server" Text="Delete Operation"  Width="200px" />
                            </td>
                            <td class="auto-style34" style="font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif; font-size: large; font-weight: normal;" rowspan="1" >
                                &nbsp;<br />
                                OPERATION NO&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="TextBox1" runat="server" Width="200px" class="form-control"></asp:TextBox> 
                              
                                <br />
                                TOTAL OPERATION&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                                <asp:TextBox ID="TextBox2" runat="server" Width="200px" class="form-control"></asp:TextBox>
                                
                                <br />
                                TOOL NO&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="TextBox3" runat="server" Width="200px" class="form-control"></asp:TextBox>
                                
                                <br />
                                MANUFACTURED BY&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox4" runat="server" Width="200px" class="form-control"></asp:TextBox><br />
                            </td>
                            <td class="auto-style32" style="font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif; font-size: large; font-weight: normal;" rowspan="1">
                                <br />
                                WORKER NO&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox5" runat="server" Width="200px" class="form-control"></asp:TextBox>
                               
                                <br />
                                PIECES&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                                <asp:TextBox ID="TextBox6" runat="server" Width="200px" class="form-control"></asp:TextBox>
                                <br />
                                ENTRY DATE <asp:TextBox ID="TextBox7" runat="server" Width="200px" class="form-control"></asp:TextBox>
                               
                                <br />
                                REV DATE&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="TextBox8" runat="server" Width="200px" class="form-control"></asp:TextBox>
                                <br />
                            </td>
                            <td class="auto-style30" style="font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif; font-size: large; font-weight: normal;">
                                SET HOURS<asp:TextBox ID="TextBox10" runat="server" Width="200px" class="form-control"></asp:TextBox>
                                <br />
                                SET MINUTES<br />
                                <asp:TextBox ID="TextBox11" runat="server" Width="200px" class="form-control"></asp:TextBox>
                                <br />
                                OP HOURS<br />
                                <asp:TextBox ID="TextBox12" runat="server" Width="200px" class="form-control"></asp:TextBox>
                                <br />
                                OP MINUTES<br />
                                <asp:TextBox ID="TextBox13" runat="server" Width="200px" class="form-control"></asp:TextBox>
                            </td>
                            <td class="auto-style19" style="font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif; font-size: large; font-weight: normal;">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style9">&nbsp;</td>
                            <td class="auto-style21" style="font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif; font-size: large; font-weight: normal;">
                                &nbsp;</td>
                            <td class="auto-style15" style="font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif; font-size: large; font-weight: normal;" colspan="2">
                                OPERATION
                                DESCRIPTION    <br />
                                <asp:TextBox ID="TextBox9" runat="server" Width="643px" Height="243px" class="form-control" TextMode="DateTime"></asp:TextBox>
                                <br />
                                <br />
                            </td>
                            <td class="auto-style28" style="font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif; font-size: large; font-weight: normal;"> 
                                &nbsp;</td>
                            <td class="auto-style14" style="font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif; font-size: large; font-weight: normal;"> 
                                &nbsp;</td>
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
