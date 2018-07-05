<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="process.aspx.cs" Inherits="process" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <%--  <table class="style1">
        <tr>
            <td>
                <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
                    DataFile="~/App_Data/organic.mdb" 
                    SelectCommand="SELECT pid, pname, type, photo FROM product WHERE (type = 'process food')">
                </asp:AccessDataSource>
                <asp:DataList ID="DataList1" runat="server" CellPadding="4" DataKeyField="pid" 
                    DataSourceID="AccessDataSource1" Font-Bold="False" Font-Italic="False" 
                    Font-Overline="False" Font-Strikeout="False" Font-Underline="False" 
                    ForeColor="#333333" HorizontalAlign="Left" 
                    onitemcommand="DataList1_ItemCommand1" RepeatColumns="3">
                    <AlternatingItemStyle BackColor="White" />
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <ItemStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    <ItemTemplate>
                        <br />
                        <table class="style1">
                            <tr>
                                <td>
                                    <asp:Label ID="pnameLabel" runat="server" Text='<%# Eval("pname") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="typeLabel" runat="server" Text='<%# Eval("type") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:ImageButton ID="ImageButton1" runat="server" Height="180px" 
                                        ImageUrl='<%# Eval("photo") %>' Width="200px" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="pidLabel" runat="server" Text='<%# Eval("pid") %>' 
                                        Visible="False" />
                                </td>
                            </tr>
                        </table>
                        <br />
                    </ItemTemplate>
                    <SelectedItemStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                </asp:DataList>
            </td>
        </tr>
    </table>--%>--%>
</asp:Content>

