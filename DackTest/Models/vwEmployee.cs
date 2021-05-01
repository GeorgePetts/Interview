using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace DackTest.Models
{
    public class vwEmployee : IEmployee
    {
        public int EmployeeID { get; set; }
        public int SubDepartmentID { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Bio { get; set; }
        public string ProfileImage { get; set; }
        public string FBProfileLink { get; set; }
        public string TwitterProfileLink { get; set; }
        public DateTime EmpAddedDate { get; set; }
        public DateTime? EmpUpdatedDate { get; set; }
        public bool EmpDeleted { get; set; }
        public DateTime? EmpDeletedDate { get; set; }
        public string DepartmentName { get; set; }
        public DateTime DepAddedDate { get; set; }
        public DateTime? DepUpdatedDate { get; set; }
        public bool DepDeleted { get; set; }
        public DateTime? DepDeletedDate { get; set; }
        public int DepartmentID { get; set; }
        public string SubDepartmentName { get; set; }
        public DateTime SubDepAddedDate { get; set; }
        public DateTime? SubDepUpdatedDate { get; set; }
        public bool SubDepDeleted { get; set; }
        public DateTime? SubDepDeletedDate { get; set; }
    }
}