using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class prDemo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    
    /*protected void DataList1_ItemCommand1(object source, DataListCommandEventArgs e)
    {
        Label btn = (Label)e.Item.FindControl("type");
        string s = btn.Text;

        btn = null;
        Response.Redirect("~/singlepod.aspx?type=" + s);
    }*/
   
}