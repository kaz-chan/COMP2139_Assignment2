using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MaintainProducts : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlDataSource1.InsertParameters["ProductCode"].DefaultValue = TbCode.Text;
        SqlDataSource1.InsertParameters["Name"].DefaultValue = TbName.Text;
        SqlDataSource1.InsertParameters["Version"].DefaultValue = TbVersion.Text;
        SqlDataSource1.InsertParameters["ReleaseDate"].DefaultValue = TbDate.Text;

        try
        {
            SqlDataSource1.Insert();
            TbCode.Text = "";
            TbName.Text = "";
            TbVersion.Text = "";
            TbDate.Text = "";
        }
        catch(Exception ex)
        {
            lblMsg.Text = "A database error has ocurred. " + "Message: " + ex.Message;
        }
    }
}