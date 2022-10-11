<%@ Page Title="" Language="C#"  AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="txm_tech.login" %>

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
            height: 60px; background-color: #333333; width: 1612px;  text-align: center;
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
            height: 65px;
            width: 78px;
            text-align: center;
            background-color: #333399
        }
        .auto-style13 {
            width: 100%;
            height: 550px;
        }
        .auto-style14 {
            height: 65px;
            width: 349px;
            text-align: left;
        }
        .auto-style15 {
            height: 65px;
            text-align: center;
        }
        .auto-style16 {
            height: 394px;
            width: 78px;
            background-color: #333399
        }
        .auto-style17 {
            height: 394px;
            width: 226px;
            text-align: center;
            background-color: #333399
        }
        .auto-style18 {
            height: 394px;
            width: 518px;
            text-align: left;
        }
        .auto-style19 {
            position: relative;
            left: 120px;
            top: -57px;
            width: 349px;
            height: 394px;
        }

        .auto-style20 {
            height: 394px;
            width: 370px;
            text-align: right;
        }
        .auto-style21 {
            height: 65px;
            text-align: left;
            width: 226px;
            background-color: #333399
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
                                </td>
                            <td class="auto-style17" style="font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif; font-size: large; font-weight: normal;" rowspan="1" >
                                <br />
                                <div class="text-justify">
                                <br />
                                </div>
                                <div class="text-justify">
                                <br />
                                </div>
                                <div class="text-justify">
                                <br />
                                </div>
                            </td>
                            <td class="auto-style20" style="font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif; font-size: large; font-weight: normal;" rowspan="1" >
                                <br />
                                &nbsp;<br />
                                EMAIL&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                                <br />
                                <br />
                                <br />
                                PASSWORD&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <br />
                                <br />
                                <br />
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />
                                <br />
                                &nbsp;<br />
                                <br />
                            </td>
                            <td class="auto-style18" style="font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif; font-size: large; font-weight: normal;" rowspan="1">
                                <asp:TextBox ID="TextBox1" runat="server" Width="250px" class="form-control"></asp:TextBox>
                               
                                <br />
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; 
                                <asp:TextBox ID="TextBox2" runat="server" Width="250px" class="form-control" TextMode="Password"></asp:TextBox>
                                <br />
                                <br />
                                <asp:Button ID="Button1" runat="server" Text="Button" class="btn btn-primary btn-block" Width="200px" OnClick="Button1_Click"  />
                               
                                <br />
                            </td>
                            <td class="auto-style19" style="font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif; font-size: large; font-weight: normal;">
                              <br /><br /><br /><br /><br />
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style9"></td>
                            <td class="auto-style21" style="font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif; font-size: large; font-weight: normal;">
                                </td>
                            <td class="auto-style15" style="font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif; font-size: large; font-weight: normal;" colspan="2">
                                <asp:Label ID="Label" runat="server"></asp:Label>
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

