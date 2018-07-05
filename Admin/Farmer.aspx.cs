using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Drawing;


public partial class Farmer : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label5.Visible = false;
        //Label6.Visible = false;

    }
    protected void Btnupload_Click(object sender, EventArgs e)
    {

        Generalfunction gf = new Generalfunction();

        gf.connectionopen();
        Label6.Text = gf.iud("insert into farmer(fname,fadd,mno) values('" + Txtname.Text + "','" + Txtadd.Text + "','" + Txtmob.Text + "')", "saved Sucessfully");
        Label6.ForeColor = System.Drawing.Color.Blue;

 
       gf.connectionclose();
     //  Response.Redirect("~gridview.aspx");

       GridView1.DataBind();
       
      
        
        
           
    }



    protected void Button1_Click(object sender, EventArgs e)
    {
        Generalfunction gf = new Generalfunction();
        gf.connectionopen();
        Label6.Text = gf.iud("(update farmer  set fname='" + Txtname.Text + "',fadd='" + Txtadd.Text + "',mno='" + Txtmob.Text + "' where fid=" + long.Parse(Label5.Text) + ")", "update Sucessfully");
        Label6.ForeColor = System.Drawing.Color.Blue;

        
        gf.connectionclose();

        GridView1.DataBind();


    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridViewRow gr = GridView1.SelectedRow;

        Label5.Text = gr.Cells[1].Text;
        Txtname.Text = gr.Cells[2].Text;
        Txtadd.Text = gr.Cells[3].Text;
        Txtmob.Text = gr.Cells[4].Text;
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        Generalfunction gf = new Generalfunction();
        gf.connectionopen();
        Label6.Text = gf.iud("(delete from  farmer  where fid=" + long.Parse(Label5.Text) + ")", "Deleted Sucessfully");

        Label6.ForeColor = System.Drawing.Color.Blue;

 
        gf.connectionclose();
        GridView1.DataBind();
    }
}