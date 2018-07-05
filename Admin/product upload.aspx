<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="product upload.aspx.cs" Inherits="product_upload" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style5
        {
            width: 1116px;
        }
        .style7
        {
            height: 54px;
        }
        .style8
        {
            width: 1116px;
            height: 54px;
        }
        .style9
        {
            height: 53px;
        }
        .style10
        {
            width: 1116px;
            height: 53px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


 <table cellpadding="15" cellspacing="5" class="style1">
                <tr>
                    <td align="center" colspan="2">
                        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Larger" 
                            Text="Product Details"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style2" colspan="2">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td align="right" class="style3">
                        <asp:Label ID="Label2" runat="server" Text="Product Name:" Font-Size="Medium"></asp:Label>
                    </td>
                    <td class="style5">
                        <asp:TextBox ID="Txtname" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style3" align="right">
                        <asp:Label ID="Label3" runat="server" Text=" product Type:"></asp:Label>
                    </td>
                    <td class="style5">
                        <asp:DropDownList ID="Dropptype" runat="server">
                            <asp:ListItem Value="0">Select</asp:ListItem>
                            <asp:ListItem Value="Process Food">Process Food</asp:ListItem>
                            <asp:ListItem Value="Grains and Nuts">Grains and Nuts</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="style3" align="right">
                        <asp:Label ID="Label4" runat="server" Text=" product Weight:"></asp:Label>
                    </td>
                    <td class="style5">
                        <asp:TextBox ID="Txtweight" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style9" align="right">
                        <asp:Label ID="Label5" runat="server" Text=" product Price:"></asp:Label>
                    </td>
                    <td class="style10">
                        <asp:TextBox ID="Txtprice" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style3" align="right">
                        <asp:Label ID="Label6" runat="server" Text=" product Nutrition Value :"></asp:Label>
                    </td>
                    <td class="style5">
                        <asp:TextBox ID="Txtnvalue" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style3" align="center">
                        <asp:Label ID="Label7" runat="server" Text="Photo:"></asp:Label>
                    </td>
                    <td class="style3" align="left">
                        <asp:FileUpload ID="photoup" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td class="style7">
                        </td>
                    <td class="style8" align="center">
                        <asp:Button ID="BtnNew" runat="server" Font-Bold="True" Text="New "  Enabled="true"/>
                        <asp:Button ID="Btnupload" runat="server" Font-Bold="True" Text="Upload" 
                            onclick="Btnupload_Click" 
                            onclientclick="alert('You are about submit this page');" />
                        <asp:Button ID="Btnreset" runat="server" Font-Bold="True" Text="Reset" />
                    </td>
                </tr>
                <tr>
                    <td class="style3" align="center">
                        <asp:Label ID="lblmsg" runat="server" Text="Label"></asp:Label>
                        <asp:Label ID="lblmsg1" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td class="style5" align="center">
                        <asp:Button ID="Btnfarmerupdate" runat="server" BackColor="#CCCCCC" Font-Bold="True" 
                            onclick="Button1_Click" Text="product update " 
                            onclientclick="alert('You are about update the farmer info  this page');" />
                        <asp:Button ID="Btnfarmerdelete" runat="server" BackColor="#CCCCCC" Font-Bold="True" 
                            Text="product Delete" onclick="Btndelete_Click" Width="141px" />
                    </td>
                </tr>
                <tr>
                    <td class="style3">
                        &nbsp;</td>
                    <td class="style5">
                        <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
                            DataFile="~/App_Data/organic.mdb" 
                            SelectCommand="SELECT product.pid, product.pname, product.type, product.photo, productsp.psno, productsp.pwt, productsp.pr, productsp.nval FROM (product INNER JOIN productsp ON product.pid = productsp.pid)">
                        </asp:AccessDataSource>
                        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                            AutoGenerateColumns="False" DataSourceID="AccessDataSource1" 
                            onselectedindexchanged="GridView1_SelectedIndexChanged">
                            <Columns>
                                <asp:CommandField ShowSelectButton="True" />
                                <asp:BoundField DataField="pid" HeaderText="pid" InsertVisible="False" 
                                    SortExpression="pid" />
                                <asp:BoundField DataField="pname" HeaderText="product Name:" 
                                    SortExpression="pname" />
                                <asp:BoundField DataField="type" HeaderText="type" SortExpression="type" />
                                <asp:TemplateField HeaderText="photo" SortExpression="photo">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("photo") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Image ID="Image1" runat="server" Height="120px" 
                                            ImageUrl='<%# Eval("photo") %>' Width="100px" />
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:BoundField DataField="psno" HeaderText="psno" InsertVisible="False" 
                                    SortExpression="psno" />
                                <asp:BoundField DataField="pwt" HeaderText="Weight" SortExpression="pwt" />
                                <asp:BoundField DataField="pr" HeaderText="pr" SortExpression="pr" />
                                <asp:BoundField DataField="nval" HeaderText="nval" SortExpression="nval" />
                            </Columns>
                        </asp:GridView>
                    </td>
                </tr>
                <tr>
                    <td class="style3">
                        &nbsp;</td>
                    <td class="style5">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style3">
                        &nbsp;</td>
                    <td class="style5">
                        &nbsp;</td>
                </tr>
            </table>
        
</asp:Content>

