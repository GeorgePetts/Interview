USE [DACK]
GO

/****** Object:  StoredProcedure [dbo].[sp_Employees]    Script Date: 1/18/2021 11:08:12 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE proc [dbo].[sp_Employees] @EmployeeID int null = 0, @SubDepartmentID int null = 0, @DepartmentID int null = 0
 as

SELECT e.[EmployeeID]
      ,e.[SubDepartmentID]
      ,e.[FirstName]
      ,e.[LastName]
      ,e.[Bio]
      ,e.[ProfileImage]
      ,e.[FBProfileLink]
      ,e.[TwitterProfileLink]
      ,e.[AddedDate] as EmpAddedDate
      ,e.[UpdatedDate] as EmpUpdatedDate
      ,e.[Deleted] as EmpDeleted
      ,e.[DeletedDate] as EmpDeletedDate
	  ,d.[DepartmentName]
      ,d.[AddedDate] as DepAddedDate
      ,d.[UpdatedDate] as DepUpdatedDate
      ,d.[Deleted] as DepDeleted
      ,d.[DeletedDate] as DepDeletedDate
      ,s.[DepartmentID]
      ,s.[SubDepartmentName]
      ,s.[AddedDate] as SubDepAddedDate
      ,s.[UpdatedDate] as SubDepUpdatedDate
      ,s.[Deleted] as SubDepDeleted
      ,s.[DeletedDate] as SubDepDeletedDate
  FROM [dbo].[Employee] e 
  INNER JOIN [dbo].[SubDepartment] s
  ON s.SubDepartmentID = e.SubDepartmentID
  INNER JOIN [dbo].[Department] d
  ON d.DepartmentID = s.DepartmentID
  WHERE 
	(e.EmployeeID = @EmployeeID OR @EmployeeID = 0) AND
	(s.SubDepartmentID = @SubDepartmentID OR @SubDepartmentID = 0) AND
	(s.DepartmentID = @DepartmentID OR @DepartmentID = 0) AND
	e.Deleted = 0 AND s.Deleted = 0 AND d.Deleted = 0
ORDER BY DepartmentName, LastName, FirstName


GO


