<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="FoodLabelBank.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:HiddenField ID="hfUserID" runat="server" />
         <table class="auto-style1">
             <tr>
                 <td>Name </td>
                 <td>
                     <asp:TextBox ID="TextBox1" runat="server">

                     </asp:TextBox>
                 </td>
             </tr>
             <tr>
                <td>Surname</td>
                 <td>
                     <asp:TextBox ID="TextBox2" runat="server">

                     </asp:TextBox>
                 </td>
             </tr>
             <tr>
                <td>Email</td>
                 <td>
                     <asp:TextBox ID="TextBox3" runat="server">

                     </asp:TextBox>
                 </td>
             </tr>
<tr>
                <td>User Name</td>
                 <td>
                     <asp:TextBox ID="TextBox4" runat="server">

                     </asp:TextBox>
                 </td>
             </tr>
             <tr>
                <td>Password</td>
                 <td>
                     <asp:TextBox ID="TextBox5" runat="server">

                     </asp:TextBox>
                 </td>
             </tr>
             <tr>
                 <td>
                   <asp:Button ID="Button1" runat="server" Text="SIGN UP"  />
                 </td>
             </tr>
         </table>
        </div>
    </form>
</body>
</html>
