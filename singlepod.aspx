<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="singlepod.aspx.cs" Inherits="singlepod" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style1
    {
        width: 100%;
    }
    .style2
    {
        width: 1358px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
    <tr>
        <td class="style2">
            <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" 
                Font-Italic="False" Font-Underline="True" onclick="LinkButton1_Click">Go to back</asp:LinkButton>
        </td>
    </tr>
    <tr>
        <td align="center" class="style2">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DataList ID="DataList1" runat="server" BackColor="White" 
                BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
                DataSourceID="AccessDataSource1" GridLines="Both" 
                onselectedindexchanged="DataList1_SelectedIndexChanged" 
                HorizontalAlign="Center">
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                <ItemStyle ForeColor="#000066" />
                <ItemTemplate>
<br />
                    <table class="style1">
                        <tr>
                            <td align="center">
                                <asp:Image ID="Image1" runat="server" ForeColor="#FF5050" Height="250px" 
                                    ImageUrl='<%# Eval("photo") %>' Width="320px" />
                            </td>
                        </tr>
                        <tr>
                            <td align="center">
                                Product Name:<asp:Label ID="pnameLabel" runat="server" 
                                    Text='<%# Eval("pname") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td align="center">
                                &nbsp;Type:<asp:Label ID="typeLabel" runat="server" Text='<%# Eval("type") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td align="center">
                                &nbsp;Weight:<asp:Label ID="pwtLabel" runat="server" Text='<%# Eval("pwt") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Nutrution Value:<asp:Label ID="nvalLabel" runat="server" 
                                    Text='<%# Eval("nval") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Price:<asp:Label ID="prLabel" runat="server" Text='<%# Eval("pr") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                        </tr>
                    </table>
                    <br />
                </ItemTemplate>
                <SelectedItemStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            </asp:DataList>
            <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
                DataFile="~/App_Data/organic.mdb" 
                
                SelectCommand="SELECT product.pname, product.type, product.photo, productsp.pwt, productsp.pr, productsp.nval FROM (product INNER JOIN productsp ON product.pid = productsp.pid) WHERE (product.pid = ?)" 
                onselecting="AccessDataSource1_Selecting">
                <SelectParameters>
                    <asp:QueryStringParameter Name="?" QueryStringField="id" />
                </SelectParameters>
            </asp:AccessDataSource>
        </td>
    </tr>
    <tr>
        <td align="center" class="style2">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:ImageButton ID="ImageButton1" runat="server" ImageAlign="Middle" 
                ImageUrl="~/use images/images.jpg" onclick="ImageButton1_Click" Width="100px" />
            <asp:HiddenField ID="HiddenField1" runat="server" />
        </td>
    </tr>
</table>
</asp:Content>

