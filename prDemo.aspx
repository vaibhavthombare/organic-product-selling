<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="prDemo.aspx.cs" Inherits="prDemo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style1
    {
        width: 100%;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <%--<table class="style1">
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
                DataFile="~/App_Data/organic.mdb" 
                
                SelectCommand="SELECT pname, type, photo, pid FROM product WHERE (type = 'Grains and Nuts')">
            </asp:AccessDataSource>
            <asp:DataList ID="DataList1" runat="server" DataSourceID="AccessDataSource1" 
                RepeatColumns="3" DataKeyField="pid" 
                onitemcommand="DataList1_ItemCommand1" ClientIDMode="Predictable" 
                Font-Bold="False" Font-Italic="False" Font-Overline="False" 
                Font-Strikeout="False" Font-Underline="False" ForeColor="Blue" 
                HorizontalAlign="Center">
                <ItemStyle BorderColor="#FF99CC" />
                <ItemTemplate>
                    &nbsp;<asp:Label ID="pidLabel" runat="server" Text='<%# Eval("pid") %>' 
                        Visible="False" />
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
                                &nbsp;</td>
                        </tr>
                    </table>
                    <br />
                    <br />
                </ItemTemplate>
            </asp:DataList>
        </td>
        <td>
            &nbsp;</td>
    </tr>
</table>--%>
</asp:Content>

