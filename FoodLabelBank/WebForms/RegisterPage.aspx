<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegisterPage.aspx.cs" Inherits="FoodLabelBank.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Food Label Bank</title>
    <style type="text/css">
        .auto-style1 {
            height: 33px;
            width: 431px;
        }
        .auto-style2 {
            height: 33px;
            width: 1791px;
        }
        .auto-style4 {
            width: 218px;
        }
        .auto-style5 {
            width: 431px;
        }
        .auto-style6 {
            width: 582px;
        }
    </style>
</head>
<body style="background-image: url('https://localhost:44394/imgfile/background_only.jpg')" class="auto-style8">
    <form id="form1" runat="server">
        <div style="margin-left: auto;margin-right: auto;">
    
         <table class="auto-style2">
             <asp:HiddenField ID="hfUserID" runat="server" OnValueChanged="hfUserID_ValueChanged" />
             
             <tr><td class="auto-style6">&nbsp;</td></tr>
             <tr><td class="auto-style6">&nbsp;</td></tr>
             <tr><td class="auto-style6">&nbsp;</td></tr>
             <tr><td class="auto-style6">&nbsp;</td></tr>
             <tr><td class="auto-style6">&nbsp;</td></tr>
             <tr><td class="auto-style6">&nbsp;</td></tr>
             <tr><td class="auto-style6">&nbsp;</td></tr>
             <tr>
                 <td class="auto-style6">&nbsp;</td>
                 <td style="font-family: Cambria; font-size: 27px; font-weight: bold; color: #FFFFFF; background-color: #800000;" class="auto-style4">Name - Surname </td>
                 <td class="auto-style5">
                     <asp:TextBox ID="TextBox1" runat="server">

                     </asp:TextBox>
                 </td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style6">&nbsp;</td>
                <td style="font-family: Cambria; font-size: 27px; font-weight: bold; color: #FFFFFF; background-color: #800000;" class="auto-style4">Email</td>
                 <td class="auto-style5">
                     <asp:TextBox ID="TextBox2" runat="server" TextMode="Email"></asp:TextBox>
                 </td>
                 <td>&nbsp;</td>
             </tr>
              <tr>
                  <td class="auto-style6">&nbsp;</td>
                <td style="font-family: Cambria; font-size: 27px; font-weight: bold; color: #FFFFFF; background-color: #800000;" class="auto-style4">User Name</td>
                 <td class="auto-style5">
                     <asp:TextBox ID="TextBox3" runat="server">

                     </asp:TextBox>
                 </td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                <td class="auto-style6">&nbsp;</td>
                <td style="font-family: Cambria; font-size: 27px; font-weight: bold; color: #FFFFFF; background-color: #800000;" class="auto-style4">Password</td>
                 <td class="auto-style5">
                     <asp:TextBox ID="TextBox4" runat="server" OnTextChanged="TextBox4_TextChanged" TextMode="Password"></asp:TextBox>
                 </td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style6">&nbsp;</td>
                 <td class="auto-style4"><asp:Label Text="" ID="lblErrorMessage" runat="server" ForeColor="Red" /></td>
                 <td class="auto-style1">
                   <asp:Button ID="Button1" runat="server" Text="SIGN UP" OnClick="Button1_Click"  />
                 </td>
                 <td>&nbsp;</td>
             </tr>
         </table>








        </div>
    </form>
</body>
</html>
