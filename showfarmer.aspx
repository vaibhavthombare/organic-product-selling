<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="showfarmer.aspx.cs" Inherits="showfarmer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
    DataFile="~/App_Data/organic.mdb" SelectCommand="SELECT * FROM [farmer]">
</asp:AccessDataSource>
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
    DataKeyNames="fid" DataSourceID="AccessDataSource1" CellPadding="4" 
    ForeColor="#333333" GridLines="None">
    <AlternatingRowStyle BackColor="White" />
    <Columns>
        <asp:BoundField DataField="fid" HeaderText="Sr.NO" InsertVisible="False" 
            ReadOnly="True" SortExpression="fid" />
        <asp:BoundField DataField="fname" HeaderText="Farmer Name" 
            SortExpression="fname" />
        <asp:BoundField DataField="fadd" HeaderText="Farmer address" 
            SortExpression="fadd" />
        <asp:BoundField DataField="mno" HeaderText="Farmer Mobile No" 
            SortExpression="mno" />
    </Columns>
    <EditRowStyle BackColor="#2461BF" />
    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
    <RowStyle BackColor="#EFF3FB" />
    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
    <SortedAscendingCellStyle BackColor="#F5F7FB" />
    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
    <SortedDescendingCellStyle BackColor="#E9EBEF" />
    <SortedDescendingHeaderStyle BackColor="#4870BE" />
</asp:GridView>
</asp:Content>

