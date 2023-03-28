using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using NetaphorTest.Models;
using NetaphorTest.DomainModels;

namespace NetaphorTest.Controllers
{
    public class HomeController : Controller
    {
        public async Task<IActionResult> Index()
        {
            try
            {
                ViewData["Departments"] = Functions.GetDepartmentSelectList();
                ViewData["Employees"] = Functions.GetEmployeeSelectList();
                ViewData["SubDepartments"] = Functions.GetSubDepartmentSelectList();

                List<vwDepartment> emps = await Functions.GetDepsAsync(null, null, null);
                if (emps.Count > 0)
                    return View("Index", emps);
                else
                    return View("Empty");
            }
            catch 
            {
                return View("Error");
            }
        }


        [HttpPost]
        public async Task<IActionResult> Deps([FromBody]Parameters parm)
        {
            try
            {
                List<vwDepartment> deps = await Functions.GetDepsAsync(parm.DepartmentID, parm.EmployeeID, parm.SubDepartmentID);
                if (deps.Count > 0)
                    return PartialView(deps);
                else
                    return PartialView("Empty");
            }
            catch
            {
                return PartialView("Error");
            }
        }
     }
}
