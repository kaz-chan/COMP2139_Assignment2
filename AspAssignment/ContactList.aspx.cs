﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ContactList : System.Web.UI.Page
{
    private CustomerList cus;
    protected void Page_Load(object sender, EventArgs e)
    {
        cus = CustomerList.GetList();
        if (!IsPostBack)
            this.DisplayCart();
    }

    private void DisplayCart()
    {
        LbContacts.Items.Clear();
        Customer item;
        for (int i = 0; i < cus.Count; i++)
        {
            item = cus[i];
            LbContacts.Items.Add(item.Display());
        }
    }
    protected void BtnSelectAdditional_Click(object sender, EventArgs e)
    {
        Server.Transfer("Customers.aspx");
    }
}