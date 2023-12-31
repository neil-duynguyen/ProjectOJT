
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 3/29/2023 4:07:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory]
(
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
	CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Attendances]    Script Date: 3/29/2023 4:07:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Attendances]
(
	[ClassUserId] [int] NOT NULL,
	[Day] [datetime2](7) NOT NULL,
	[AttendanceStatus] [int] NULL,
	[Reason] [nvarchar](1000) NOT NULL,
	[AttendanceId] [int] IDENTITY(1,1) NOT NULL,
	CONSTRAINT [PK_Attendances] PRIMARY KEY CLUSTERED 
(
	[AttendanceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AuditDetail]    Script Date: 3/29/2023 4:07:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AuditDetail]
(
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Feedback] [nvarchar](500) NULL,
	[PlanId] [int] NOT NULL,
	[AuditorId] [int] NULL,
	[TraineeId] [int] NULL,
	[Status] [bit] NULL,
	CONSTRAINT [PK_AuditDetail] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AuditPlan]    Script Date: 3/29/2023 4:07:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AuditPlan]
(
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AuditDate] [datetime2](7) NOT NULL,
	[PlannedBy] [int] NULL,
	[Location] [nvarchar](max) NOT NULL,
	[SyllabusId] [int] NOT NULL,
	[ClassId] [int] NOT NULL,
	CONSTRAINT [PK_AuditPlan] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AuditResult]    Script Date: 3/29/2023 4:07:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AuditResult]
(
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Question] [nvarchar](max) NOT NULL,
	[TraineeAnswer] [nvarchar](max) NOT NULL,
	[Rating] [int] NOT NULL,
	[AuditDetailId] [int] NOT NULL,
	CONSTRAINT [PK_AuditResult] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Class]    Script Date: 3/29/2023 4:07:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Class]
(
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](max) NOT NULL,
	[Location] [int] NULL,
	[AttendeeType] [int] NULL,
	[FSU] [int] NULL,
	[ClassTime] [int] NOT NULL,
	[StartedOn] [datetime2](7) NOT NULL,
	[FinishedOn] [datetime2](7) NOT NULL,
	[Status] [int] NOT NULL,
	[ApprovedOn] [datetime2](7) NOT NULL,
	[ApprovedBy] [int] NULL,
	[TrainingProgramId] [int] NULL,
	[CreatedOn] [datetime2](7) NOT NULL,
	[CreatedBy] [int] NULL,
	[isDeleted] [bit] NOT NULL,
	[LectureFinishedTime] [nvarchar](max) NOT NULL,
	[LectureStartedTime] [nvarchar](max) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[DaysDuration] [int] NOT NULL,
	[TimeDuration] [int] NOT NULL,
	CONSTRAINT [PK_Class] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClassSyllabus]    Script Date: 3/29/2023 4:07:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClassSyllabus]
(
	[ClassesId] [int] NOT NULL,
	[SyllabusesId] [int] NOT NULL,
	CONSTRAINT [PK_ClassSyllabus] PRIMARY KEY CLUSTERED 
(
	[ClassesId] ASC,
	[SyllabusesId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClassUnitDetail]    Script Date: 3/29/2023 4:07:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClassUnitDetail]
(
	[ClassId] [int] NOT NULL,
	[UnitId] [int] NOT NULL,
	[Location] [int] NULL,
	[TrainerId] [int] NULL,
	[DayNo] [int] NULL,
	[OperationDate] [datetime2](7) NULL,
	CONSTRAINT [PK_ClassUnitDetail] PRIMARY KEY CLUSTERED 
(
	[ClassId] ASC,
	[UnitId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClassUsers]    Script Date: 3/29/2023 4:07:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClassUsers]
(
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Role] [int] NOT NULL,
	[ClassId] [int] NOT NULL,
	[UserId] [int] NOT NULL,
	CONSTRAINT [PK_ClassUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FeedBackForms]    Script Date: 3/29/2023 4:07:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FeedBackForms]
(
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Rating] [int] NOT NULL,
	[Comment] [nvarchar](250) NOT NULL,
	[TraineeId] [int] NULL,
	[TrainerId] [int] NULL,
	CONSTRAINT [PK_FeedBackForms] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GradeReports]    Script Date: 3/29/2023 4:07:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GradeReports]
(
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Type] [int] NOT NULL,
	[GradedOn] [datetime2](7) NOT NULL,
	[Grade] [real] NOT NULL,
	[TraineeId] [int] NOT NULL,
	[LectureId] [int] NOT NULL,
	CONSTRAINT [PK_GradeReports] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lectures]    Script Date: 3/29/2023 4:07:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lectures]
(
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Duration] [int] NOT NULL,
	[LessonType] [int] NOT NULL,
	[DeliveryType] [int] NOT NULL,
	[UnitId] [int] NULL,
	[OutputStandardId] [int] NULL,
	CONSTRAINT [PK_Lectures] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OutputStandards]    Script Date: 3/29/2023 4:07:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OutputStandards]
(
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](1000) NOT NULL,
	CONSTRAINT [PK_OutputStandards] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Quiz]    Script Date: 3/29/2023 4:07:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Quiz]
(
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClassId] [int] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Date] [datetime2](7) NULL,
	[QuizStatus] [int] NOT NULL,
	[TimeLimit] [datetime2](7) NULL,
	[CreateTrainerId] [int] NOT NULL,
	[CreatedOn] [datetime2](7) NOT NULL,
	[CreatedBy] [int] NULL,
	[isDeleted] [bit] NOT NULL,
	CONSTRAINT [PK_Quiz] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuizBank]    Script Date: 3/29/2023 4:07:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuizBank]
(
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Question] [nvarchar](max) NOT NULL,
	[Answer] [nvarchar](max) NULL,
	[UnitId] [int] NOT NULL,
	[Grade] [int] NULL,
	[CreatedOn] [datetime2](7) NOT NULL,
	[CreatedBy] [int] NULL,
	[isDeleted] [bit] NOT NULL,
	CONSTRAINT [PK_QuizBank] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuizDetail]    Script Date: 3/29/2023 4:07:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuizDetail]
(
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[QuizId] [int] NOT NULL,
	[QuizBankId] [int] NOT NULL,
	[Grade] [int] NULL,
	CONSTRAINT [PK_QuizDetail] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuizRecord]    Script Date: 3/29/2023 4:07:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuizRecord]
(
	[QuizDetailId] [int] NOT NULL,
	[TraineeId] [int] NOT NULL,
	[TraineeAnswer] [nvarchar](max) NOT NULL,
	[Grade] [float] NOT NULL,
	CONSTRAINT [PK_QuizRecord] PRIMARY KEY CLUSTERED 
(
	[TraineeId] ASC,
	[QuizDetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 3/29/2023 4:07:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role]
(
	[Id] [int] NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[SyllabusPermission] [int] NULL,
	[TrainingProgramPermission] [int] NULL,
	[ClassPermission] [int] NULL,
	[LearningMaterialPermission] [int] NULL,
	[UserPermission] [int] NULL,
	CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Syllabus]    Script Date: 3/29/2023 4:07:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Syllabus]
(
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](10) NOT NULL,
	[Version] [real] NOT NULL,
	[Name] [nvarchar](250) NOT NULL,
	[LastModifiedOn] [datetime2](7) NOT NULL,
	[LastModifiedBy] [int] NULL,
	[Level] [int] NOT NULL,
	[AttendeeNumber] [int] NOT NULL,
	[CourseObjectives] [nvarchar](max) NOT NULL,
	[QuizCriteria] [real] NOT NULL,
	[AssignmentCriteria] [real] NOT NULL,
	[FinalCriteria] [real] NOT NULL,
	[FinalTheoryCriteria] [real] NOT NULL,
	[FinalPracticalCriteria] [real] NOT NULL,
	[PassingGPA] [real] NOT NULL,
	[isActive] [bit] NOT NULL,
	[isDeleted] [bit] NOT NULL,
	[CreatedOn] [datetime2](7) NOT NULL,
	[CreatedBy] [int] NULL,
	[TechnicalRequirements] [nvarchar](max) NOT NULL,
	[DaysDuration] [int] NOT NULL,
	[TimeDuration] [int] NOT NULL,
	[TrainingDeliveryPrinciple] [nvarchar](max) NULL,
	CONSTRAINT [PK_Syllabus] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SyllabusTrainingProgram]    Script Date: 3/29/2023 4:07:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SyllabusTrainingProgram]
(
	[SyllabusesId] [int] NOT NULL,
	[TrainingProgramsId] [int] NOT NULL,
	CONSTRAINT [PK_SyllabusTrainingProgram] PRIMARY KEY CLUSTERED 
(
	[SyllabusesId] ASC,
	[TrainingProgramsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SyllabusUnit]    Script Date: 3/29/2023 4:07:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SyllabusUnit]
(
	[SyllabusesId] [int] NOT NULL,
	[UnitsId] [int] NOT NULL,
	CONSTRAINT [PK_SyllabusUnit] PRIMARY KEY CLUSTERED 
(
	[SyllabusesId] ASC,
	[UnitsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TMS]    Script Date: 3/29/2023 4:07:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TMS]
(
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Time] [datetime2](7) NOT NULL,
	[Reason] [nvarchar](1000) NOT NULL,
	[CheckedBy] [int] NULL,
	[TraineeId] [int] NOT NULL,
	[ApproveStatus] [int] NOT NULL,
	CONSTRAINT [PK_TMS] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TrainingMaterials]    Script Date: 3/29/2023 4:07:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrainingMaterials]
(
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NOT NULL,
	[Url] [nvarchar](max) NOT NULL,
	[LectureId] [int] NOT NULL,
	[EditedOn] [datetime2](7) NOT NULL,
	[EditedBy] [int] NULL,
	[isDeleted] [bit] NOT NULL,
	CONSTRAINT [PK_TrainingMaterials] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TrainingPrograms]    Script Date: 3/29/2023 4:07:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrainingPrograms]
(
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](500) NOT NULL,
	[Duration] [int] NOT NULL,
	[LastModify] [datetime2](7) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[LastModifyBy] [int] NULL,
	[CreatedOn] [datetime2](7) NOT NULL,
	[CreatedBy] [int] NULL,
	[isDeleted] [bit] NOT NULL,
	[DaysDuration] [int] NOT NULL,
	[TimeDuration] [int] NOT NULL,
	CONSTRAINT [PK_TrainingPrograms] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Units]    Script Date: 3/29/2023 4:07:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Units]
(
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NOT NULL,
	[Session] [int] NOT NULL,
	[isDeleted] [bit] NOT NULL,
	[Duration] [int] NOT NULL,
	CONSTRAINT [PK_Units] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 3/29/2023 4:07:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users]
(
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FullName] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](100) NOT NULL,
	[Phone] [nvarchar](10) NOT NULL,
	[DateOfBirth] [datetime2](7) NOT NULL,
	[RoleId] [int] NOT NULL,
	[Level] [int] NULL,
	[Status] [int] NULL,
	[IsMale] [bit] NOT NULL,
	[AvatarURL] [nvarchar](max) NOT NULL,
	[ResetToken] [nvarchar](max) NULL,
	[isDeleted] [bit] NOT NULL,
	CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Index [IX_Attendances_ClassUserId]    Script Date: 3/29/2023 4:07:59 PM ******/
CREATE NONCLUSTERED INDEX [IX_Attendances_ClassUserId] ON [dbo].[Attendances]
(
	[ClassUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_AuditDetail_AuditorId]    Script Date: 3/29/2023 4:07:59 PM ******/
CREATE NONCLUSTERED INDEX [IX_AuditDetail_AuditorId] ON [dbo].[AuditDetail]
(
	[AuditorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_AuditDetail_PlanId]    Script Date: 3/29/2023 4:07:59 PM ******/
CREATE NONCLUSTERED INDEX [IX_AuditDetail_PlanId] ON [dbo].[AuditDetail]
(
	[PlanId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_AuditDetail_TraineeId]    Script Date: 3/29/2023 4:07:59 PM ******/
CREATE NONCLUSTERED INDEX [IX_AuditDetail_TraineeId] ON [dbo].[AuditDetail]
(
	[TraineeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_AuditPlan_ClassId]    Script Date: 3/29/2023 4:07:59 PM ******/
CREATE NONCLUSTERED INDEX [IX_AuditPlan_ClassId] ON [dbo].[AuditPlan]
(
	[ClassId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_AuditPlan_PlannedBy]    Script Date: 3/29/2023 4:07:59 PM ******/
CREATE NONCLUSTERED INDEX [IX_AuditPlan_PlannedBy] ON [dbo].[AuditPlan]
(
	[PlannedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_AuditPlan_SyllabusId]    Script Date: 3/29/2023 4:07:59 PM ******/
CREATE NONCLUSTERED INDEX [IX_AuditPlan_SyllabusId] ON [dbo].[AuditPlan]
(
	[SyllabusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_AuditResult_AuditDetailId]    Script Date: 3/29/2023 4:07:59 PM ******/
CREATE NONCLUSTERED INDEX [IX_AuditResult_AuditDetailId] ON [dbo].[AuditResult]
(
	[AuditDetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Class_ApprovedBy]    Script Date: 3/29/2023 4:07:59 PM ******/
CREATE NONCLUSTERED INDEX [IX_Class_ApprovedBy] ON [dbo].[Class]
(
	[ApprovedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Class_CreatedBy]    Script Date: 3/29/2023 4:07:59 PM ******/
CREATE NONCLUSTERED INDEX [IX_Class_CreatedBy] ON [dbo].[Class]
(
	[CreatedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Class_TrainingProgramId]    Script Date: 3/29/2023 4:07:59 PM ******/
CREATE NONCLUSTERED INDEX [IX_Class_TrainingProgramId] ON [dbo].[Class]
(
	[TrainingProgramId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ClassSyllabus_SyllabusesId]    Script Date: 3/29/2023 4:07:59 PM ******/
CREATE NONCLUSTERED INDEX [IX_ClassSyllabus_SyllabusesId] ON [dbo].[ClassSyllabus]
(
	[SyllabusesId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ClassUnitDetail_TrainerId]    Script Date: 3/29/2023 4:07:59 PM ******/
CREATE NONCLUSTERED INDEX [IX_ClassUnitDetail_TrainerId] ON [dbo].[ClassUnitDetail]
(
	[TrainerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ClassUnitDetail_UnitId]    Script Date: 3/29/2023 4:07:59 PM ******/
CREATE NONCLUSTERED INDEX [IX_ClassUnitDetail_UnitId] ON [dbo].[ClassUnitDetail]
(
	[UnitId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ClassUsers_ClassId]    Script Date: 3/29/2023 4:07:59 PM ******/
CREATE NONCLUSTERED INDEX [IX_ClassUsers_ClassId] ON [dbo].[ClassUsers]
(
	[ClassId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ClassUsers_UserId]    Script Date: 3/29/2023 4:07:59 PM ******/
CREATE NONCLUSTERED INDEX [IX_ClassUsers_UserId] ON [dbo].[ClassUsers]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_FeedBackForms_TraineeId]    Script Date: 3/29/2023 4:07:59 PM ******/
CREATE NONCLUSTERED INDEX [IX_FeedBackForms_TraineeId] ON [dbo].[FeedBackForms]
(
	[TraineeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_FeedBackForms_TrainerId]    Script Date: 3/29/2023 4:07:59 PM ******/
CREATE NONCLUSTERED INDEX [IX_FeedBackForms_TrainerId] ON [dbo].[FeedBackForms]
(
	[TrainerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_GradeReports_LectureId]    Script Date: 3/29/2023 4:07:59 PM ******/
CREATE NONCLUSTERED INDEX [IX_GradeReports_LectureId] ON [dbo].[GradeReports]
(
	[LectureId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_GradeReports_TraineeId]    Script Date: 3/29/2023 4:07:59 PM ******/
CREATE NONCLUSTERED INDEX [IX_GradeReports_TraineeId] ON [dbo].[GradeReports]
(
	[TraineeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Lectures_OutputStandardId]    Script Date: 3/29/2023 4:07:59 PM ******/
CREATE NONCLUSTERED INDEX [IX_Lectures_OutputStandardId] ON [dbo].[Lectures]
(
	[OutputStandardId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Lectures_UnitId]    Script Date: 3/29/2023 4:07:59 PM ******/
CREATE NONCLUSTERED INDEX [IX_Lectures_UnitId] ON [dbo].[Lectures]
(
	[UnitId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Quiz_ClassId]    Script Date: 3/29/2023 4:07:59 PM ******/
CREATE NONCLUSTERED INDEX [IX_Quiz_ClassId] ON [dbo].[Quiz]
(
	[ClassId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Quiz_CreateTrainerId]    Script Date: 3/29/2023 4:07:59 PM ******/
CREATE NONCLUSTERED INDEX [IX_Quiz_CreateTrainerId] ON [dbo].[Quiz]
(
	[CreateTrainerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_QuizBank_CreatedBy]    Script Date: 3/29/2023 4:07:59 PM ******/
CREATE NONCLUSTERED INDEX [IX_QuizBank_CreatedBy] ON [dbo].[QuizBank]
(
	[CreatedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_QuizBank_UnitId]    Script Date: 3/29/2023 4:07:59 PM ******/
CREATE NONCLUSTERED INDEX [IX_QuizBank_UnitId] ON [dbo].[QuizBank]
(
	[UnitId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_QuizDetail_QuizBankId]    Script Date: 3/29/2023 4:07:59 PM ******/
CREATE NONCLUSTERED INDEX [IX_QuizDetail_QuizBankId] ON [dbo].[QuizDetail]
(
	[QuizBankId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_QuizDetail_QuizId]    Script Date: 3/29/2023 4:07:59 PM ******/
CREATE NONCLUSTERED INDEX [IX_QuizDetail_QuizId] ON [dbo].[QuizDetail]
(
	[QuizId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_QuizRecord_QuizDetailId]    Script Date: 3/29/2023 4:07:59 PM ******/
CREATE NONCLUSTERED INDEX [IX_QuizRecord_QuizDetailId] ON [dbo].[QuizRecord]
(
	[QuizDetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Role_Name]    Script Date: 3/29/2023 4:07:59 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Role_Name] ON [dbo].[Role]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Syllabus_CreatedBy]    Script Date: 3/29/2023 4:07:59 PM ******/
CREATE NONCLUSTERED INDEX [IX_Syllabus_CreatedBy] ON [dbo].[Syllabus]
(
	[CreatedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Syllabus_LastModifiedBy]    Script Date: 3/29/2023 4:07:59 PM ******/
CREATE NONCLUSTERED INDEX [IX_Syllabus_LastModifiedBy] ON [dbo].[Syllabus]
(
	[LastModifiedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_SyllabusTrainingProgram_TrainingProgramsId]    Script Date: 3/29/2023 4:07:59 PM ******/
CREATE NONCLUSTERED INDEX [IX_SyllabusTrainingProgram_TrainingProgramsId] ON [dbo].[SyllabusTrainingProgram]
(
	[TrainingProgramsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_SyllabusUnit_UnitsId]    Script Date: 3/29/2023 4:07:59 PM ******/
CREATE NONCLUSTERED INDEX [IX_SyllabusUnit_UnitsId] ON [dbo].[SyllabusUnit]
(
	[UnitsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_TMS_CheckedBy]    Script Date: 3/29/2023 4:07:59 PM ******/
CREATE NONCLUSTERED INDEX [IX_TMS_CheckedBy] ON [dbo].[TMS]
(
	[CheckedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_TMS_TraineeId]    Script Date: 3/29/2023 4:07:59 PM ******/
CREATE NONCLUSTERED INDEX [IX_TMS_TraineeId] ON [dbo].[TMS]
(
	[TraineeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_TrainingMaterials_EditedBy]    Script Date: 3/29/2023 4:07:59 PM ******/
CREATE NONCLUSTERED INDEX [IX_TrainingMaterials_EditedBy] ON [dbo].[TrainingMaterials]
(
	[EditedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_TrainingMaterials_LectureId]    Script Date: 3/29/2023 4:07:59 PM ******/
CREATE NONCLUSTERED INDEX [IX_TrainingMaterials_LectureId] ON [dbo].[TrainingMaterials]
(
	[LectureId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_TrainingPrograms_CreatedBy]    Script Date: 3/29/2023 4:07:59 PM ******/
CREATE NONCLUSTERED INDEX [IX_TrainingPrograms_CreatedBy] ON [dbo].[TrainingPrograms]
(
	[CreatedBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_TrainingPrograms_LastModifyBy]    Script Date: 3/29/2023 4:07:59 PM ******/
CREATE NONCLUSTERED INDEX [IX_TrainingPrograms_LastModifyBy] ON [dbo].[TrainingPrograms]
(
	[LastModifyBy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Users_Email]    Script Date: 3/29/2023 4:07:59 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Users_Email] ON [dbo].[Users]
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Users_RoleId]    Script Date: 3/29/2023 4:07:59 PM ******/
CREATE NONCLUSTERED INDEX [IX_Users_RoleId] ON [dbo].[Users]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Class] ADD  DEFAULT (CONVERT([bit],(0))) FOR [isDeleted]
GO
ALTER TABLE [dbo].[Class] ADD  DEFAULT (N'') FOR [LectureFinishedTime]
GO
ALTER TABLE [dbo].[Class] ADD  DEFAULT (N'') FOR [LectureStartedTime]
GO
ALTER TABLE [dbo].[Class] ADD  DEFAULT (N'') FOR [Name]
GO
ALTER TABLE [dbo].[Class] ADD  DEFAULT ((0)) FOR [DaysDuration]
GO
ALTER TABLE [dbo].[Class] ADD  DEFAULT ((0)) FOR [TimeDuration]
GO
ALTER TABLE [dbo].[Syllabus] ADD  DEFAULT (N'') FOR [TechnicalRequirements]
GO
ALTER TABLE [dbo].[Syllabus] ADD  DEFAULT ((0)) FOR [DaysDuration]
GO
ALTER TABLE [dbo].[Syllabus] ADD  DEFAULT ((0)) FOR [TimeDuration]
GO
ALTER TABLE [dbo].[TMS] ADD  DEFAULT ((0)) FOR [ApproveStatus]
GO
ALTER TABLE [dbo].[TrainingMaterials] ADD  DEFAULT (CONVERT([bit],(0))) FOR [isDeleted]
GO
ALTER TABLE [dbo].[TrainingPrograms] ADD  DEFAULT (CONVERT([bit],(0))) FOR [isDeleted]
GO
ALTER TABLE [dbo].[TrainingPrograms] ADD  DEFAULT ((0)) FOR [DaysDuration]
GO
ALTER TABLE [dbo].[TrainingPrograms] ADD  DEFAULT ((0)) FOR [TimeDuration]
GO
ALTER TABLE [dbo].[Units] ADD  DEFAULT (CONVERT([bit],(0))) FOR [isDeleted]
GO
ALTER TABLE [dbo].[Units] ADD  DEFAULT ((0)) FOR [Duration]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT (CONVERT([bit],(0))) FOR [isDeleted]
GO
ALTER TABLE [dbo].[Attendances]  WITH NOCHECK ADD  CONSTRAINT [FK_Attendances_ClassUsers_ClassUserId] FOREIGN KEY([ClassUserId])
REFERENCES [dbo].[ClassUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Attendances] CHECK CONSTRAINT [FK_Attendances_ClassUsers_ClassUserId]
GO
ALTER TABLE [dbo].[AuditDetail]  WITH NOCHECK ADD  CONSTRAINT [FK_AuditDetail_AuditPlan_PlanId] FOREIGN KEY([PlanId])
REFERENCES [dbo].[AuditPlan] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AuditDetail] CHECK CONSTRAINT [FK_AuditDetail_AuditPlan_PlanId]
GO
ALTER TABLE [dbo].[AuditDetail]  WITH NOCHECK ADD  CONSTRAINT [FK_AuditDetail_Users_AuditorId] FOREIGN KEY([AuditorId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[AuditDetail] CHECK CONSTRAINT [FK_AuditDetail_Users_AuditorId]
GO
ALTER TABLE [dbo].[AuditDetail]  WITH NOCHECK ADD  CONSTRAINT [FK_AuditDetail_Users_TraineeId] FOREIGN KEY([TraineeId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[AuditDetail] CHECK CONSTRAINT [FK_AuditDetail_Users_TraineeId]
GO
ALTER TABLE [dbo].[AuditPlan]  WITH NOCHECK ADD  CONSTRAINT [FK_AuditPlan_Class_ClassId] FOREIGN KEY([ClassId])
REFERENCES [dbo].[Class] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AuditPlan] CHECK CONSTRAINT [FK_AuditPlan_Class_ClassId]
GO
ALTER TABLE [dbo].[AuditPlan]  WITH NOCHECK ADD  CONSTRAINT [FK_AuditPlan_Syllabus_SyllabusId] FOREIGN KEY([SyllabusId])
REFERENCES [dbo].[Syllabus] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AuditPlan] CHECK CONSTRAINT [FK_AuditPlan_Syllabus_SyllabusId]
GO
ALTER TABLE [dbo].[AuditPlan]  WITH NOCHECK ADD  CONSTRAINT [FK_AuditPlan_Users_PlannedBy] FOREIGN KEY([PlannedBy])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[AuditPlan] CHECK CONSTRAINT [FK_AuditPlan_Users_PlannedBy]
GO
ALTER TABLE [dbo].[AuditResult]  WITH NOCHECK ADD  CONSTRAINT [FK_AuditResult_AuditDetail_AuditDetailId] FOREIGN KEY([AuditDetailId])
REFERENCES [dbo].[AuditDetail] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AuditResult] CHECK CONSTRAINT [FK_AuditResult_AuditDetail_AuditDetailId]
GO
ALTER TABLE [dbo].[Class]  WITH NOCHECK ADD  CONSTRAINT [FK_Class_TrainingPrograms_TrainingProgramId] FOREIGN KEY([TrainingProgramId])
REFERENCES [dbo].[TrainingPrograms] ([Id])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Class] CHECK CONSTRAINT [FK_Class_TrainingPrograms_TrainingProgramId]
GO
ALTER TABLE [dbo].[Class]  WITH NOCHECK ADD  CONSTRAINT [FK_Class_Users_ApprovedBy] FOREIGN KEY([ApprovedBy])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Class] CHECK CONSTRAINT [FK_Class_Users_ApprovedBy]
GO
ALTER TABLE [dbo].[Class]  WITH NOCHECK ADD  CONSTRAINT [FK_Class_Users_CreatedBy] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Class] CHECK CONSTRAINT [FK_Class_Users_CreatedBy]
GO
ALTER TABLE [dbo].[ClassSyllabus]  WITH NOCHECK ADD  CONSTRAINT [FK_ClassSyllabus_Class_ClassesId] FOREIGN KEY([ClassesId])
REFERENCES [dbo].[Class] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ClassSyllabus] CHECK CONSTRAINT [FK_ClassSyllabus_Class_ClassesId]
GO
ALTER TABLE [dbo].[ClassSyllabus]  WITH NOCHECK ADD  CONSTRAINT [FK_ClassSyllabus_Syllabus_SyllabusesId] FOREIGN KEY([SyllabusesId])
REFERENCES [dbo].[Syllabus] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ClassSyllabus] CHECK CONSTRAINT [FK_ClassSyllabus_Syllabus_SyllabusesId]
GO
ALTER TABLE [dbo].[ClassUnitDetail]  WITH NOCHECK ADD  CONSTRAINT [FK_ClassUnitDetail_Class_ClassId] FOREIGN KEY([ClassId])
REFERENCES [dbo].[Class] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ClassUnitDetail] CHECK CONSTRAINT [FK_ClassUnitDetail_Class_ClassId]
GO
ALTER TABLE [dbo].[ClassUnitDetail]  WITH NOCHECK ADD  CONSTRAINT [FK_ClassUnitDetail_Units_UnitId] FOREIGN KEY([UnitId])
REFERENCES [dbo].[Units] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ClassUnitDetail] CHECK CONSTRAINT [FK_ClassUnitDetail_Units_UnitId]
GO
ALTER TABLE [dbo].[ClassUnitDetail]  WITH NOCHECK ADD  CONSTRAINT [FK_ClassUnitDetail_Users_TrainerId] FOREIGN KEY([TrainerId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[ClassUnitDetail] CHECK CONSTRAINT [FK_ClassUnitDetail_Users_TrainerId]
GO
ALTER TABLE [dbo].[ClassUsers]  WITH NOCHECK ADD  CONSTRAINT [FK_ClassUsers_Class_ClassId] FOREIGN KEY([ClassId])
REFERENCES [dbo].[Class] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ClassUsers] CHECK CONSTRAINT [FK_ClassUsers_Class_ClassId]
GO
ALTER TABLE [dbo].[ClassUsers]  WITH NOCHECK ADD  CONSTRAINT [FK_ClassUsers_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ClassUsers] CHECK CONSTRAINT [FK_ClassUsers_Users_UserId]
GO
ALTER TABLE [dbo].[FeedBackForms]  WITH NOCHECK ADD  CONSTRAINT [FK_FeedBackForms_Users_TraineeId] FOREIGN KEY([TraineeId])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[FeedBackForms] CHECK CONSTRAINT [FK_FeedBackForms_Users_TraineeId]
GO
ALTER TABLE [dbo].[FeedBackForms]  WITH NOCHECK ADD  CONSTRAINT [FK_FeedBackForms_Users_TrainerId] FOREIGN KEY([TrainerId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[FeedBackForms] CHECK CONSTRAINT [FK_FeedBackForms_Users_TrainerId]
GO
ALTER TABLE [dbo].[GradeReports]  WITH NOCHECK ADD  CONSTRAINT [FK_GradeReports_Lectures_LectureId] FOREIGN KEY([LectureId])
REFERENCES [dbo].[Lectures] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[GradeReports] CHECK CONSTRAINT [FK_GradeReports_Lectures_LectureId]
GO
ALTER TABLE [dbo].[GradeReports]  WITH NOCHECK ADD  CONSTRAINT [FK_GradeReports_Users_TraineeId] FOREIGN KEY([TraineeId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[GradeReports] CHECK CONSTRAINT [FK_GradeReports_Users_TraineeId]
GO
ALTER TABLE [dbo].[Lectures]  WITH NOCHECK ADD  CONSTRAINT [FK_Lectures_OutputStandards_OutputStandardId] FOREIGN KEY([OutputStandardId])
REFERENCES [dbo].[OutputStandards] ([Id])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Lectures] CHECK CONSTRAINT [FK_Lectures_OutputStandards_OutputStandardId]
GO
ALTER TABLE [dbo].[Lectures]  WITH NOCHECK ADD  CONSTRAINT [FK_Lectures_Units_UnitId] FOREIGN KEY([UnitId])
REFERENCES [dbo].[Units] ([Id])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Lectures] CHECK CONSTRAINT [FK_Lectures_Units_UnitId]
GO
ALTER TABLE [dbo].[Quiz]  WITH CHECK ADD  CONSTRAINT [FK_Quiz_Class_ClassId] FOREIGN KEY([ClassId])
REFERENCES [dbo].[Class] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Quiz] CHECK CONSTRAINT [FK_Quiz_Class_ClassId]
GO
ALTER TABLE [dbo].[Quiz]  WITH CHECK ADD  CONSTRAINT [FK_Quiz_Users_CreateTrainerId] FOREIGN KEY([CreateTrainerId])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Quiz] CHECK CONSTRAINT [FK_Quiz_Users_CreateTrainerId]
GO
ALTER TABLE [dbo].[QuizBank]  WITH CHECK ADD  CONSTRAINT [FK_QuizBank_Units_UnitId] FOREIGN KEY([UnitId])
REFERENCES [dbo].[Units] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[QuizBank] CHECK CONSTRAINT [FK_QuizBank_Units_UnitId]
GO
ALTER TABLE [dbo].[QuizBank]  WITH CHECK ADD  CONSTRAINT [FK_QuizBank_Users_CreatedBy] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[QuizBank] CHECK CONSTRAINT [FK_QuizBank_Users_CreatedBy]
GO
ALTER TABLE [dbo].[QuizDetail]  WITH CHECK ADD  CONSTRAINT [FK_QuizDetail_Quiz_QuizId] FOREIGN KEY([QuizId])
REFERENCES [dbo].[Quiz] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[QuizDetail] CHECK CONSTRAINT [FK_QuizDetail_Quiz_QuizId]
GO
ALTER TABLE [dbo].[QuizDetail]  WITH CHECK ADD  CONSTRAINT [FK_QuizDetail_QuizBank_QuizBankId] FOREIGN KEY([QuizBankId])
REFERENCES [dbo].[QuizBank] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[QuizDetail] CHECK CONSTRAINT [FK_QuizDetail_QuizBank_QuizBankId]
GO
ALTER TABLE [dbo].[QuizRecord]  WITH CHECK ADD  CONSTRAINT [FK_QuizRecord_QuizDetail_QuizDetailId] FOREIGN KEY([QuizDetailId])
REFERENCES [dbo].[QuizDetail] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[QuizRecord] CHECK CONSTRAINT [FK_QuizRecord_QuizDetail_QuizDetailId]
GO
ALTER TABLE [dbo].[QuizRecord]  WITH CHECK ADD  CONSTRAINT [FK_QuizRecord_Users_TraineeId] FOREIGN KEY([TraineeId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[QuizRecord] CHECK CONSTRAINT [FK_QuizRecord_Users_TraineeId]
GO
ALTER TABLE [dbo].[Syllabus]  WITH NOCHECK ADD  CONSTRAINT [FK_Syllabus_Users_CreatedBy] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Syllabus] CHECK CONSTRAINT [FK_Syllabus_Users_CreatedBy]
GO
ALTER TABLE [dbo].[Syllabus]  WITH NOCHECK ADD  CONSTRAINT [FK_Syllabus_Users_LastModifiedBy] FOREIGN KEY([LastModifiedBy])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Syllabus] CHECK CONSTRAINT [FK_Syllabus_Users_LastModifiedBy]
GO
ALTER TABLE [dbo].[SyllabusTrainingProgram]  WITH NOCHECK ADD  CONSTRAINT [FK_SyllabusTrainingProgram_Syllabus_SyllabusesId] FOREIGN KEY([SyllabusesId])
REFERENCES [dbo].[Syllabus] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SyllabusTrainingProgram] CHECK CONSTRAINT [FK_SyllabusTrainingProgram_Syllabus_SyllabusesId]
GO
ALTER TABLE [dbo].[SyllabusTrainingProgram]  WITH NOCHECK ADD  CONSTRAINT [FK_SyllabusTrainingProgram_TrainingPrograms_TrainingProgramsId] FOREIGN KEY([TrainingProgramsId])
REFERENCES [dbo].[TrainingPrograms] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SyllabusTrainingProgram] CHECK CONSTRAINT [FK_SyllabusTrainingProgram_TrainingPrograms_TrainingProgramsId]
GO
ALTER TABLE [dbo].[SyllabusUnit]  WITH NOCHECK ADD  CONSTRAINT [FK_SyllabusUnit_Syllabus_SyllabusesId] FOREIGN KEY([SyllabusesId])
REFERENCES [dbo].[Syllabus] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SyllabusUnit] CHECK CONSTRAINT [FK_SyllabusUnit_Syllabus_SyllabusesId]
GO
ALTER TABLE [dbo].[SyllabusUnit]  WITH NOCHECK ADD  CONSTRAINT [FK_SyllabusUnit_Units_UnitsId] FOREIGN KEY([UnitsId])
REFERENCES [dbo].[Units] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SyllabusUnit] CHECK CONSTRAINT [FK_SyllabusUnit_Units_UnitsId]
GO
ALTER TABLE [dbo].[TMS]  WITH NOCHECK ADD  CONSTRAINT [FK_TMS_Users_CheckedBy] FOREIGN KEY([CheckedBy])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[TMS] CHECK CONSTRAINT [FK_TMS_Users_CheckedBy]
GO
ALTER TABLE [dbo].[TMS]  WITH NOCHECK ADD  CONSTRAINT [FK_TMS_Users_TraineeId] FOREIGN KEY([TraineeId])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TMS] CHECK CONSTRAINT [FK_TMS_Users_TraineeId]
GO
ALTER TABLE [dbo].[TrainingMaterials]  WITH NOCHECK ADD  CONSTRAINT [FK_TrainingMaterials_Lectures_LectureId] FOREIGN KEY([LectureId])
REFERENCES [dbo].[Lectures] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TrainingMaterials] CHECK CONSTRAINT [FK_TrainingMaterials_Lectures_LectureId]
GO
ALTER TABLE [dbo].[TrainingMaterials]  WITH NOCHECK ADD  CONSTRAINT [FK_TrainingMaterials_Users_EditedBy] FOREIGN KEY([EditedBy])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TrainingMaterials] CHECK CONSTRAINT [FK_TrainingMaterials_Users_EditedBy]
GO
ALTER TABLE [dbo].[TrainingPrograms]  WITH NOCHECK ADD  CONSTRAINT [FK_TrainingPrograms_Users_CreatedBy] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[TrainingPrograms] CHECK CONSTRAINT [FK_TrainingPrograms_Users_CreatedBy]
GO
ALTER TABLE [dbo].[TrainingPrograms]  WITH NOCHECK ADD  CONSTRAINT [FK_TrainingPrograms_Users_LastModifyBy] FOREIGN KEY([LastModifyBy])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[TrainingPrograms] CHECK CONSTRAINT [FK_TrainingPrograms_Users_LastModifyBy]
GO
ALTER TABLE [dbo].[Users]  WITH NOCHECK ADD  CONSTRAINT [FK_Users_Role_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Role] ([Id])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Role_RoleId]
GO

DECLARE @sql NVARCHAR(MAX) = N'';

SELECT @sql += 
    N'DROP TRIGGER ' + 
    QUOTENAME(OBJECT_SCHEMA_NAME(t.object_id)) + N'.' + 
    QUOTENAME(t.name) + N'; ' + NCHAR(13)
FROM sys.triggers AS t
WHERE t.is_ms_shipped = 0
	AND t.parent_class_desc = N'OBJECT_OR_COLUMN';

EXEC(@sql);

/****** Object:  Trigger [dbo].[trgAuditResultInsert]    Script Date: 3/29/2023 4:07:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[trgAuditResultInsert]
                ON [dbo].[AuditResult]
                AFTER INSERT AS
                DECLARE @NumOfQuestion INT, @OverallRating INT, @MaxRating INT, @Average FLOAT, @Status BIT
                SELECT @NumOfQuestion = (SELECT COUNT(*)
	FROM AuditResult
		JOIN inserted ON dbo.AuditResult.AuditDetailId = inserted.AuditDetailId)
                SELECT @MaxRating = @NumOfQuestion * 3
                SELECT @OverallRating = (SELECT SUM(AuditResult.Rating)
	FROM AuditResult
		JOIN inserted ON dbo.AuditResult.AuditDetailId = inserted.AuditDetailId)
                SELECT @Average = CAST(@OverallRating AS FLOAT) / CAST(@MaxRating AS FLOAT)
                IF (@Average * 100) >= 50
                BEGIN
	set @Status = 1
END
                ELSE IF (@Average * 100) < 50
                BEGIN
	set @Status = 0
END
                BEGIN
	Update dbo.AuditDetail 
	                set dbo.AuditDetail.Status = @Status
	                FROM dbo.AuditDetail
		JOIN inserted ON dbo.AuditDetail.Id = inserted.AuditDetailId
END
GO
ALTER TABLE [dbo].[AuditResult] ENABLE TRIGGER [trgAuditResultInsert]
GO
/****** Object:  Trigger [dbo].[trgLectureDelete]    Script Date: 3/29/2023 4:07:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[trgLectureDelete]
                ON [dbo].[Lectures] 
                FOR DELETE AS
                BEGIN
	Update dbo.Units 
	                set dbo.Units.Duration = dbo.Units.Duration - (
		                Select top 1
		duration
	FROM deleted
	Where UnitId = dbo.Units.Id
	                )
	                from dbo.Units
		Join deleted ON dbo.Units.Id = deleted.UnitId
END
GO
ALTER TABLE [dbo].[Lectures] ENABLE TRIGGER [trgLectureDelete]
GO
/****** Object:  Trigger [dbo].[trgLectureInsert]    Script Date: 3/29/2023 4:07:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[trgLectureInsert]
                ON [dbo].[Lectures] 
                AFTER INSERT AS
                BEGIN
	Update dbo.Units 
	                set dbo.Units.Duration = dbo.Units.Duration + (
		                Select top 1
		duration
	FROM inserted
	Where UnitId = dbo.Units.Id
	                )
	                from dbo.Units
		Join inserted ON dbo.Units.Id = inserted.UnitId
END
GO
ALTER TABLE [dbo].[Lectures] ENABLE TRIGGER [trgLectureInsert]
GO
/****** Object:  Trigger [dbo].[trgLectureUpdate]    Script Date: 3/29/2023 4:07:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[trgLectureUpdate]
                ON [dbo].[Lectures] 
                AFTER UPDATE AS
                BEGIN
	Update dbo.Units 
	                set dbo.Units.Duration = dbo.Units.Duration - 
	                (Select top 1
		duration
	FROM deleted
	Where UnitId = dbo.Units.Id) + 
	                (Select top 1
		duration
	FROM inserted
	Where UnitId = dbo.Units.Id)
	                from dbo.Units
		Join deleted ON dbo.Units.Id = deleted.UnitId
END
                
GO
ALTER TABLE [dbo].[Lectures] ENABLE TRIGGER [trgLectureUpdate]
GO
CREATE TRIGGER dbo.trgSyllabusTrainingProgramInsert
ON dbo.SyllabusTrainingProgram
AFTER INSERT AS
BEGIN
	Update dbo.TrainingPrograms 
	set dbo.TrainingPrograms.TimeDuration = dbo.TrainingPrograms.TimeDuration + (
		Select SUM(Syllabus.timeDuration)
		FROM dbo.Syllabus join  inserted on dbo.Syllabus.Id = inserted.SyllabusesId
		Where inserted.SyllabusesId = dbo.Syllabus.Id
	), dbo.TrainingPrograms.DaysDuration = dbo.TrainingPrograms.DaysDuration + (
		Select SUM(Syllabus.DaysDuration)
		FROM dbo.Syllabus join  inserted on dbo.Syllabus.Id = inserted.SyllabusesId
		Where inserted.SyllabusesId = dbo.Syllabus.Id
	)
	from dbo.TrainingPrograms
	Join inserted ON dbo.TrainingPrograms.Id = inserted.TrainingProgramsId
END
GO
Drop Trigger if exists dbo.trgSyllabusTrainingProgramDelete
go
CREATE TRIGGER dbo.trgSyllabusTrainingProgramDelete
ON dbo.SyllabusTrainingProgram
AFTER Delete AS
BEGIN
	Update dbo.TrainingPrograms 
	set dbo.TrainingPrograms.TimeDuration = dbo.TrainingPrograms.TimeDuration - (
		Select SUM( timeDuration)
		FROM dbo.Syllabus join  deleted on dbo.Syllabus.Id = deleted.SyllabusesId
		Where deleted.SyllabusesId = dbo.Syllabus.Id
	),dbo.TrainingPrograms.DaysDuration = dbo.TrainingPrograms.DaysDuration - (
		Select SUm( Syllabus.DaysDuration)
		FROM dbo.Syllabus join  deleted on dbo.Syllabus.Id = deleted.SyllabusesId
		Where deleted.SyllabusesId = dbo.Syllabus.Id
	)
	from dbo.TrainingPrograms
	Join deleted ON dbo.TrainingPrograms.Id = deleted.TrainingProgramsId
END
GO

/****** Object:  Trigger [dbo].[trgSyllabusUnitInsert]    Script Date: 3/29/2023 4:07:59 PM ******/
CREATE TRIGGER dbo.trgSyllabusUnitInsert
ON dbo.SyllabusUnit
AFTER INSERT AS
DECLARE @MaxDay INT
SELECT @MaxDay = (SELECT MAX(u.Session)
                  FROM inserted, Units u, Syllabus s, SyllabusUnit su
				  WHERE su.SyllabusesId = s.Id and su.UnitsId = u.Id and su.SyllabusesId = inserted.SyllabusesId)
DECLARE @TotalHours INT 
SELECT @TotalHours = (SELECT Sum(u.Duration)
                      FROM inserted, Units u, Syllabus s, SyllabusUnit su
				      WHERE su.SyllabusesId = s.Id and su.UnitsId = u.Id and su.SyllabusesId = inserted.SyllabusesId)/60
BEGIN
    Update dbo.Syllabus
	set dbo.Syllabus.DaysDuration = @MaxDay, dbo.Syllabus.TimeDuration = @TotalHours
	FROM dbo.Syllabus, inserted
	WHERE dbo.Syllabus.Id = inserted.SyllabusesId
END
Go

/****** Object:  Trigger [dbo].[trgSyllabusUnitDelete]    Script Date: 3/29/2023 4:07:59 PM ******/
CREATE TRIGGER dbo.trgSyllabusUnitDelete
ON dbo.SyllabusUnit
AFTER DELETE AS
DECLARE @MaxDay INT
SELECT @MaxDay = (SELECT MAX(u.Session)
                  FROM deleted, Units u, Syllabus s, SyllabusUnit su
				  WHERE su.SyllabusesId = s.Id and su.UnitsId = u.Id and su.SyllabusesId = deleted.SyllabusesId)
DECLARE @TotalHours INT 
SELECT @TotalHours = (SELECT Sum(u.Duration)
                      FROM deleted, Units u, Syllabus s, SyllabusUnit su
				      WHERE su.SyllabusesId = s.Id and su.UnitsId = u.Id and su.SyllabusesId = deleted.SyllabusesId)/60
BEGIN
    Update dbo.Syllabus
	set dbo.Syllabus.DaysDuration = @MaxDay, dbo.Syllabus.TimeDuration = @TotalHours
	FROM dbo.Syllabus, deleted
	WHERE dbo.Syllabus.Id = deleted.SyllabusesId
END
Go

/****** Object:  Trigger [dbo].[trgUnitUpdate]    Script Date: 3/29/2023 4:07:59 PM ******/
CREATE TRIGGER dbo.trgUnitUpdate
ON dbo.Units
AFTER UPDATE AS
DECLARE @MaxDay INT
SELECT @MaxDay = (Select Max(u.Session)
                 FROM SyllabusUnit su, Syllabus s, Units u
				 WHERE su.SyllabusesId = s.Id and su.UnitsId = u.Id and su.SyllabusesId = (SELECT SyllabusUnit.SyllabusesId
																						   FROM inserted, SyllabusUnit
																						   WHERE inserted.Id = SyllabusUnit.UnitsId))
DECLARE @TotalHours INT 
SELECT @TotalHours = (Select Sum(u.Duration)
                      FROM SyllabusUnit su, Syllabus s, Units u
				      WHERE su.SyllabusesId = s.Id and su.UnitsId = u.Id and su.SyllabusesId = (SELECT SyllabusUnit.SyllabusesId
																						        FROM inserted, SyllabusUnit
																						        WHERE inserted.Id = SyllabusUnit.UnitsId))/60
BEGIN
    Update dbo.Syllabus
	set dbo.Syllabus.DaysDuration = @MaxDay, dbo.Syllabus.TimeDuration = @TotalHours
	FROM dbo.Syllabus, dbo.SyllabusUnit, inserted
	WHERE dbo.SyllabusUnit.UnitsId = inserted.Id and dbo.Syllabus.Id =  SyllabusUnit.SyllabusesId
END
Go