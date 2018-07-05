using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
public partial class Log_in : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label4.Visible = false;


    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (Autheticate(Txtusername.Text, Txtpassword.Text))
        {
            
            //FormsAuthentication.RedirectFromLoginPage("Gallery.aspx", false);
            Session["username"] = Txtusername.Text;

          
            
            Response.Redirect("~/showprod.aspx");

        }
        else
        {

            Label4.Text = "invalid username or password";



        }
        Server.Transfer("showprod.aspx");

    }
    private bool Autheticate(String name, string password)
            {
                Generalfunction gf = new Generalfunction();
                gf.connectionopen();
                gf.cmd.CommandText = "select count(*) from Registration where loginname='" + name + "' and upass='" + password + "'";

                string count = gf.cmd.ExecuteScalar().ToString();



                if (count == "0")
                {
                    return false;
                }
                else
                {

                    return true;

                
                }
                gf.connectionclose();

            
            }
          


    
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
}