using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.IO;
using System.Data;


public partial class product_upload : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        lblmsg.Visible = false;
        lblmsg1.Visible=false;

            
    }
    protected void Btnupload_Click(object sender, EventArgs e)
    {
        Generalfunction gf = new Generalfunction();
        


        gf.connectionopen();
        gf.cmd.CommandText = "select count(*) from product where pname='" + Txtname.Text + "' and type='" + Dropptype.Text + "'";
        string count = gf.cmd.ExecuteScalar().ToString();
        if (count == "0")
        {
            gf.iud("insert into product(pname,type,photo) values('" + Txtname.Text + "','" + Dropptype.Text + "','~/product/ " + photoup.FileName + "')", "saved");
            photoup.SaveAs(Server.MapPath("~/product/ " + photoup.FileName ));
        }
        //retrive pid
        gf.cmd.CommandText = "select * from product where pname='" + Txtname.Text + "' and type='" + Dropptype.Text + "'";
        gf.dr = gf.cmd.ExecuteReader();
        string prodid="";
        if (gf.dr.HasRows == true)
        {
            gf.dr.Read();
            prodid = gf.dr[0].ToString();
        }
        gf.dr.Close();
           
      
       gf.iud("insert into productsp(pid,pwt,pr,nval) values('"+ prodid +"','" + Txtweight.Text + "','" +Txtprice.Text + "','" +Txtnvalue.Text+ "') ", "saved");
        gf.connectionclose();
        GridView1.DataBind();
      
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Generalfunction gf = new Generalfunction();
        gf.connectionopen();
         gf.cmd.CommandText = "select count(*) from product where pname='" + Txtname.Text + "' and type='" + Dropptype.Text + "'";
        string count = gf.cmd.ExecuteScalar().ToString();
        if (count == "0")
        {
            lblmsg.Text = gf.iud("(update product  set pname='" + Txtname.Text + "',type='" + Dropptype.Text + "''~/product/ " + photoup.FileName + "' where pid=" + long.Parse(lblmsg.Text) + ")", "update");
        }

         gf.cmd.CommandText = "select * from product where pname='" + Txtname.Text + "' and type='" + Dropptype.Text + "'";
        gf.dr = gf.cmd.ExecuteReader();
        string prodid="";
        if (gf.dr.HasRows == true)
        {
            gf.dr.Read();
            prodid = gf.dr[0].ToString();
        }
         
        gf.dr.Close();
            gf.iud("(update productsp  set pwt='" + Txtweight.Text + "',pr='" + Txtprice.Text + "',nval='" + Txtnvalue.Text + "' where psno=" + long.Parse(lblmsg1.Text) + ")", "");
 
        
       
        
        gf.connectionclose();
        GridView1.DataBind();

    }
    protected void Btndelete_Click(object sender, EventArgs e)
    {
        
    
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

        GridViewRow gr = GridView1.SelectedRow;

        lblmsg.Text = gr.Cells[1].Text;
        Txtname.Text = gr.Cells[2].Text;
        Dropptype.Text = gr.Cells[3].Text;
        //photoup.FileName = gr.Cells[4].Text;
        lblmsg1.Text = gr.Cells[5].Text;
        Txtweight.Text = gr.Cells[6].Text;
        Txtprice.Text = gr.Cells[7].Text;
        Txtnvalue.Text = gr.Cells[8].Text;
    }
}