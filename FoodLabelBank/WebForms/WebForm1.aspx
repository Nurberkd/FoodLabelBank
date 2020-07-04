<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="FoodLabelBank.WebForms.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        <tr>
            <td class="auto-style5"> <asp:Label style="font-family: Cambria; font-size: 27px; font-weight: bold; color: #FFFFFF; background-color: #800000;" class="auto-style4" Text="Enter Label Name:" runat="server" /></td>
                        <td colspan="2" class="auto-style7">
                         <asp:TextBox ID="TextBox1" runat="server" Width="300px" />    
                        </td>
                        <td colspan="3">
                         <asp:Button ID="Button1" runat="server" Text="Search" OnClick="Button1_Click" Width="135px"  />
                        </td>
        </tr>
            <tr>
            <td class="auto-style5"> </td>
                        <td colspan="2" class="auto-style7">
                        </td>
                        <td colspan="3">

                            <td class="auto-style7"><asp:FileUpload ID="FileUpload1" runat="server" Width="307px" Font-Bold="True" Font-Overline="False" ForeColor="Maroon" /></td>
                        </td>
                </tr>
        </div>
    </form>
</body>
</html>
