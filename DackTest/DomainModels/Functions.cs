using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;
using DackTest.Models;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.Extensions.Configuration;
using Newtonsoft.Json;

namespace DackTest.DomainModels
{
    public static class Functions
    {
        public static IConfiguration Config; // Set by Startup.cs to enable retrieving values from appsettings.json
        public static async Task<List<vwEmployee>> GetEmployeesAsync(int? DepartmentID, int? EmployeeID, int? SubDepartmentID)
        {
            Parameters parm = new Parameters() { DepartmentID = DepartmentID, EmployeeID = EmployeeID, SubDepartmentID = SubDepartmentID };
            string json = JsonConvert.SerializeObject(parm);
            HttpContent content = new StringContent(json, Encoding.UTF8, "application/json");

            string APIURL = Config.GetSection("Settings").GetSection("APIURL").Value;

            HttpClient client = new HttpClient();
            var result = await client.PostAsync(APIURL, content);

            var returnContent = result.Content.ReadAsStringAsync();

            var emps = JsonConvert.DeserializeObject<List<vwEmployee>>(returnContent.Result.ToString());

            return emps;
        }

        public static async Task<List<vwDepartment>> GetDepsAsync(int? DepartmentID, int? EmployeeID, int? SubDepartmentID)
        {
            List<vwEmployee> emps = await GetEmployeesAsync(DepartmentID, EmployeeID, SubDepartmentID);

            if (emps != null && emps.Count > 0)
            {
                var deps = emps.GroupBy(e => e.DepartmentID).Distinct().Select(d => d.First()).Select(d => new vwDepartment() { DepartmentID = d.DepartmentID, DepartmentName = d.DepartmentName }).ToList();

                foreach (vwDepartment d in deps)
                    d.Employees = emps.Where(e => e.DepartmentID == d.DepartmentID).ToList();

                return deps;
            }
            else
                return new List<vwDepartment>();
        }

        public static List<SelectListItem> GetDepartmentSelectList()
        {
            DACKContext db = new DACKContext(Config);
            return db.Department.Where(d => !d.Deleted).OrderBy(d => d.DepartmentName).Select(d => new SelectListItem(d.DepartmentName, d.DepartmentId.ToString())).ToList();
        }
        public static List<SelectListItem> GetEmployeeSelectList()
        {
            DACKContext db = new DACKContext(Config);
            return db.Employee.Where(e => !e.Deleted).OrderBy(e => e.LastName).ThenBy(e => e.FirstName).Select(e => new SelectListItem(e.LastName + ", " + e.FirstName, e.EmployeeId.ToString())).ToList();
        }
        public static List<SelectListItem> GetSubDepartmentSelectList()
        {
            DACKContext db = new DACKContext(Config);
            return db.SubDepartment.Where(s => !s.Deleted).OrderBy(s => s.SubDepartmentName).Select(s => new SelectListItem(s.SubDepartmentName, s.SubDepartmentId.ToString())).ToList();
        }
    }
}
