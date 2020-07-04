<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShowData.aspx.cs" Inherits="FoodLabelBank.ShowData" %>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Food Label Bank</title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 270px;
        }
        .auto-style3 {
            margin-right: 0px;
            width: 412px;
        }
        .auto-style4 {
            margin-left: 0px;
        }
        .auto-style5 {
            width: 263px;
        }
        .auto-style6 {
            margin-right: 0px;
            width: 405px;
        }
        .auto-style7 {
            margin-right: 0px;
            width: 144px;
        }
    </style>
</head>
<body style="background-image: url('https://localhost:44394/imgfile/background_only.jpg')" class="auto-style8">
    <form id="form1" runat="server">
        <div>
            <table>
             <tr><td class="auto-style6">&nbsp;</td></tr>
             <tr><td class="auto-style6">&nbsp;</td></tr>
             <tr><td class="auto-style6">&nbsp;</td></tr>
             <tr><td class="auto-style6">&nbsp;</td></tr>
             <tr><td class="auto-style6">&nbsp;</td></tr>
             <tr><td class="auto-style6">&nbsp;</td></tr>
             <tr><td class="auto-style6">&nbsp;</td></tr>
            </table>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style7">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Go Back" Width="140px" />
                    </td>
                    <td class="auto-style2" style="font-family: Cambria; font-size: 27px; font-weight: bold; color: #FFFFFF; background-color: #800000;">Product Name:</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" Width="245px" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
             </table>
             <table>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style2" style="font-family: Cambria; font-size: 27px; font-weight: bold; color: #FFFFFF; background-color: #800000;">Product Category:</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" Width="245px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style2" style="font-family: Cambria; font-size: 27px; font-weight: bold; color: #FFFFFF; background-color: #800000;">Product SubCategory:</td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style4" Width="245px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style2" style="font-family: Cambria; font-size: 27px; font-weight: bold; color: #FFFFFF; background-color: #800000;">Product Label Image:</td>
                     <td class="auto-style3"><asp:GridView ID="gvProduct" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" OnRowDataBound="OnRowDataBound">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="ImagePath" HeaderText="Product Image" />
                        <asp:TemplateField>
                            <ItemTemplate>
                               <asp:Image ID="Image1" runat="server" Width="750px" Height="600px" /> 
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
                
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
