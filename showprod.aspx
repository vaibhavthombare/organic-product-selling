<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="showprod.aspx.cs" Inherits="showprod" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style1
    {
        width: 100%;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
    <tr>
        <td align="right">
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            <asp:DataList ID="DataList1" runat="server" DataKeyField="pid" 
                DataSourceID="AccessDataSource1" RepeatColumns="3" 
                onitemcommand="DataList1_ItemCommand" 
                onselectedindexchanged="DataList1_SelectedIndexChanged">
                <ItemTemplate>
                    <table class="style1">
                        <tr>
                            <td>
                                <asp:Label ID="pidLabel" runat="server" Text='<%# Eval("pid") %>' 
                                    Visible="False" />
                            </td>
                        </tr>
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
                            <td height="100" align="center">
                                <asp:ImageButton ID="ImageButton1" runat="server" 
                                    ImageUrl='<%# Eval("photo") %>' Width="150px" 
                                    onclick="ImageButton1_Click" Height="100px" />
                            </td>
                        </tr>
                    </table>
                    <br />
                </ItemTemplate>
            </asp:DataList>
            <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
                DataFile="~/App_Data/organic.mdb" 
                DeleteCommand="DELETE FROM [product] WHERE [pid] = ?" 
                InsertCommand="INSERT INTO [product] ([pid], [pname], [type], [photo]) VALUES (?, ?, ?, ?)" 
                SelectCommand="SELECT * FROM [product]" 
                UpdateCommand="UPDATE [product] SET [pname] = ?, [type] = ?, [photo] = ? WHERE [pid] = ?">
                <DeleteParameters>
                    <asp:Parameter Name="pid" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="pid" Type="Int32" />
                    <asp:Parameter Name="pname" Type="String" />
                    <asp:Parameter Name="type" Type="String" />
                    <asp:Parameter Name="photo" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="pname" Type="String" />
                    <asp:Parameter Name="type" Type="String" />
                    <asp:Parameter Name="photo" Type="String" />
                    <asp:Parameter Name="pid" Type="Int32" />
                </UpdateParameters>
            </asp:AccessDataSource>
        </td>
    </tr>
    <tr>
        <td align="center">
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

