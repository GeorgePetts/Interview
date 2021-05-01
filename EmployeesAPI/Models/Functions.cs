using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace EmployeesAPI.Models
{
    public static class Functions
    {
        public static IConfiguration Config; // Set by Startup.cs to enable retrieving values from appsettings.json
        public static List<sp_Employees> Get_Employees(int? EmployeeID, int? SubDepartmentID, int? DepartmentID)
        {
            DACKContext db = new DACKContext(Config);

            EmployeeID = EmployeeID == null ? 0 : EmployeeID;
            SubDepartmentID = SubDepartmentID == null ? 0 : SubDepartmentID;
            DepartmentID = DepartmentID == null ? 0 : DepartmentID;

            // There is no chance of SQL injection here because all three parameters are strongly typed integers before conversion to string.
            return db.sp_Employees.FromSql("exec sp_Employees " + EmployeeID.ToString() + ", " + SubDepartmentID.ToString() + ", " + DepartmentID.ToString()).ToList();
        }
    }
}
