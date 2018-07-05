using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class showprod : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        //string a = Session["name"].ToString();



        if (PreviousPage != null)
        {
            if (((TextBox)PreviousPage.FindControl("Txtusername.Text")) != null)
            {
                string text = ((TextBox)PreviousPage.FindControl("Txtusername.Text")).Text;
                Response.Write(text);
            }
        }
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        
    }
    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        Label btn = (Label)e.Item.FindControl("pidLabel");
      string s=btn.Text;

        btn=null;
        Response.Redirect("~/singlepod.aspx?id=" + s);
     

    }
}