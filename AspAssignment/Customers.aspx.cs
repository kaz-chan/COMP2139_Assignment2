using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Customers : System.Web.UI.Page
{
    private Person selectedCustomer;
    protected void Page_Load(object sender, EventArgs e)
    {
        //bind dropdown on first load; get and show product data on every load        
        if (!IsPostBack) DdlCustomers.DataBind();
        selectedCustomer = this.GetSelectedCustomer();
        LblAddress.Text = selectedCustomer.Address;
        LblPhone.Text = selectedCustomer.Phone;
        LblEmail.Text = selectedCustomer.Email;
    }

    private Person GetSelectedCustomer()
    {
        //get row from SqlDataSource based on value in dropdownlist
        DataView customerTable = (DataView)
            SqlDataSource1.Select(DataSourceSelectArguments.Empty);
        customerTable.RowFilter =
            "CustomerID = '" + DdlCustomers.SelectedValue.ToString() + "'";
        DataRowView row = (DataRowView)customerTable[0];

        //create a new product object and load with data from row
        Person p = new Person();
        p.CustomerID = row["CustomerID"].ToString();
        p.Name = row["Name"].ToString();
        p.Address = row["Address"].ToString();
        p.Phone = row["Phone"].ToString();
        p.Email = row["Email"].ToString();
        return p;
    }
    protected void BtnAddList_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            //get cart from session and selected item from cart
            CustomerList cus = CustomerList.GetList();
            Customer cartItem = cus[selectedCustomer.CustomerID];

            //if item isn’t in cart, add it; otherwise, increase its quantity
            if (cartItem == null)
            {
                cus.AddList(selectedCustomer);
            }
            Response.Redirect("ContactList.aspx", false);
        }
    }
    protected void DdlCustomers_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}