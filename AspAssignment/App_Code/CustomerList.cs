using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for CustomerList
/// </summary>
public class CustomerList
{
    private static List<Customer> customer = null;

    public CustomerList()
    {
        if (customer == null)
            customer = new List<Customer>();
    }

    public Customer this[int index]
    {
        get { return customer[index]; }
        set { customer[index] = value; }
    }

    public Customer this[string id]
    {
        get {
            foreach (Customer c in customer)
                if (c.Person.CustomerID == id) return c;
            return null;
        }
    }

    public static CustomerList GetList()
    {
        CustomerList cus = (CustomerList)HttpContext.Current.Session["Cus"];
        if (cus == null)
            HttpContext.Current.Session["Cus"] = new CustomerList();
        return (CustomerList)HttpContext.Current.Session["Cus"];
    }

    public void AddList(Person person)
    {
        Customer c = new Customer(person);
        customer.Add(c);
    }

    public void RemoveAt(int index)
    {
        customer.RemoveAt(index);
    }

    public void Clear() { customer.Clear(); }

    public int Count() { return customer.Count();}
}   