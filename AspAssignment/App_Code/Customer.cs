using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Customer
/// </summary>
public class Customer 
{	
    public Customer() {}

    public Customer(Person person)
    {
        this.Person = person;
    }

    public Person Person { get; set; }


    public string Display()
    {
        string displayString =
            Person.Name;

        return displayString;
    }
	
}