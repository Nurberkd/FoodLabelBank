<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="FoodLabelBank.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:HiddenField ID="hfProductID" runat="server" />
         <table class="auto-style1">
             <tr>
                 <td>Product Name</td>
                 <td>
                     <asp:TextBox ID="TextBox1" runat="server">

                     </asp:TextBox>
                 </td>
             </tr>

              <tr>
                 <td>Product Category</td>
                 <td>
                     <asp:dropdownlist ID="ddlcategories" runat="server">
                         <asp:ListItem>Select</asp:ListItem>
                         <asp:ListItem>Dairy</asp:ListItem>
                         <asp:ListItem>Confectionary</asp:ListItem>
                         <asp:ListItem>Bakery</asp:ListItem>
                         <asp:ListItem>Beverages</asp:ListItem>
                         <asp:ListItem>Legumes</asp:ListItem>
                         <asp:ListItem></asp:ListItem>

                     </asp:dropdownlist>


                    
                 </td>
             </tr>

              <tr>
                 <td>
                   <asp:Button ID="Button1" runat="server" Text="UPLOAD LABEL"  />
                 </td>
             </tr>
            </table>
        </div>
    </form>
</body>
</html>
