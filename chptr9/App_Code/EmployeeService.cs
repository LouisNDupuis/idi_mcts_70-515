using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

/// <summary>
/// Summary description for EmployeeService
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
[System.Web.Script.Services.ScriptService]
public class EmployeeService : System.Web.Services.WebService 
{
    [WebMethod]
    public Employee GetEmployeeByID(string employeeID) 
    { 
        // simulate employee name lookup
        return new Employee(employeeID);
    }

}

/* lesson 3 - exo 1 */
[Serializable]
public class Employee 
{
    public string ID { get; set; }
    public string fullName { get; set; }
    public string Title { get; set; }
    public string Department { get; set; }
    

    public Employee() { }
    
    public Employee(string empId)
    { 
        // simulate looking up an employee
        this.ID = empId;
        this.fullName = "Joe Developper";
        this.Title = "Asp.Net Sr. Developper";
        this.Department = "Application Development";
    }


}