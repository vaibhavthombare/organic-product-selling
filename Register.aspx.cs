using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

public partial class Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        Label15.Visible = false;


    }
    
    
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
         
    }
    protected void TextBox10_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Btnregister_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            Generalfunction gf = new Generalfunction();
            gf.connectionopen();
            gf.cmd.CommandText = "select count(*) from Registration  where loginname='" + Txtlogin.Text + "'";
            string count = gf.cmd.ExecuteScalar().ToString();
            if (count == "0")
            {

                gf.iud("insert into Registration(upass,fname,mname,lname,uadd,dob,umail,loginname)values('" + Txtrepassword.Text + "','" + Txtfirname.Text + "','" + Txtmidname.Text + "','" + Txtrlastname.Text + "','" + Txtraddress.Text + "','" + Txtdob.Text + "','" + Txtmail.Text + "','" + Txtlogin.Text + "' )", "saved");
                // gf.iud("insert into State(sname)values('"+Dropstate.SelectedItem.Text+'""));

            }

            else
            {
                Label15.Text = "user is already exits";
            
            }

            gf.connectionclose();
        }
        
    }
    protected void Dropstate_SelectedIndexChanged(object sender, EventArgs e)
    {
        
    }
    protected void Dropcity_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Btnregisterreset_Click(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Generalfunction gf = new Generalfunction();
        gf.iud("insert into Registration(upass,fname,mname,lname,uadd,dob,umail)values('" + Txtrepassword.Text + "','" + Txtfirname.Text + "','" + Txtmidname.Text + "','" + Txtrlastname.Text + "','" + Txtraddress.Text + "','" + Txtdob.Text + "','" + Txtmail.Text + "' )", "saved");

    }
}