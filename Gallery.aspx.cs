using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;

public partial class Gallery : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        uploadimage();
    }
    protected void Btnupload_Click(object sender, EventArgs e)
    {
        if (Filegalleryupload.HasFile)
        {
           string fileName = Filegalleryupload.FileName;
            Filegalleryupload.PostedFile.SaveAs(Server.MapPath("~/product/" )+ Filegalleryupload. FileName);




       }
        Response.Redirect("~/Gallery.aspx");

        

       
    }

    private void uploadimage()
    {
       


        foreach (string strp in  Directory.GetFiles(Server.MapPath("~/product/")))

        {
            ImageButton img = new ImageButton();
            FileInfo fin = new FileInfo(strp);
           img.ImageUrl = "~/product/" + fin.Name;
           img.Height = Unit.Pixel(150);
            img.Width = Unit.Pixel(150);
            img.Style.Add("padding", "5px");
            img.Click += new ImageClickEventHandler(ImageButton_click);
            Panel1.Controls.Add(img);


        }
    }


    void ImageButton_click(object sender, EventArgs e)
    {
        Response.Redirect(((ImageButton)sender).ImageUrl);

    }
}