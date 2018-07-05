<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="Farmer.aspx.cs" Inherits="Farmer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style4
        {
        }
        .style5
        {
            width: 738px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="15" cellspacing="8" class="style1">
        <tr>
            <td align="center" colspan="2">
                
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Larger" 
                    Font-Underline="True" ForeColor="Black" Text="Farmers Information"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="right" class="style4">
                <asp:Label ID="Label2" runat="server" Text="Farmer Name:"></asp:Label>
            </td>
            <td class="style5">
                <asp:TextBox ID="Txtname" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right" class="style4">
                <asp:Label ID="Label3" runat="server" Text="Farmer Address:"></asp:Label>
            </td>
            <td class="style5">
                <asp:TextBox ID="Txtadd" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right" class="style4">
                <asp:Label ID="Label4" runat="server" Text="Farmer Mob.NO:"></asp:Label>
            </td>
            <td class="style5">
                <asp:TextBox ID="Txtmob" runat="server" MaxLength="10"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style4">
                <asp:Label ID="Label5" runat="server" Text="Label" Enabled="false"></asp:Label>
                <asp:Label ID="Label6" runat="server" Text="Label" Enabled="false" ForeColor="Blue"></asp:Label>
            </td>
            <td class="style5">
                &nbsp;&nbsp;
                <asp:Button ID="Btnupload" runat="server" Text="Upload" 
                    onclick="Btnupload_Click" />
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4" align="center">
                <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
                    DataFile="~/App_Data/organic.mdb" SelectCommand="SELECT * FROM [farmer]">
                </asp:AccessDataSource>
            </td>
            <td class="style5" align="center">
                        <asp:Button ID="Btnfarmerupdate" runat="server" BackColor="#CCCCCC" Font-Bold="True" 
                            onclick="Button1_Click" Text="Farmer update" Width="156px" />
                        <asp:Button ID="Button1" runat="server" Font-Bold="True" 
                            onclick="Button1_Click1" Text="Farmer Delete" />
            </td>
        </tr>
        <tr>
            <td class="style4" colspan="2">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px"  
                    CellPadding="2" DataKeyNames="fid" DataSourceID="AccessDataSource1" 
                    ForeColor="Black" GridLines="None" AllowPaging="True" 
                    onselectedindexchanged="GridView1_SelectedIndexChanged">
                    <AlternatingRowStyle BackColor="PaleGoldenrod" />
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="fid" HeaderText="fid" InsertVisible="False" 
                            ReadOnly="True" SortExpression="fid" />
                        <asp:BoundField DataField="fname" HeaderText="fname" SortExpression="fname" />
                        <asp:BoundField DataField="fadd" HeaderText="fadd" SortExpression="fadd" />
                        <asp:BoundField DataField="mno" HeaderText="mno" SortExpression="mno" />
                    </Columns>
                    <FooterStyle BackColor="Tan" />
                    <HeaderStyle BackColor="Tan" Font-Bold="True" />
                    <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
                        HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                    <SortedAscendingCellStyle BackColor="#FAFAE7" />
                    <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                    <SortedDescendingCellStyle BackColor="#E1DB9C" />
                    <SortedDescendingHeaderStyle BackColor="#C2A47B" />
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>

