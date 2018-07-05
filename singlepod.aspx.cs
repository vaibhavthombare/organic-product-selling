using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class singlepod : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            HiddenField1.Value = Request.QueryString["id"].ToString();
        }
    }
    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {
       
      

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/showprod.aspx");
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/user/order.aspx?id=" + HiddenField1.Value);

    }
    protected void AccessDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
}