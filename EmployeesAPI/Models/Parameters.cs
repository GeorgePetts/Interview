using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace EmployeesAPI.Models
{
    public class Parameters
    {
        public int? EmployeeID { get; set; }
        public int? SubDepartmentID { get; set; }
        public int? DepartmentID { get; set; }
    }
}
