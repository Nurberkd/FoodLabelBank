<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminControl.aspx.cs" Inherits="FoodLabelBank.AdminControl" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Food Label Bank</title>
    <style type="text/css">
        .auto-style1 {
            width: 220px;
        }
        .auto-style2 {
            width: 430px;
        }
        .auto-style3 {
            width: 638px;
        }
        .auto-style4 {
            width: 282px;
        }
        .auto-style5 {
            width: 272px;
        }
        .auto-style6 {
            width: 71px;
        }
        .auto-style7 {
            width: 318px;
        }
    </style>
</head>
<body style="background-image: url('https://localhost:44394/imgfile/background_only.jpg')" class="auto-style8">
    <form id="form1" runat="server">
        <div>
            <asp:HiddenField  ID="hfProductID" runat="server" />
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
                        <td class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="Button4" runat="server" Text="Go Back!" Width="137px" OnClick="Button4_Click" />
                        </td>
                        <td class="auto-style5"> <asp:Label style="font-family: Cambria; font-size: 27px; font-weight: bold; color: #FFFFFF; background-color: #800000;" class="auto-style4" Text="Enter Label Name:" runat="server" /></td>
                        <td colspan="2" class="auto-style7">
                         <asp:TextBox ID="TextBox1" runat="server" Width="300px" />    
                        </td>
                        <td colspan="3">
                         <asp:Button ID="Button1" runat="server" Text="Search" OnClick="Button1_Click" Width="135px"  />
                        </td>

                    </tr>
                    <tr>
                        <td class="auto-style2">&nbsp;</td>
                        <td class="auto-style5"> <asp:Label style="font-family: Cambria; font-size: 27px; font-weight: bold; color: #FFFFFF; background-color: #800000;" class="auto-style4" Text="Select Categories :" runat="server" /></td>
                        <td colspan="2" class="auto-style7">
                     <asp:dropdownlist ID="ddlcategories" runat="server" Width="306px">
                         <asp:ListItem>Select Categories</asp:ListItem>
                         <asp:ListItem>Dairy</asp:ListItem>
                         <asp:ListItem>Fats and Oil</asp:ListItem>
                         <asp:ListItem>Staple Foods</asp:ListItem>
                         <asp:ListItem>Herbs and Spices</asp:ListItem>
                         <asp:ListItem>Confectionary and Snacks</asp:ListItem>
                         <asp:ListItem>Meat And Meat Products</asp:ListItem>
                         <asp:ListItem>Sugar and Sweeteners</asp:ListItem>
                         <asp:ListItem>Beverages</asp:ListItem>
                         <asp:ListItem>Olive</asp:ListItem>
                         <asp:ListItem>Bakery Products</asp:ListItem>
                     </asp:dropdownlist>  
                         </td>
                        <td class="auto-style6">&nbsp;</td>

                         
                    </tr>
                    <tr>
                        <td class="auto-style2">&nbsp;</td>
                        <td class="auto-style5"> <asp:Label style="font-family: Cambria; font-size: 27px; font-weight: bold; color: #FFFFFF; background-color: #800000;" class="auto-style4" Text="Select SubCategories :" runat="server" /></td>
                        <td colspan="2" class="auto-style7">
                     <asp:dropdownlist ID="ddlsubcategories" runat="server" Width="307px">
                         <asp:ListItem>Select SubCategories(Optional)</asp:ListItem>
                         <asp:ListItem>Milk</asp:ListItem>
                         <asp:ListItem>Cheese</asp:ListItem>
                         <asp:ListItem>Yoghurt</asp:ListItem>
                         <asp:ListItem>Ice-Cream</asp:ListItem>
                         <asp:ListItem>Butter</asp:ListItem>
                         <asp:ListItem>Margarin</asp:ListItem>
                         <asp:ListItem>Olive Oil</asp:ListItem>
                         <asp:ListItem>Sunflower Seed Oil</asp:ListItem>
                         <asp:ListItem>Legumes</asp:ListItem>
                         <asp:ListItem>Pasta</asp:ListItem>
                         <asp:ListItem>Cereals</asp:ListItem>
                         <asp:ListItem>Canned Foods</asp:ListItem>
                         <asp:ListItem>Flour</asp:ListItem>
                         <asp:ListItem>Sauces & Spreads</asp:ListItem>
                         <asp:ListItem>Salt</asp:ListItem>
                         <asp:ListItem>Spices</asp:ListItem>
                         <asp:ListItem>Mix of Spices</asp:ListItem>
                         <asp:ListItem>Chocolate</asp:ListItem>
                         <asp:ListItem>Wafers</asp:ListItem>
                         <asp:ListItem>Cakes</asp:ListItem>
                         <asp:ListItem>Biscuits</asp:ListItem>
                         <asp:ListItem>Chips</asp:ListItem>
                         <asp:ListItem>Crackers</asp:ListItem>
                         <asp:ListItem>Dried Nuts</asp:ListItem>
                         <asp:ListItem>Candies & Gums</asp:ListItem>
                         <asp:ListItem>Cream Chocalates&Spreads</asp:ListItem>
                         <asp:ListItem>Sugar</asp:ListItem>
                         <asp:ListItem>Honey</asp:ListItem>
                         <asp:ListItem>Sweeteners</asp:ListItem>
                         <asp:ListItem>Carbonated Beverages</asp:ListItem>
                         <asp:ListItem>Still Drinks</asp:ListItem>
                         <asp:ListItem>Tea</asp:ListItem>
                         <asp:ListItem>Coffee</asp:ListItem>
                   </asp:dropdownlist>  
                         </td>
                         <td colspan="3">
                            <asp:Button ID="Button3" runat="server" Text="Search" OnClick="Button3_Click" Width="131px"  />
                         </td>

                    </tr>
                    <tr>
                        <td></td>
                        <td><asp:Label style="font-family: Cambria; font-size: 27px; font-weight: bold; color: #FFFFFF; background-color: #800000;" class="auto-style4" Text="Upload Label Image:" runat="server" /></td>
                        <td class="auto-style7"><asp:FileUpload ID="FileUpload1" runat="server" Width="307px" Font-Bold="True" Font-Overline="False" ForeColor="Maroon" /></td>
                        <td></td>

                    </tr>
                    

                </table>
                <table>
                    <tr>
                        <td class="auto-style2">&nbsp;</td>
                        <td class="auto-style1">
                        <asp:Button ID="UploadButton" runat="server" Text="Upload" OnClick="UploadButton_Click" Width="242px"  /></td>
                        <td><asp:Button ID="DeleteButton" runat="server" Text="Delete" OnClick="DeleteButton_Click" Width="242px"  /></td>
                        <td><asp:Button ID="ClearButton" runat="server" Text="Clear" OnClick="ClearButton_Click" Width="240px"  /></td>
                        <td class="auto-style6">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2"></td>
                        <td colspan="2">
                            <asp:Label style="font-family: Cambria; font-size: 27px; font-weight: bold; color: #FFFFFF; background-color: #800000;" Text="" ID="lblSuccessMessage" runat="server" ForeColor="Green" />
                        </td>
                        <td class="auto-style6">&nbsp;</td>
                        <td class="auto-style6">&nbsp;</td>

                    </tr>
                    <tr>

                        <td class="auto-style2"></td>
                        <td colspan="2">
                            <asp:Label style="font-family: Cambria; font-size: 27px; font-weight: bold; color: #FFFFFF; background-color: #800000;" Text="" ID="lblErrorMessage" runat="server" ForeColor="Red" />
                        </td>
                        <td class="auto-style6">&nbsp;</td>
                        <td class="auto-style6">&nbsp;</td>
                        <td class="auto-style6">&nbsp;</td>
                    </tr></table>
                <table>                    <tr>
                        <td class="auto-style2">&nbsp;</td>
                        <td class="auto-style3"><asp:GridView ID="gvProduct" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="gvProduct_SelectedIndexChanged">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="productName" HeaderText="Product" />
                        <asp:BoundField DataField="productCat" HeaderText="Category" />
                        <asp:BoundField DataField="productSubCat" HeaderText="SubCategory" />
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:LinkButton Text="Select" ID="lnkSelect" CommandArgument='<%# Eval("productID") %>' runat="server" OnClick="gvProduct_SelectedIndexChanged" />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                    <SortedAscendingCellStyle BackColor="#FDF5AC" />
                    <SortedAscendingHeaderStyle BackColor="#4D0000" />
                    <SortedDescendingCellStyle BackColor="#FCF6C0" />
                    <SortedDescendingHeaderStyle BackColor="#820000" />
                </asp:GridView></td>
                        <td class="auto-style6">&nbsp;</td>
                        <td class="auto-style6">&nbsp;</td>
                        <td class="auto-style6">&nbsp;</td>


                    </tr></table>

                
        </div>
        
    </form>
</body>
</html>
