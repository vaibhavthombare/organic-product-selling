<%@ Page Language="C#" AutoEventWireup="true" CodeFile="gridview.aspx.cs" Inherits="gridview" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
            DataFile="~/App_Data/organic.mdb" SelectCommand="SELECT * FROM [farmer]" 
            DeleteCommand="DELETE FROM [farmer] WHERE [fid] = ?" 
            InsertCommand="INSERT INTO [farmer] ([fid], [fname], [fadd], [mno]) VALUES (?, ?, ?, ?)" 
            UpdateCommand="UPDATE [farmer] SET [fname] = ?, [fadd] = ?, [mno] = ? WHERE [fid] = ?">
            <DeleteParameters>
                <asp:Parameter Name="fid" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="fid" Type="Int32" />
                <asp:Parameter Name="fname" Type="String" />
                <asp:Parameter Name="fadd" Type="String" />
                <asp:Parameter Name="mno" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="fname" Type="String" />
                <asp:Parameter Name="fadd" Type="String" />
                <asp:Parameter Name="mno" Type="String" />
                <asp:Parameter Name="fid" Type="Int32" />
            </UpdateParameters>
        </asp:AccessDataSource>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            CellPadding="4" DataKeyNames="fid" DataSourceID="AccessDataSource1" 
            ForeColor="#333333" GridLines="None" AllowPaging="True" 
            AllowSorting="True">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                    ShowSelectButton="True" />
                <asp:BoundField DataField="fid" HeaderText="fid" InsertVisible="False" 
                    ReadOnly="True" SortExpression="fid" />
                <asp:BoundField DataField="fname" HeaderText="fname" SortExpression="fname" />
                <asp:BoundField DataField="fadd" HeaderText="fadd" SortExpression="fadd" />
                <asp:BoundField DataField="mno" HeaderText="mno" SortExpression="mno" />
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
        </asp:GridView>
    
    </div>
</body>
</html>
    </form>

