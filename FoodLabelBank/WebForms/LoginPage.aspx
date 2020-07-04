<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="FoodLabelBank.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Food Label Bank</title>
    <style type="text/css">
        .auto-style2 {
            height: 25px;
            width: 302px;
        }
        .auto-style3 {
            height: 53px;
            width: 136px;
        }
        .auto-style4 {
            height: 15px;
            width: 302px;
        }
        .auto-style5 {
            height: 25px;
            width: 136px;
        }
        .auto-style6 {
            height: 15px;
            width: 136px;
        }
        .auto-style8 {
            height: 654px;
            margin-top: 0px;
        }
        
        .auto-style9 {
            width: 100%;
        }
        
        .auto-style10 {
            width: 604px;
        }
        .auto-style11 {
            width: 302px;
        }
        
        .auto-style12 {
            width: 136px;
        }
        
        .auto-style14 {
            width: 1085px;
            height: 148px;
        }
        .auto-style15 {
            height: 148px;
        }
        
        .auto-style16 {
            height: 148px;
            width: 605px;
        }
        
    </style>
</head>
<body style="background-image: url('https://localhost:44394/imgfile/background_only.jpg')" class="auto-style8">
    <form id="form1" runat="server">
        <div style="margin-left: auto;margin-right: auto;">>            
            <table class="auto-style9">
                  <tr>
                     <td>&nbsp;</td>
                     <td>
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                         <asp:Image ID="Image1" runat="server" Height="235px" ImageUrl="~/imgfile/logo.png" Width="235px" />
                     </td>

                     <td>&nbsp;</td>
                 </tr>
            </table> 
            <table class="auto-style9">
                 <tr>
                     <td class="auto-style10"></td>
                     <td class="auto-style5" style="font-family: Cambria; font-size: 27px; font-weight: bold; color: #FFFFFF; background-color: #800000;">Username</td>
                     <td class="auto-style2"><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
                     <td></td>
                 </tr>
                 <tr>
                     <td class="auto-style10"></td>
                     <td class="auto-style6" style="font-family: Cambria; font-size: 27px; font-weight: bold; color: #FFFFFF; background-color: #800000;">Password</td>
                     <td class="auto-style4">
                     <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" ></asp:TextBox>
                     </td>
                     <td></td>
                 </tr>
                 <tr>
                     <td class="auto-style10"></td>
                     <td class="auto-style3">
                   <asp:Button ID="Button1" runat="server" Text="LOGIN" OnClick="Button1_Click" Height="29px" Width="117px"  />
                     </td>
                     <td class="auto-style11"><asp:Button ID="Button2" runat="server" Text="SIGN UP" OnClick="Button2_Click" Height="29px" Width="117px"  /></td>
                     <td></td>
                 </tr>
                 <tr>
                     <td class="auto-style10"></td>
                     <td class="auto-style12">&nbsp;</td>
                     <td class="auto-style11"><asp:Label Text="" ID="lblSuccessMessage" runat="server" ForeColor="Green" /></td>
                     <td></td>
                 </tr>
              </table>
              <table>     
                 <tr>
                     <td class="auto-style16"></td>
                     <td class="auto-style14"><asp:Label Text="" ID="lblErrorMessage" runat="server" style="font-family: Cambria; font-size: 20px; font-weight: bold; color: #FFFFFF; background-color: #800000;" /> 
                     <td class="auto-style15"></td>
                 </tr>
             </table>
            
        </div>
    </form>
</body>
</html>
