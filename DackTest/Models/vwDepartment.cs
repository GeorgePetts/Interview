using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace DackTest.Models
{
    public class vwDepartment
    {
        public int DepartmentID { get; set; }
        public string DepartmentName { get; set; }
        public IEnumerable<IEmployee> Employees { get; set; }
    }
}
