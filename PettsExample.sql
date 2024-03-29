USE master
CREATE DATABASE PettsExample
GO
USE [PettsExample]
GO
/****** Object:  Table [dbo].[Department]    Script Date: 3/29/2023 8:08:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Department](
	[DepartmentId] [int] IDENTITY(1,1) NOT NULL,
	[DepartmentName] [varchar](50) NOT NULL,
	[AddedDate] [datetime] NOT NULL,
	[UpdatedDate] [datetime] NULL,
	[Deleted] [bit] NOT NULL,
	[DeletedDate] [datetime] NULL,
 CONSTRAINT [PK_Department] PRIMARY KEY CLUSTERED 
(
	[DepartmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 3/29/2023 8:08:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[EmployeeId] [int] IDENTITY(1,1) NOT NULL,
	[SubDepartmentId] [int] NOT NULL,
	[FirstName] [varchar](50) NOT NULL,
	[LastName] [varchar](50) NOT NULL,
	[Bio] [varchar](250) NOT NULL,
	[ProfileImage] [varchar](50) NULL,
	[FbProfileLink] [varchar](250) NULL,
	[TwitterProfileLink] [varchar](250) NULL,
	[AddedDate] [datetime] NOT NULL,
	[UpdatedDate] [datetime] NULL,
	[Deleted] [bit] NOT NULL,
	[DeletedDate] [datetime] NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[EmployeeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SubDepartment]    Script Date: 3/29/2023 8:08:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubDepartment](
	[SubDepartmentId] [int] IDENTITY(1,1) NOT NULL,
	[DepartmentId] [int] NOT NULL,
	[SubDepartmentName] [varchar](50) NOT NULL,
	[AddedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[Deleted] [bit] NOT NULL,
	[DeletedDate] [datetime] NULL,
 CONSTRAINT [PK_SubDepartment] PRIMARY KEY CLUSTERED 
(
	[SubDepartmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Department] ON 

INSERT [dbo].[Department] ([DepartmentId], [DepartmentName], [AddedDate], [UpdatedDate], [Deleted], [DeletedDate]) VALUES (1, N'Accounting', CAST(N'2023-03-26T15:51:46.680' AS DateTime), NULL, 0, NULL)
INSERT [dbo].[Department] ([DepartmentId], [DepartmentName], [AddedDate], [UpdatedDate], [Deleted], [DeletedDate]) VALUES (2, N'Manufacturing', CAST(N'2023-03-26T15:52:47.320' AS DateTime), NULL, 0, NULL)
INSERT [dbo].[Department] ([DepartmentId], [DepartmentName], [AddedDate], [UpdatedDate], [Deleted], [DeletedDate]) VALUES (3, N'Sales', CAST(N'2023-03-26T15:53:18.503' AS DateTime), NULL, 0, NULL)
INSERT [dbo].[Department] ([DepartmentId], [DepartmentName], [AddedDate], [UpdatedDate], [Deleted], [DeletedDate]) VALUES (4, N'Marketing', CAST(N'2023-03-26T15:53:36.890' AS DateTime), NULL, 0, NULL)
SET IDENTITY_INSERT [dbo].[Department] OFF
GO
SET IDENTITY_INSERT [dbo].[Employee] ON 

INSERT [dbo].[Employee] ([EmployeeId], [SubDepartmentId], [FirstName], [LastName], [Bio], [ProfileImage], [FbProfileLink], [TwitterProfileLink], [AddedDate], [UpdatedDate], [Deleted], [DeletedDate]) VALUES (3, 1, N'Sue', N'Heck', N'arcu risus quis varius quam quisque id diam vel quam elementum pulvinar etiam non quam lacus suspendisse faucibus interdum posuere lorem ipsum dolor sit amet consectetur adipiscing elit duis tristique', N'andrea.jpg', N'sueheck', N'sueheck', CAST(N'2023-03-26T16:15:31.980' AS DateTime), NULL, 0, NULL)
INSERT [dbo].[Employee] ([EmployeeId], [SubDepartmentId], [FirstName], [LastName], [Bio], [ProfileImage], [FbProfileLink], [TwitterProfileLink], [AddedDate], [UpdatedDate], [Deleted], [DeletedDate]) VALUES (4, 1, N'Frank', N'Columbo', N'lacus sed turpis tincidunt id aliquet risus feugiat in ante metus dictum at tempor commodo ullamcorper a lacus vestibulum sed arcu non odio euismod lacinia at quis risus sed vulputate', N'frandy.png', N'frankcolumbo', N'frankcolumbo', CAST(N'2023-03-26T16:16:56.177' AS DateTime), NULL, 0, NULL)
INSERT [dbo].[Employee] ([EmployeeId], [SubDepartmentId], [FirstName], [LastName], [Bio], [ProfileImage], [FbProfileLink], [TwitterProfileLink], [AddedDate], [UpdatedDate], [Deleted], [DeletedDate]) VALUES (5, 2, N'Montgomery', N'Scott', N'facilisi morbi tempus iaculis urna id volutpat lacus laoreet non curabitur gravida arcu ac tortor dignissim convallis aenean et tortor at risus viverra adipiscing at in tellus integer feugiat scelerisque', N'greg.png', N'greg', N'greg', CAST(N'2023-03-26T16:18:30.050' AS DateTime), NULL, 0, NULL)
INSERT [dbo].[Employee] ([EmployeeId], [SubDepartmentId], [FirstName], [LastName], [Bio], [ProfileImage], [FbProfileLink], [TwitterProfileLink], [AddedDate], [UpdatedDate], [Deleted], [DeletedDate]) VALUES (6, 2, N'Ron', N'Swanson', N'at tempor commodo ullamcorper a lacus vestibulum sed arcu non odio euismod lacinia at quis risus sed vulputate odio ut enim blandit volutpat maecenas volutpat blandit aliquam etiam erat velit', N'john.png', N'ronswanson', N'ronswanson', CAST(N'2023-03-26T16:22:56.697' AS DateTime), NULL, 0, NULL)
INSERT [dbo].[Employee] ([EmployeeId], [SubDepartmentId], [FirstName], [LastName], [Bio], [ProfileImage], [FbProfileLink], [TwitterProfileLink], [AddedDate], [UpdatedDate], [Deleted], [DeletedDate]) VALUES (7, 3, N'Josie', N'Wales', N'convallis a cras semper auctor neque vitae tempus quam pellentesque nec nam aliquam sem et tortor consequat id porta nibh venenatis cras sed felis eget velit aliquet sagittis id consectetur', N'oliver.jpg', N'josiewales', N'josiewales', CAST(N'2023-03-26T16:26:31.127' AS DateTime), NULL, 0, NULL)
INSERT [dbo].[Employee] ([EmployeeId], [SubDepartmentId], [FirstName], [LastName], [Bio], [ProfileImage], [FbProfileLink], [TwitterProfileLink], [AddedDate], [UpdatedDate], [Deleted], [DeletedDate]) VALUES (8, 3, N'Sheldon', N'Cooper', N'malesuada pellentesque elit eget gravida cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus mauris vitae ultricies leo integer malesuada nunc vel risus commodo viverra maecenas accumsan', N'sheldon.jpg', N'sheldoncooper', N'sheldoncooper', CAST(N'2023-03-26T16:32:41.477' AS DateTime), NULL, 0, NULL)
INSERT [dbo].[Employee] ([EmployeeId], [SubDepartmentId], [FirstName], [LastName], [Bio], [ProfileImage], [FbProfileLink], [TwitterProfileLink], [AddedDate], [UpdatedDate], [Deleted], [DeletedDate]) VALUES (9, 4, N'Nyota', N'Uhura', N'sollicitudin nibh sit amet commodo nulla facilisi nullam vehicula ipsum a arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque mauris pellentesque pulvinar pellentesque habitant morbi tristique senectus et', N'andrea.jpg', N'nyotauhura', N'nyotauhura', CAST(N'2023-03-26T16:36:19.533' AS DateTime), NULL, 0, NULL)
INSERT [dbo].[Employee] ([EmployeeId], [SubDepartmentId], [FirstName], [LastName], [Bio], [ProfileImage], [FbProfileLink], [TwitterProfileLink], [AddedDate], [UpdatedDate], [Deleted], [DeletedDate]) VALUES (10, 4, N'Harry ', N'Callahan', N'aliquet nibh praesent tristique magna sit amet purus gravida quis blandit turpis cursus in hac habitasse platea dictumst quisque sagittis purus sit amet volutpat consequat mauris nunc congue nisi vitae', N'frandy.png', N'dirtyharry', N'dirtyharry', CAST(N'2023-03-26T16:39:35.330' AS DateTime), NULL, 0, NULL)
INSERT [dbo].[Employee] ([EmployeeId], [SubDepartmentId], [FirstName], [LastName], [Bio], [ProfileImage], [FbProfileLink], [TwitterProfileLink], [AddedDate], [UpdatedDate], [Deleted], [DeletedDate]) VALUES (11, 5, N'Jonas', N'Grumby', N'interdum consectetur libero id faucibus nisl tincidunt eget nullam non nisi est sit amet facilisis magna etiam tempor orci eu lobortis elementum nibh tellus molestie nunc non blandit massa enim', N'greg.png', N'skipper', N'skipper', CAST(N'2023-03-26T18:58:08.457' AS DateTime), NULL, 0, NULL)
INSERT [dbo].[Employee] ([EmployeeId], [SubDepartmentId], [FirstName], [LastName], [Bio], [ProfileImage], [FbProfileLink], [TwitterProfileLink], [AddedDate], [UpdatedDate], [Deleted], [DeletedDate]) VALUES (12, 5, N'Willy', N'Gilligan', N'nibh cras pulvinar mattis nunc sed blandit libero volutpat sed cras ornare arcu dui vivamus arcu felis bibendum ut tristique et egestas quis ipsum suspendisse ultrices gravida dictum fusce ut', N'john.png', N'gilligan', N'gilligan', CAST(N'2023-03-26T18:59:05.413' AS DateTime), NULL, 0, NULL)
INSERT [dbo].[Employee] ([EmployeeId], [SubDepartmentId], [FirstName], [LastName], [Bio], [ProfileImage], [FbProfileLink], [TwitterProfileLink], [AddedDate], [UpdatedDate], [Deleted], [DeletedDate]) VALUES (13, 6, N'Roy', N'Hinkley', N'suscipit tellus mauris a diam maecenas sed enim ut sem viverra aliquet eget sit amet tellus cras adipiscing enim eu turpis egestas pretium aenean pharetra magna ac placerat vestibulum lectus', N'oliver.jpg', N'professor', N'professor', CAST(N'2023-03-26T19:00:19.960' AS DateTime), NULL, 0, NULL)
INSERT [dbo].[Employee] ([EmployeeId], [SubDepartmentId], [FirstName], [LastName], [Bio], [ProfileImage], [FbProfileLink], [TwitterProfileLink], [AddedDate], [UpdatedDate], [Deleted], [DeletedDate]) VALUES (14, 6, N'Thurston', N'Howell', N'tincidunt dui ut ornare lectus sit amet est placerat in egestas erat imperdiet sed euismod nisi porta lorem mollis aliquam ut porttitor leo a diam sollicitudin tempor id eu nisl', N'sheldon.jpg', N'mrhowell', N'mrhowell', CAST(N'2023-03-26T19:02:25.573' AS DateTime), NULL, 0, NULL)
INSERT [dbo].[Employee] ([EmployeeId], [SubDepartmentId], [FirstName], [LastName], [Bio], [ProfileImage], [FbProfileLink], [TwitterProfileLink], [AddedDate], [UpdatedDate], [Deleted], [DeletedDate]) VALUES (15, 7, N'Mary Ann', N'Summers', N'ullamcorper dignissim cras tincidunt lobortis feugiat vivamus at augue eget arcu dictum varius duis at consectetur lorem donec massa sapien faucibus et molestie ac feugiat sed lectus vestibulum mattis ullamcorper', N'andrea.jpg', N'MaryAnn', N'MAryAnn', CAST(N'2023-03-26T19:06:19.637' AS DateTime), NULL, 0, NULL)
INSERT [dbo].[Employee] ([EmployeeId], [SubDepartmentId], [FirstName], [LastName], [Bio], [ProfileImage], [FbProfileLink], [TwitterProfileLink], [AddedDate], [UpdatedDate], [Deleted], [DeletedDate]) VALUES (16, 7, N'Spock', N'Jones', N'accumsan tortor posuere ac ut consequat semper viverra nam libero justo laoreet sit amet cursus sit amet dictum sit amet justo donec enim diam vulputate ut pharetra sit amet aliquam', N'frandy.png', N'spock', N'spock', CAST(N'2023-03-26T19:11:16.213' AS DateTime), NULL, 0, NULL)
INSERT [dbo].[Employee] ([EmployeeId], [SubDepartmentId], [FirstName], [LastName], [Bio], [ProfileImage], [FbProfileLink], [TwitterProfileLink], [AddedDate], [UpdatedDate], [Deleted], [DeletedDate]) VALUES (17, 8, N'Leonard', N'McCoy', N'lacus sed viverra tellus in hac habitasse platea dictumst vestibulum rhoncus est pellentesque elit ullamcorper dignissim cras tincidunt lobortis feugiat vivamus at augue eget arcu dictum varius duis at consectetur', N'greg.png', N'Bones', N'Bones', CAST(N'2023-03-26T19:15:12.223' AS DateTime), NULL, 0, NULL)
INSERT [dbo].[Employee] ([EmployeeId], [SubDepartmentId], [FirstName], [LastName], [Bio], [ProfileImage], [FbProfileLink], [TwitterProfileLink], [AddedDate], [UpdatedDate], [Deleted], [DeletedDate]) VALUES (18, 8, N'James', N'Kirk', N'amet luctus venenatis lectus magna fringilla urna porttitor rhoncus dolor purus non enim praesent elementum facilisis leo vel fringilla est ullamcorper eget nulla facilisi etiam dignissim diam quis enim lobortis', N'john.png', N'captainkirk', N'captainkirk', CAST(N'2023-03-26T19:16:57.507' AS DateTime), NULL, 0, NULL)
SET IDENTITY_INSERT [dbo].[Employee] OFF
GO
SET IDENTITY_INSERT [dbo].[SubDepartment] ON 

INSERT [dbo].[SubDepartment] ([SubDepartmentId], [DepartmentId], [SubDepartmentName], [AddedDate], [UpdatedDate], [Deleted], [DeletedDate]) VALUES (1, 1, N'Accounts Payable', CAST(N'2023-03-26T15:55:13.547' AS DateTime), NULL, 0, NULL)
INSERT [dbo].[SubDepartment] ([SubDepartmentId], [DepartmentId], [SubDepartmentName], [AddedDate], [UpdatedDate], [Deleted], [DeletedDate]) VALUES (2, 1, N'Accounts Receivable', CAST(N'2023-03-26T15:55:50.533' AS DateTime), NULL, 0, NULL)
INSERT [dbo].[SubDepartment] ([SubDepartmentId], [DepartmentId], [SubDepartmentName], [AddedDate], [UpdatedDate], [Deleted], [DeletedDate]) VALUES (3, 2, N'Car Manufacturing', CAST(N'2023-03-26T15:56:59.440' AS DateTime), NULL, 0, NULL)
INSERT [dbo].[SubDepartment] ([SubDepartmentId], [DepartmentId], [SubDepartmentName], [AddedDate], [UpdatedDate], [Deleted], [DeletedDate]) VALUES (4, 2, N'Truck Manufacturing', CAST(N'2023-03-26T15:57:10.623' AS DateTime), NULL, 0, NULL)
INSERT [dbo].[SubDepartment] ([SubDepartmentId], [DepartmentId], [SubDepartmentName], [AddedDate], [UpdatedDate], [Deleted], [DeletedDate]) VALUES (5, 3, N'Direct Sales', CAST(N'2023-03-26T15:58:24.517' AS DateTime), NULL, 0, NULL)
INSERT [dbo].[SubDepartment] ([SubDepartmentId], [DepartmentId], [SubDepartmentName], [AddedDate], [UpdatedDate], [Deleted], [DeletedDate]) VALUES (6, 3, N'Channel Partner Sales', CAST(N'2023-03-26T15:58:42.963' AS DateTime), NULL, 0, NULL)
INSERT [dbo].[SubDepartment] ([SubDepartmentId], [DepartmentId], [SubDepartmentName], [AddedDate], [UpdatedDate], [Deleted], [DeletedDate]) VALUES (7, 4, N'Television', CAST(N'2023-03-26T16:02:47.213' AS DateTime), NULL, 0, NULL)
INSERT [dbo].[SubDepartment] ([SubDepartmentId], [DepartmentId], [SubDepartmentName], [AddedDate], [UpdatedDate], [Deleted], [DeletedDate]) VALUES (8, 4, N'Social Media', CAST(N'2023-03-26T16:03:01.003' AS DateTime), NULL, 0, NULL)
SET IDENTITY_INSERT [dbo].[SubDepartment] OFF
GO
ALTER TABLE [dbo].[Department] ADD  CONSTRAINT [DF_Department_AddedDate]  DEFAULT (getdate()) FOR [AddedDate]
GO
ALTER TABLE [dbo].[Department] ADD  CONSTRAINT [DF_Department_Deleted]  DEFAULT ((0)) FOR [Deleted]
GO
ALTER TABLE [dbo].[Employee] ADD  CONSTRAINT [DF_Employee_AddedDate]  DEFAULT (getdate()) FOR [AddedDate]
GO
ALTER TABLE [dbo].[Employee] ADD  CONSTRAINT [DF_Employee_Deleted]  DEFAULT ((0)) FOR [Deleted]
GO
ALTER TABLE [dbo].[SubDepartment] ADD  CONSTRAINT [DF_SubDepartment_AddedDate]  DEFAULT (getdate()) FOR [AddedDate]
GO
ALTER TABLE [dbo].[SubDepartment] ADD  CONSTRAINT [DF_SubDepartment_Deleted]  DEFAULT ((0)) FOR [Deleted]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_SubDepartment] FOREIGN KEY([SubDepartmentId])
REFERENCES [dbo].[SubDepartment] ([SubDepartmentId])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_SubDepartment]
GO
ALTER TABLE [dbo].[SubDepartment]  WITH CHECK ADD  CONSTRAINT [FK_SubDepartment_Department] FOREIGN KEY([DepartmentId])
REFERENCES [dbo].[Department] ([DepartmentId])
GO
ALTER TABLE [dbo].[SubDepartment] CHECK CONSTRAINT [FK_SubDepartment_Department]
GO
/****** Object:  StoredProcedure [dbo].[sp_Employees]    Script Date: 3/29/2023 8:08:40 AM ******/
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
