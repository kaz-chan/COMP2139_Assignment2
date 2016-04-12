using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void DetailsViewCustomerDetails_ItemDeleted(object sender, DetailsViewDeletedEventArgs e)
    {
        if (e.Exception != null)
        {
            lblErrorMessage.Text = "A database error has occured. "
                + "Message: " + e.Exception.Message;
            e.ExceptionHandled = true;
        }
        else if (e.AffectedRows == 0)
        {
            lblErrorMessage.Text = "Another user may have updated that product. "
                + "Please try again.";
        }
        else
            GridViewCustomerList.DataBind();
    }
    protected void DetailsViewCustomerDetails_ItemUpdated(object sender, DetailsViewUpdatedEventArgs e)
    {
        if (e.Exception != null)
        {
            lblErrorMessage.Text = "A database error has occured. "
                + "Message: " + e.Exception.Message;
            e.ExceptionHandled = true;
        }
        else if (e.AffectedRows == 0)
        {
            lblErrorMessage.Text = "Another user may have updated that product. "
                + "Please try again.";
        }
        else
            GridViewCustomerList.DataBind();
    }
    protected void DetailsViewCustomerDetails_ItemInserted(object sender, DetailsViewInsertedEventArgs e)
    {
        if (e.Exception != null)
        {
            lblErrorMessage.Text = "A database error has occured. "
                + "Message: " + e.Exception.Message;
            e.ExceptionHandled = true;
        }
        else if (e.AffectedRows == 0)
        {
            lblErrorMessage.Text = "Another user may have updated that product. "
                + "Please try again.";
        }
        else
            GridViewCustomerList.DataBind();
    }
}