using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace DackTest.Models
{
    public interface IEmployee
    {
       [Key]
       int EmployeeID { get; set; }
       int SubDepartmentID { get; set; }
       string FirstName { get; set; }
       string LastName { get; set; }
       string Bio { get; set; }
       string ProfileImage { get; set; }
       string FBProfileLink { get; set; }
       string TwitterProfileLink { get; set; }
       DateTime EmpAddedDate { get; set; }
       DateTime? EmpUpdatedDate { get; set; }
       bool EmpDeleted { get; set; }
       DateTime? EmpDeletedDate { get; set; }
       string DepartmentName { get; set; }
       DateTime DepAddedDate { get; set; }
       DateTime? DepUpdatedDate { get; set; }
       bool DepDeleted { get; set; }
       DateTime? DepDeletedDate { get; set; }
       int DepartmentID { get; set; }
       string SubDepartmentName { get; set; }
       DateTime SubDepAddedDate { get; set; }
       DateTime? SubDepUpdatedDate { get; set; }
       bool SubDepDeleted { get; set; }
       DateTime? SubDepDeletedDate { get; set; }
    }
}