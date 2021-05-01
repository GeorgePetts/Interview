using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using EmployeesAPI.Models;

namespace EmployeesAPI.Controllers
{
    [Produces("application/json")]
    [Route("api/Employees")]
    public class EmployeesController : Controller
    {
       [HttpGet]
        public IActionResult Get() => new EmptyResult();
        // POST: api/Employees
        [HttpPost]
        public IActionResult Post([FromBody] Parameters value)
        {
            try
            {
                var returnList = Functions.Get_Employees(value.EmployeeID, value.SubDepartmentID, value.DepartmentID);
                if (returnList.Count == 0)
                    return new EmptyResult();
                else
                    return Ok(returnList);
            }
            catch (Exception ex)
            {
                return StatusCode(500);
            }
        }

    }
}
