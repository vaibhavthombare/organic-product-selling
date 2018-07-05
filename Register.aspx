<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            height: 79px;
        }
        .style2
        {
            height: 94px;
        }
        .style3
        {
            height: 49px;
        }
        .style4
        {
            height: 49px;
            width: 31px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">



    <table cellpadding="15" cellspacing="15" class="style1">
          <tr>
              <td colspan="8" align="center"
                  style="font-family: Arial, Helvetica, sans-serif" bgcolor="#6666FF">
                  User Registration</td>
          </tr>
          <tr>
              <td align="center">
                  <asp:Label ID="Label1" runat="server" Text="Name:" Font-Bold="True"></asp:Label>
              </td>
              <td align="left" valign="bottom" colspan="7">
                  <asp:TextBox ID="Txtrlastname" runat="server"></asp:TextBox>

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ErrorMessage="Plese Enter the user name"
                  ForeColor="Red" ControlToValidate="Txtrlastname" Text="*"></asp:RequiredFieldValidator>
                  <asp:TextBox ID="Txtfirname" runat="server"></asp:TextBox>

                   <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ErrorMessage="Plese Enter the first name "
                  ForeColor="Red" ControlToValidate="Txtfirname" Text="*"></asp:RequiredFieldValidator>

                  <asp:TextBox ID="Txtmidname" runat="server"></asp:TextBox>

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ErrorMessage="Plese Enter the  middle name"
                  ForeColor="Red" ControlToValidate="Txtmidname" Text="*"></asp:RequiredFieldValidator>
                  <br />
                  <asp:Label ID="Label12" runat="server" Text="(Last name)" Font-Bold="True" 
                      Font-Size="Smaller"></asp:Label>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <asp:Label ID="Label14" runat="server" Font-Bold="True" Font-Size="Smaller" 
                      Text="(first name)"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <asp:Label ID="Label13" runat="server" Font-Bold="True" Font-Size="Smaller" 
                      Text="(middle name)"></asp:Label>
              </td>
          </tr>
          <tr>
              <td align="center">
                  <asp:Label ID="lbllogin" runat="server" Text="Log In Name:"></asp:Label>
              </td>
              <td align="left" valign="bottom" colspan="7">
                  <asp:TextBox ID="Txtlogin" runat="server"></asp:TextBox>
                  <asp:Label ID="Label15" runat="server" Text="Label"></asp:Label>
              </td>
          </tr>
          <tr>
              <td align="center" class="style3">
                  <asp:Label ID="Label2" runat="server" Text="Address:" Font-Bold="True"></asp:Label>
              </td>
              <td align="left" class="style3">
                  <asp:TextBox ID="Txtraddress" runat="server" TextMode="MultiLine"></asp:TextBox>
              &nbsp;&nbsp;
                  &nbsp;&nbsp;&nbsp;&nbsp;
                  </td>   
<td align="left" class="style3">
                  <asp:Label ID="Label4" runat="server" Text="State:" Font-Bold="True"></asp:Label>
              </td>
                  <td align="left" class="style3">
                  <asp:DropDownList ID="Dropstate" runat="server" 
                          onselectedindexchanged="Dropstate_SelectedIndexChanged">
                  </asp:DropDownList>
              </td>
                             
              <td align="left" class="style4">
                  <asp:Label ID="Label3" runat="server" Text="City:" Font-Bold="True"></asp:Label>
              </td>
              <td align="left" class="style3">
                  <asp:DropDownList ID="Dropcity" runat="server" 
                      onselectedindexchanged="Dropcity_SelectedIndexChanged">
                  </asp:DropDownList>
              </td>
              
              <td align="left" class="style3">
                  <asp:Label ID="Label5" runat="server" Text="Pin code:" Font-Bold="True"></asp:Label>
              </td>
              <td align="left" class="style3">
                  <asp:TextBox ID="Txtpin" runat="server"></asp:TextBox>
              </td>
          </tr>
          <tr>
              <td align="center">
                  <asp:Label ID="Label7" runat="server" Text="Date of Birth:" Font-Bold="True"></asp:Label>
              </td>
              <td align="left" colspan="7">
                  <asp:TextBox ID="Txtdob" runat="server"></asp:TextBox>
              </td>
          </tr>
          <tr>
              <td align="center">
                  <asp:Label ID="Label8" runat="server" Text="E Mail:" Font-Bold="True"></asp:Label>
              </td>
              <td align="left" colspan="7">
                  <asp:TextBox ID="Txtmail" runat="server" 
                      ontextchanged="TextBox10_TextChanged"></asp:TextBox>
                  <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                      ControlToValidate="Txtmail" ErrorMessage="Invalid Email" ForeColor="Red"
                      ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
              </td>
                
          </tr>
          <tr>
              <td align="center">
                  <asp:Label ID="Label9" runat="server" Text="Phone No:" Font-Bold="True"></asp:Label>
              </td>
              <td align="left" colspan="7">
                  <asp:TextBox ID="Txtphon" runat="server" MaxLength="10" TextMode= "SingleLine"></asp:TextBox>
              &nbsp;</td>
          </tr>
          <tr>
              <td align="right" class="style2">
                  <asp:Label ID="Label10" runat="server" Text="Set Password:" 
                      Font-Bold="True"></asp:Label>
              </td>
              <td align="left" class="style2" colspan="7">
                  <asp:TextBox ID="Txtpassword" runat="server" TextMode="Password"></asp:TextBox>
              </td>
          </tr>
          <tr>
              <td align="right">
                  <asp:Label ID="Label11" runat="server" Text="Confirm Password:" 
                      Font-Bold="True"></asp:Label>
              </td>
              <td align="left" colspan="7">
                  <asp:TextBox ID="Txtrepassword" runat="server" TextMode="Password"></asp:TextBox> 


                  <asp:CompareValidator ID="comapare" runat="server" 
                      ErrorMessage="password and confirm password must match" ControlToValidate="Txtrepassword" ControlToCompare="Txtpassword"
                      Operator="Equal" Type="String" ForeColor="Red"></asp:CompareValidator>




              </td>
                    <%--<asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="password and confirm password must match" ControlToValidate="Txtrepassword" ControlToCompare="Txtrepassword" Operator="Equal" Type="String" ></asp:CompareValidator>--%>
          </tr>
          <tr>
              <td align="right">
                  &nbsp;</td>
              <td align="center" colspan="7">
                  <asp:Button ID="Btnregister" runat="server" Text="Register" onclick="Btnregister_Click" 
                      />
                  <asp:Button ID="Button1" runat="server" Text="Button" onclick="Button1_Click" />
                  <asp:Button ID="Btnregisterreset" runat="server" Text="Reset" 
                      onclick="Btnregisterreset_Click" />
              </td>
          </tr>
      </table>

</asp:Content>

