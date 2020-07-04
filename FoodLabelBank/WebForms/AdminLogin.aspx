<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="FoodLabelBank.AdminLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Administrator Login</title>
    <style type="text/css">
        .auto-style2 {
            width: 24px;
        }
        .auto-style4 {
            width: 31px;
        }
        .auto-style5 {
            width: 35px;
        }
        .auto-style6 {
            width: 39px;
        }
        .auto-style8 {
            width: 47px;
        }
        .auto-style9 {
            width: 604px;
        }
        .auto-style10 {
            width: 1723px;
        }
        .auto-style11 {
            width: 152px;
        }
        .auto-style12 {
            width: 370px;
        }
        .auto-style13 {
            margin-left: 4px;
        }
        .auto-style14 {
            width: 598px;
        }
    </style>
</head>
<body style="background-image: url('https://localhost:44394/imgfile/background_only.jpg')" class="auto-style8">
    <form id="form1" runat="server">
        <div class="auto-style10">
            <table>
             <tr><td class="auto-style6">&nbsp;</td></tr>
             <tr><td class="auto-style6">&nbsp;</td></tr>
             <tr><td class="auto-style6">&nbsp;</td></tr>
             <tr><td class="auto-style6">&nbsp;</td></tr>
             <tr><td class="auto-style6">&nbsp;</td></tr>
             <tr><td class="auto-style6">&nbsp;</td></tr>
             <tr><td class="auto-style6">&nbsp;</td></tr>
             </table>
            <table>
             <tr>
                 <td class="auto-style9"></td>
                 <td class="auto-style5" style="font-family: Cambria; font-size: 27px; font-weight: bold; color: #FFFFFF; background-color: #800000;">Username</td>
                 <td class="auto-style2"><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
                 <td></td>
             </tr>

                 <tr>
                 <td class="auto-style9"></td>
                 <td class="auto-style6" style="font-family: Cambria; font-size: 27px; font-weight: bold; color: #FFFFFF; background-color: #800000;">Password</td>
                 <td class="auto-style4">
                     <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" ></asp:TextBox>
                 </td>
                 <td></td>
             </tr>
                </table>
                <table>
             <tr>
                 <td class="auto-style14"></td>
                 <td class="auto-style12"> <asp:Button ID="Button1" runat="server" Text="LOGIN" OnClick="Button1_Click" Height="29px" Width="295px" CssClass="auto-style13"  /></td>
                 <td class="auto-style11"></td>
             </tr>
             <tr>
                 <td class="auto-style14"></td>
                 <td class="auto-style12"> <asp:Button ID="GoBackButton" runat="server" Text="GO BACK!" OnClick="Button2_Click" Height="29px" Width="295px" CssClass="auto-style13"  /></td>
                 <td class="auto-style11"></td>
             </tr>
             <tr>
                 <td class="auto-style14"></td>
                 <td class="auto-style12"><asp:Label Text="" ID="lblErrorMessage" runat="server" style="font-family: Cambria; font-size: 20px; font-weight: bold; color: #FFFFFF; background-color: #800000;" />
                     </td>
                 <td class="auto-style11"></td>
             </tr>

                 </table>
        </div>
    </form>
</body>
</html>
