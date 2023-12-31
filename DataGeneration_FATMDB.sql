﻿USE [FATMSDB]

--
-- Delete data from the table 'dbo.TrainingMaterials'
--
TRUNCATE TABLE dbo.TrainingMaterials
GO
--
-- Delete data from the table 'dbo.TMS'
--
TRUNCATE TABLE dbo.TMS
GO
--
-- Delete data from the table 'dbo.SyllabusUnit'
--
TRUNCATE TABLE dbo.SyllabusUnit
GO
--
-- Delete data from the table 'dbo.SyllabusTrainingProgram'
--
TRUNCATE TABLE dbo.SyllabusTrainingProgram
GO
--
-- Delete data from the table 'dbo.QuizRecord'
--
TRUNCATE TABLE dbo.QuizRecord
GO
--
-- Delete data from the table 'dbo.GradeReports'
--
TRUNCATE TABLE dbo.GradeReports
GO
--
-- Delete data from the table 'dbo.FeedBackForms'
--
TRUNCATE TABLE dbo.FeedBackForms
GO
--
-- Delete data from the table 'dbo.ClassUnitDetail'
--
TRUNCATE TABLE dbo.ClassUnitDetail
GO
--
-- Delete data from the table 'dbo.ClassSyllabus'
--
TRUNCATE TABLE dbo.ClassSyllabus
GO
--
-- Delete data from the table 'dbo.AuditResult'
--
TRUNCATE TABLE dbo.AuditResult
GO
--
-- Delete data from the table 'dbo.Attendances'
--
TRUNCATE TABLE dbo.Attendances
GO
--
-- Delete data from the table 'dbo.QuizDetail'
--
DELETE dbo.QuizDetail
GO
--
-- Delete data from the table 'dbo.ClassUsers'
--
DELETE dbo.ClassUsers
GO
--
-- Delete data from the table 'dbo.AuditDetail'
--
DELETE dbo.AuditDetail
GO
--
-- Delete data from the table 'dbo.Quiz'
--
DELETE dbo.Quiz
GO
--
-- Delete data from the table 'dbo.AuditPlan'
--
DELETE dbo.AuditPlan
GO
--
-- Delete data from the table 'dbo.Class'
--
DELETE dbo.Class
GO
--
-- Delete data from the table 'dbo.TrainingPrograms'
--
DELETE dbo.TrainingPrograms
GO
--
-- Delete data from the table 'dbo.Syllabus'
--
DELETE dbo.Syllabus
GO
--
-- Delete data from the table 'dbo.QuizBank'
--
DELETE dbo.QuizBank
GO
--
-- Delete data from the table 'dbo.Users'
--
DELETE dbo.Users
GO
--
-- Delete data from the table 'dbo.Lectures'
--
DELETE dbo.Lectures
GO
--
-- Delete data from the table 'dbo.Units'
--
DELETE dbo.Units
GO
--
-- Delete data from the table 'dbo.Role'
--
DELETE dbo.Role
GO
--
-- Delete data from the table 'dbo.OutputStandards'
--
DELETE dbo.OutputStandards
GO
GO
INSERT [dbo].[Role] ([Id], [Name], [SyllabusPermission], [TrainingProgramPermission], [ClassPermission], [LearningMaterialPermission], [UserPermission]) VALUES (1, N'Super Admin', 5, 5, 5, 5, 5)
GO
INSERT [dbo].[Role] ([Id], [Name], [SyllabusPermission], [TrainingProgramPermission], [ClassPermission], [LearningMaterialPermission], [UserPermission]) VALUES (2, N'Class Admin', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Role] ([Id], [Name], [SyllabusPermission], [TrainingProgramPermission], [ClassPermission], [LearningMaterialPermission], [UserPermission]) VALUES (3, N'Trainer', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Role] ([Id], [Name], [SyllabusPermission], [TrainingProgramPermission], [ClassPermission], [LearningMaterialPermission], [UserPermission]) VALUES (4, N'Auditor', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Role] ([Id], [Name], [SyllabusPermission], [TrainingProgramPermission], [ClassPermission], [LearningMaterialPermission], [UserPermission]) VALUES (5, N'Trainee', NULL, NULL, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Users] ON 
GO
INSERT [dbo].[Users] ([Id], [FullName], [Email], [Password], [Phone], [DateOfBirth], [RoleId], [Level], [Status], [IsMale], [AvatarURL], [ResetToken], [isDeleted]) VALUES (1, N'Magdalen Abreu', N'Benton_Abreu83@example.com', N'96cae35ce8a9b0244178bf28e4966c2ce1b8385723a96a6b838858cdd6ca0a1e', N'164-4022', CAST(N'1991-11-02T00:00:00.0000000' AS DateTime2), 3, 1, 4, 0, N'https://i.kym-cdn.com/entries/icons/original/000/040/642/terrifiednootnoot.jpg', N'E9F93PEK2748S09I4JW45A5V65OCV2Z3MX134G5I9X043BB336', 0)
GO
INSERT [dbo].[Users] ([Id], [FullName], [Email], [Password], [Phone], [DateOfBirth], [RoleId], [Level], [Status], [IsMale], [AvatarURL], [ResetToken], [isDeleted]) VALUES (2, N'Tad Moore', N'Schilling91@example.com', N'96cae35ce8a9b0244178bf28e4966c2ce1b8385723a96a6b838858cdd6ca0a1e', N'9851199', CAST(N'1986-07-21T00:00:00.0000000' AS DateTime2), 4, 1, 1, 1, N'https://i.kym-cdn.com/entries/icons/original/000/040/642/terrifiednootnoot.jpg', N'OO1JKC1', 1)
GO
INSERT [dbo].[Users] ([Id], [FullName], [Email], [Password], [Phone], [DateOfBirth], [RoleId], [Level], [Status], [IsMale], [AvatarURL], [ResetToken], [isDeleted]) VALUES (3, N'Teofila Davenport', N'Rose@example.com', N'96cae35ce8a9b0244178bf28e4966c2ce1b8385723a96a6b838858cdd6ca0a1e', N'306-9789', CAST(N'2005-08-10T00:00:00.0000000' AS DateTime2), 3, 2, 3, 0, N'https://i.kym-cdn.com/entries/icons/original/000/040/642/terrifiednootnoot.jpg', N'E3R8I8DW8Q4CJXUNNV63ZSHJF9', 0)
GO
INSERT [dbo].[Users] ([Id], [FullName], [Email], [Password], [Phone], [DateOfBirth], [RoleId], [Level], [Status], [IsMale], [AvatarURL], [ResetToken], [isDeleted]) VALUES (4, N'Cathleen Abernathy', N'Regan@example.com', N'96cae35ce8a9b0244178bf28e4966c2ce1b8385723a96a6b838858cdd6ca0a1e', N'728-8568', CAST(N'1985-06-18T00:00:00.0000000' AS DateTime2), 2, 1, 0, 1, N'https://i.kym-cdn.com/entries/icons/original/000/040/642/terrifiednootnoot.jpg', N'1520W37E9A41PN93JF56QO2W62VC7T97B150EXZ2H30G998Y03', 0)
GO
INSERT [dbo].[Users] ([Id], [FullName], [Email], [Password], [Phone], [DateOfBirth], [RoleId], [Level], [Status], [IsMale], [AvatarURL], [ResetToken], [isDeleted]) VALUES (5, N'Katharyn Boucher', N'Agee643@example.com', N'96cae35ce8a9b0244178bf28e4966c2ce1b8385723a96a6b838858cdd6ca0a1e', N'100-3560', CAST(N'1970-02-16T00:00:00.0000000' AS DateTime2), 4, 3, 1, 0, N'https://i.kym-cdn.com/entries/icons/original/000/040/642/terrifiednootnoot.jpg', N'84D2I9Z6402N2MCW6W5KXQ', 1)
GO
INSERT [dbo].[Users] ([Id], [FullName], [Email], [Password], [Phone], [DateOfBirth], [RoleId], [Level], [Status], [IsMale], [AvatarURL], [ResetToken], [isDeleted]) VALUES (6, N'Deonna Fitzgerald', N'StephanCouture@example.com', N'96cae35ce8a9b0244178bf28e4966c2ce1b8385723a96a6b838858cdd6ca0a1e', N'942-3899', CAST(N'1972-01-14T00:00:00.0000000' AS DateTime2), 4, 3, 0, 1, N'https://i.kym-cdn.com/entries/icons/original/000/040/642/terrifiednootnoot.jpg', N'V4NY45I', 1)
GO
INSERT [dbo].[Users] ([Id], [FullName], [Email], [Password], [Phone], [DateOfBirth], [RoleId], [Level], [Status], [IsMale], [AvatarURL], [ResetToken], [isDeleted]) VALUES (7, N'Charlene Cummings', N'Mccaskill@example.com', N'96cae35ce8a9b0244178bf28e4966c2ce1b8385723a96a6b838858cdd6ca0a1e', N'575-3879', CAST(N'1988-02-12T00:00:00.0000000' AS DateTime2), 5, 0, 0, 1, N'https://i.kym-cdn.com/entries/icons/original/000/040/642/terrifiednootnoot.jpg', N'1XA1PZH18D8OVV339S0PHE52T5OP', 0)
GO
INSERT [dbo].[Users] ([Id], [FullName], [Email], [Password], [Phone], [DateOfBirth], [RoleId], [Level], [Status], [IsMale], [AvatarURL], [ResetToken], [isDeleted]) VALUES (8, N'Cleo Sell', N'datlt.mdc@gmail.com', N'96cae35ce8a9b0244178bf28e4966c2ce1b8385723a96a6b838858cdd6ca0a1e', N'068-8934', CAST(N'1981-11-09T00:00:00.0000000' AS DateTime2), 2, 1, 0, 0, N'https://i.kym-cdn.com/entries/icons/original/000/040/642/terrifiednootnoot.jpg', N'58221P64L20MSUB', 0)
GO
INSERT [dbo].[Users] ([Id], [FullName], [Email], [Password], [Phone], [DateOfBirth], [RoleId], [Level], [Status], [IsMale], [AvatarURL], [ResetToken], [isDeleted]) VALUES (9, N'Antony Steel', N'Eastman@example.com', N'96cae35ce8a9b0244178bf28e4966c2ce1b8385723a96a6b838858cdd6ca0a1e', N'609-7416', CAST(N'1999-03-30T00:00:00.0000000' AS DateTime2), 1, 2, 0, 1, N'https://i.kym-cdn.com/entries/icons/original/000/040/642/terrifiednootnoot.jpg', N'1V4JQMMO86C4B9N883G908SN3', 0)
GO
INSERT [dbo].[Users] ([Id], [FullName], [Email], [Password], [Phone], [DateOfBirth], [RoleId], [Level], [Status], [IsMale], [AvatarURL], [ResetToken], [isDeleted]) VALUES (10, N'Arturo Hastings', N'AyakoCombs379@example.com', N'96cae35ce8a9b0244178bf28e4966c2ce1b8385723a96a6b838858cdd6ca0a1e', N'859-8836', CAST(N'1979-11-04T00:00:00.0000000' AS DateTime2), 5, 1, 3, 0, N'https://i.kym-cdn.com/entries/icons/original/000/040/642/terrifiednootnoot.jpg', N'7P5CR2J68YE6D', 0)
GO
INSERT [dbo].[Users] ([Id], [FullName], [Email], [Password], [Phone], [DateOfBirth], [RoleId], [Level], [Status], [IsMale], [AvatarURL], [ResetToken], [isDeleted]) VALUES (11, N'Vivan Covert', N'nggit3925@example.com', N'96cae35ce8a9b0244178bf28e4966c2ce1b8385723a96a6b838858cdd6ca0a1e', N'271-8025', CAST(N'1979-11-08T00:00:00.0000000' AS DateTime2), 3, 0, 4, 1, N'https://i.kym-cdn.com/entries/icons/original/000/040/642/terrifiednootnoot.jpg', N'187YGA76JOS9759TUOYIOCG7O2M30QEPU4U6K5MVKOH5166SH6', 0)
GO
INSERT [dbo].[Users] ([Id], [FullName], [Email], [Password], [Phone], [DateOfBirth], [RoleId], [Level], [Status], [IsMale], [AvatarURL], [ResetToken], [isDeleted]) VALUES (12, N'Genevive Riddle', N'Noyes@example.com', N'96cae35ce8a9b0244178bf28e4966c2ce1b8385723a96a6b838858cdd6ca0a1e', N'358-5205', CAST(N'1992-01-30T00:00:00.0000000' AS DateTime2), 3, 2, 2, 0, N'https://i.kym-cdn.com/entries/icons/original/000/040/642/terrifiednootnoot.jpg', N'50HABHP', 1)
GO
INSERT [dbo].[Users] ([Id], [FullName], [Email], [Password], [Phone], [DateOfBirth], [RoleId], [Level], [Status], [IsMale], [AvatarURL], [ResetToken], [isDeleted]) VALUES (13, N'Abraham Borges', N'Matney@example.com', N'96cae35ce8a9b0244178bf28e4966c2ce1b8385723a96a6b838858cdd6ca0a1e', N'089-7429', CAST(N'1980-07-25T00:00:00.0000000' AS DateTime2), 5, 3, 3, 1, N'https://i.kym-cdn.com/entries/icons/original/000/040/642/terrifiednootnoot.jpg', N'CB7X7KDVR93H', 1)
GO
INSERT [dbo].[Users] ([Id], [FullName], [Email], [Password], [Phone], [DateOfBirth], [RoleId], [Level], [Status], [IsMale], [AvatarURL], [ResetToken], [isDeleted]) VALUES (14, N'Joseph Pederson', N'Carlo.WWren@nowhere.com', N'96cae35ce8a9b0244178bf28e4966c2ce1b8385723a96a6b838858cdd6ca0a1e', N'848-3908', CAST(N'1980-06-07T00:00:00.0000000' AS DateTime2), 2, 0, 4, 1, N'https://i.kym-cdn.com/entries/icons/original/000/040/642/terrifiednootnoot.jpg', N'AC203I6Q6', 0)
GO
INSERT [dbo].[Users] ([Id], [FullName], [Email], [Password], [Phone], [DateOfBirth], [RoleId], [Level], [Status], [IsMale], [AvatarURL], [ResetToken], [isDeleted]) VALUES (15, N'Erin Burchett', N'Rex_Pride179@nowhere.com', N'96cae35ce8a9b0244178bf28e4966c2ce1b8385723a96a6b838858cdd6ca0a1e', N'753-8371', CAST(N'1989-11-06T00:00:00.0000000' AS DateTime2), 4, 2, 3, 0, N'https://i.kym-cdn.com/entries/icons/original/000/040/642/terrifiednootnoot.jpg', N'NP43984FC1X6T6J74XXNDM9S34L4491E8UG9W412VOT4CSS72U', 1)
GO
INSERT [dbo].[Users] ([Id], [FullName], [Email], [Password], [Phone], [DateOfBirth], [RoleId], [Level], [Status], [IsMale], [AvatarURL], [ResetToken], [isDeleted]) VALUES (16, N'Jewell Wright', N'wkaubqhu_qxbscyjyq@nowhere.com', N'96cae35ce8a9b0244178bf28e4966c2ce1b8385723a96a6b838858cdd6ca0a1e', N'772-0809', CAST(N'1971-06-14T00:00:00.0000000' AS DateTime2), 4, 2, 3, 1, N'https://i.kym-cdn.com/entries/icons/original/000/040/642/terrifiednootnoot.jpg', N'0O6UUSHIX41P74C3M3A52DMLR214', 1)
GO
INSERT [dbo].[Users] ([Id], [FullName], [Email], [Password], [Phone], [DateOfBirth], [RoleId], [Level], [Status], [IsMale], [AvatarURL], [ResetToken], [isDeleted]) VALUES (17, N'Vance Alston', N'Begley@example.com', N'96cae35ce8a9b0244178bf28e4966c2ce1b8385723a96a6b838858cdd6ca0a1e', N'252-2889', CAST(N'1986-03-30T00:00:00.0000000' AS DateTime2), 4, 2, 4, 0, N'https://i.kym-cdn.com/entries/icons/original/000/040/642/terrifiednootnoot.jpg', N'I5MB829C97DUJR57473', 1)
GO
INSERT [dbo].[Users] ([Id], [FullName], [Email], [Password], [Phone], [DateOfBirth], [RoleId], [Level], [Status], [IsMale], [AvatarURL], [ResetToken], [isDeleted]) VALUES (18, N'Anthony Ledbetter', N'Kelly.Abbott86@example.com', N'96cae35ce8a9b0244178bf28e4966c2ce1b8385723a96a6b838858cdd6ca0a1e', N'6341303', CAST(N'1975-07-15T00:00:00.0000000' AS DateTime2), 3, 3, 4, 0, N'https://i.kym-cdn.com/entries/icons/original/000/040/642/terrifiednootnoot.jpg', N'K1GPVP23MS35KVWT8K67JXZR2U657770B3516VT1BO4T0G3', 0)
GO
INSERT [dbo].[Users] ([Id], [FullName], [Email], [Password], [Phone], [DateOfBirth], [RoleId], [Level], [Status], [IsMale], [AvatarURL], [ResetToken], [isDeleted]) VALUES (19, N'Patricia Thomsen', N'Migdalia_QNeff93@example.com', N'96cae35ce8a9b0244178bf28e4966c2ce1b8385723a96a6b838858cdd6ca0a1e', N'360-6212', CAST(N'2004-01-09T00:00:00.0000000' AS DateTime2), 2, 3, 1, 1, N'https://i.kym-cdn.com/entries/icons/original/000/040/642/terrifiednootnoot.jpg', N'39F9M348TNJ6STT9EMK7YH80236L5B4S9P1J', 1)
GO
INSERT [dbo].[Users] ([Id], [FullName], [Email], [Password], [Phone], [DateOfBirth], [RoleId], [Level], [Status], [IsMale], [AvatarURL], [ResetToken], [isDeleted]) VALUES (20, N'Gus Boggs', N'BelindaAgnew@nowhere.com', N'96cae35ce8a9b0244178bf28e4966c2ce1b8385723a96a6b838858cdd6ca0a1e', N'775-6603', CAST(N'2000-01-24T00:00:00.0000000' AS DateTime2), 4, 2, 4, 0, N'https://i.kym-cdn.com/entries/icons/original/000/040/642/terrifiednootnoot.jpg', N'V63M5U2FEC74PS0886350LWHHDQDKC6TOLFSLO13W941M73B13', 0)
GO
INSERT [dbo].[Users] ([Id], [FullName], [Email], [Password], [Phone], [DateOfBirth], [RoleId], [Level], [Status], [IsMale], [AvatarURL], [ResetToken], [isDeleted]) VALUES (21, N'Adelaida Browder', N'zakoi4@example.com', N'96cae35ce8a9b0244178bf28e4966c2ce1b8385723a96a6b838858cdd6ca0a1e', N'943-8895', CAST(N'1976-12-04T00:00:00.0000000' AS DateTime2), 1, 0, 1, 1, N'https://i.kym-cdn.com/entries/icons/original/000/040/642/terrifiednootnoot.jpg', N'O3GO85HR8X8YM', 1)
GO
INSERT [dbo].[Users] ([Id], [FullName], [Email], [Password], [Phone], [DateOfBirth], [RoleId], [Level], [Status], [IsMale], [AvatarURL], [ResetToken], [isDeleted]) VALUES (22, N'Mack Noriega', N'DallasDurbin447@nowhere.com', N'96cae35ce8a9b0244178bf28e4966c2ce1b8385723a96a6b838858cdd6ca0a1e', N'753-0114', CAST(N'1991-05-10T00:00:00.0000000' AS DateTime2), 2, 0, 1, 1, N'https://i.kym-cdn.com/entries/icons/original/000/040/642/terrifiednootnoot.jpg', N'WR54KU6SN9D736608ZK4W4ZK1LK9YU', 0)
GO
INSERT [dbo].[Users] ([Id], [FullName], [Email], [Password], [Phone], [DateOfBirth], [RoleId], [Level], [Status], [IsMale], [AvatarURL], [ResetToken], [isDeleted]) VALUES (23, N'Mitzie Vega', N'Humphrey@example.com', N'96cae35ce8a9b0244178bf28e4966c2ce1b8385723a96a6b838858cdd6ca0a1e', N'888-2476', CAST(N'1975-05-13T00:00:00.0000000' AS DateTime2), 1, 0, 4, 1, N'https://i.kym-cdn.com/entries/icons/original/000/040/642/terrifiednootnoot.jpg', N'727138QUQO97316030OLI53YE7B', 1)
GO
INSERT [dbo].[Users] ([Id], [FullName], [Email], [Password], [Phone], [DateOfBirth], [RoleId], [Level], [Status], [IsMale], [AvatarURL], [ResetToken], [isDeleted]) VALUES (24, N'Blair Andrews', N'Hirsch33@nowhere.com', N'96cae35ce8a9b0244178bf28e4966c2ce1b8385723a96a6b838858cdd6ca0a1e', N'450-7175', CAST(N'2003-10-01T00:00:00.0000000' AS DateTime2), 2, 2, 1, 1, N'https://i.kym-cdn.com/entries/icons/original/000/040/642/terrifiednootnoot.jpg', N'I45805XAUUGZB383Y5', 0)
GO
INSERT [dbo].[Users] ([Id], [FullName], [Email], [Password], [Phone], [DateOfBirth], [RoleId], [Level], [Status], [IsMale], [AvatarURL], [ResetToken], [isDeleted]) VALUES (25, N'Rusty Paterson', N'MackGarris@example.com', N'96cae35ce8a9b0244178bf28e4966c2ce1b8385723a96a6b838858cdd6ca0a1e', N'497-2100', CAST(N'1992-07-19T00:00:00.0000000' AS DateTime2), 4, 0, 0, 0, N'https://i.kym-cdn.com/entries/icons/original/000/040/642/terrifiednootnoot.jpg', N'95BIO3', 1)
GO
INSERT [dbo].[Users] ([Id], [FullName], [Email], [Password], [Phone], [DateOfBirth], [RoleId], [Level], [Status], [IsMale], [AvatarURL], [ResetToken], [isDeleted]) VALUES (26, N'Therese Anthony', N'lxluai053@nowhere.com', N'96cae35ce8a9b0244178bf28e4966c2ce1b8385723a96a6b838858cdd6ca0a1e', N'5681812', CAST(N'1984-09-12T00:00:00.0000000' AS DateTime2), 2, 3, 4, 0, N'https://i.kym-cdn.com/entries/icons/original/000/040/642/terrifiednootnoot.jpg', N'WQA2H326163438SK35G1VV162HAL3JB0B113STG807JL120QUS', 0)
GO
INSERT [dbo].[Users] ([Id], [FullName], [Email], [Password], [Phone], [DateOfBirth], [RoleId], [Level], [Status], [IsMale], [AvatarURL], [ResetToken], [isDeleted]) VALUES (27, N'Hassie Callender', N'Tamara_Radford14@nowhere.com', N'96cae35ce8a9b0244178bf28e4966c2ce1b8385723a96a6b838858cdd6ca0a1e', N'188-2102', CAST(N'1979-07-07T00:00:00.0000000' AS DateTime2), 5, 0, 1, 0, N'https://i.kym-cdn.com/entries/icons/original/000/040/642/terrifiednootnoot.jpg', N'N5IEQ647WZ2', 1)
GO
INSERT [dbo].[Users] ([Id], [FullName], [Email], [Password], [Phone], [DateOfBirth], [RoleId], [Level], [Status], [IsMale], [AvatarURL], [ResetToken], [isDeleted]) VALUES (28, N'Mauro Blakely', N'RubieWalling1@example.com', N'96cae35ce8a9b0244178bf28e4966c2ce1b8385723a96a6b838858cdd6ca0a1e', N'376-5031', CAST(N'1981-09-18T00:00:00.0000000' AS DateTime2), 5, 3, 1, 0, N'https://i.kym-cdn.com/entries/icons/original/000/040/642/terrifiednootnoot.jpg', N'RB5C89Z', 1)
GO
INSERT [dbo].[Users] ([Id], [FullName], [Email], [Password], [Phone], [DateOfBirth], [RoleId], [Level], [Status], [IsMale], [AvatarURL], [ResetToken], [isDeleted]) VALUES (29, N'Alonzo Andrews', N'Peterman@nowhere.com', N'96cae35ce8a9b0244178bf28e4966c2ce1b8385723a96a6b838858cdd6ca0a1e', N'732-4950', CAST(N'1979-11-07T00:00:00.0000000' AS DateTime2), 3, 0, 1, 1, N'https://i.kym-cdn.com/entries/icons/original/000/040/642/terrifiednootnoot.jpg', N'205603YRFVO9PRUD33IV0459', 1)
GO
INSERT [dbo].[Users] ([Id], [FullName], [Email], [Password], [Phone], [DateOfBirth], [RoleId], [Level], [Status], [IsMale], [AvatarURL], [ResetToken], [isDeleted]) VALUES (30, N'Ruthann Reno', N'pdnopm3@example.com', N'96cae35ce8a9b0244178bf28e4966c2ce1b8385723a96a6b838858cdd6ca0a1e', N'169-4224', CAST(N'1970-01-20T00:00:00.0000000' AS DateTime2), 5, 3, 2, 1, N'https://i.kym-cdn.com/entries/icons/original/000/040/642/terrifiednootnoot.jpg', N'R98H2F73X482505L097DFTEMH113A9677XK8667BONQN7LTL49', 1)
GO
INSERT [dbo].[Users] ([Id], [FullName], [Email], [Password], [Phone], [DateOfBirth], [RoleId], [Level], [Status], [IsMale], [AvatarURL], [ResetToken], [isDeleted]) VALUES (31, N'Super Admin 1', N'superadmin1@example.com', N'96cae35ce8a9b0244178bf28e4966c2ce1b8385723a96a6b838858cdd6ca0a1e', N'5681812', CAST(N'1995-04-09T00:00:00.0000000' AS DateTime2), 1, 3, 4, 0, N'https://i.kym-cdn.com/entries/icons/original/000/040/642/terrifiednootnoot.jpg', N'WQA2H326163438SK35G1VV162HAL3JB0B113STG807JL120QUS', 0)
GO
INSERT [dbo].[Users] ([Id], [FullName], [Email], [Password], [Phone], [DateOfBirth], [RoleId], [Level], [Status], [IsMale], [AvatarURL], [ResetToken], [isDeleted]) VALUES (32, N'Class Admin 1', N'classadmin1@example.com', N'96cae35ce8a9b0244178bf28e4966c2ce1b8385723a96a6b838858cdd6ca0a1e', N'188-2102', CAST(N'1975-02-21T00:00:00.0000000' AS DateTime2), 2, 0, 1, 0, N'https://i.kym-cdn.com/entries/icons/original/000/040/642/terrifiednootnoot.jpg', N'N5IEQ647WZ2', 1)
GO
INSERT [dbo].[Users] ([Id], [FullName], [Email], [Password], [Phone], [DateOfBirth], [RoleId], [Level], [Status], [IsMale], [AvatarURL], [ResetToken], [isDeleted]) VALUES (33, N'Trainer 1', N'trainer1@example.com', N'96cae35ce8a9b0244178bf28e4966c2ce1b8385723a96a6b838858cdd6ca0a1e', N'376-5031', CAST(N'2005-06-15T00:00:00.0000000' AS DateTime2), 3, 3, 1, 0, N'https://i.kym-cdn.com/entries/icons/original/000/040/642/terrifiednootnoot.jpg', N'RB5C89Z', 1)
GO
INSERT [dbo].[Users] ([Id], [FullName], [Email], [Password], [Phone], [DateOfBirth], [RoleId], [Level], [Status], [IsMale], [AvatarURL], [ResetToken], [isDeleted]) VALUES (34, N'Auditor 1', N'auditor1@nowhere.com', N'96cae35ce8a9b0244178bf28e4966c2ce1b8385723a96a6b838858cdd6ca0a1e', N'732-4950', CAST(N'2004-08-06T00:00:00.0000000' AS DateTime2), 4, 0, 1, 1, N'https://i.kym-cdn.com/entries/icons/original/000/040/642/terrifiednootnoot.jpg', N'205603YRFVO9PRUD33IV0459', 1)
GO
INSERT [dbo].[Users] ([Id], [FullName], [Email], [Password], [Phone], [DateOfBirth], [RoleId], [Level], [Status], [IsMale], [AvatarURL], [ResetToken], [isDeleted]) VALUES (35, N'Trainee 1', N'trainee@example.com', N'96cae35ce8a9b0244178bf28e4966c2ce1b8385723a96a6b838858cdd6ca0a1e', N'169-4224', CAST(N'1981-11-02T00:00:00.0000000' AS DateTime2), 5, 3, 2, 1, N'https://i.kym-cdn.com/entries/icons/original/000/040/642/terrifiednootnoot.jpg', N'R98H2F73X482505L097DFTEMH113A9677XK8667BONQN7LTL49', 1)
GO
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
SET IDENTITY_INSERT [dbo].[Syllabus] ON 
GO
INSERT [dbo].[Syllabus] ([Id], [Code], [Version], [Name], [LastModifiedOn], [LastModifiedBy], [Level], [AttendeeNumber], [CourseObjectives], [QuizCriteria], [AssignmentCriteria], [FinalCriteria], [FinalTheoryCriteria], [FinalPracticalCriteria], [PassingGPA], [isActive], [isDeleted], [CreatedOn], [CreatedBy], [TechnicalRequirements], [DaysDuration], [TimeDuration], [TrainingDeliveryPrinciple]) VALUES (1, N'ITE3021', 1, N'Promote the Ethical Use of Data-Driven Technologies', CAST(N'2023-05-01T00:00:00.0000000' AS DateTime2), 1, 1, 30, N'Target is helps professionals differentiate themselves from other job candidates by demonstrating their ability to ethically navigate data driven emerging technologies such as AI, Machine Learning and Data Science.', 5, 5, 5, 5, 5, 5, 1, 0, CAST(N'2023-08-25T00:00:00.0000000' AS DateTime2), 1, N'none', 6, 21, NULL)
GO
INSERT [dbo].[Syllabus] ([Id], [Code], [Version], [Name], [LastModifiedOn], [LastModifiedBy], [Level], [AttendeeNumber], [CourseObjectives], [QuizCriteria], [AssignmentCriteria], [FinalCriteria], [FinalTheoryCriteria], [FinalPracticalCriteria], [PassingGPA], [isActive], [isDeleted], [CreatedOn], [CreatedBy], [TechnicalRequirements], [DaysDuration], [TimeDuration], [TrainingDeliveryPrinciple]) VALUES (2, N'ITE3022', 1, N'Turn Ethical Frameworks into Actionable Steps', CAST(N'2023-01-18T00:00:00.0000000' AS DateTime2), 1, 1, 30, N'Target is helps professionals differentiate themselves from other job candidates by demonstrating their ability to ethically navigate data driven emerging technologies such as AI, Machine Learning and Data Science.', 5, 5, 5, 5, 5, 5, 1, 0, CAST(N'2023-01-03T00:00:00.0000000' AS DateTime2), 1, N'(N'''')', 6, 21, NULL)
GO
INSERT [dbo].[Syllabus] ([Id], [Code], [Version], [Name], [LastModifiedOn], [LastModifiedBy], [Level], [AttendeeNumber], [CourseObjectives], [QuizCriteria], [AssignmentCriteria], [FinalCriteria], [FinalTheoryCriteria], [FinalPracticalCriteria], [PassingGPA], [isActive], [isDeleted], [CreatedOn], [CreatedBy], [TechnicalRequirements], [DaysDuration], [TimeDuration], [TrainingDeliveryPrinciple]) VALUES (3, N'ITE3023', 1, N'Detect and Mitigate Ethical Risks', CAST(N'2023-06-19T00:00:00.0000000' AS DateTime2), 1, 1, 30, N'Target is helps professionals differentiate themselves from other job candidates by demonstrating their ability to ethically navigate data driven emerging technologies such as AI, Machine Learning and Data Science.', 5, 5, 5, 5, 5, 5, 1, 0, CAST(N'2023-02-28T00:00:00.0000000' AS DateTime2), 1, N'(N'''')', 6, 21, NULL)
GO
INSERT [dbo].[Syllabus] ([Id], [Code], [Version], [Name], [LastModifiedOn], [LastModifiedBy], [Level], [AttendeeNumber], [CourseObjectives], [QuizCriteria], [AssignmentCriteria], [FinalCriteria], [FinalTheoryCriteria], [FinalPracticalCriteria], [PassingGPA], [isActive], [isDeleted], [CreatedOn], [CreatedBy], [TechnicalRequirements], [DaysDuration], [TimeDuration], [TrainingDeliveryPrinciple]) VALUES (4, N'ITE3024', 1, N'Communicate Effectively about Ethical Challenges in Data-Driven Technologies', CAST(N'2023-04-02T00:00:00.0000000' AS DateTime2), 1, 1, 30, N'Target is helps professionals differentiate themselves from other job candidates by demonstrating their ability to ethically navigate data driven emerging technologies such as AI, Machine Learning and Data Science.', 5, 5, 5, 5, 5, 5, 1, 0, CAST(N'2023-08-02T00:00:00.0000000' AS DateTime2), 1, N'(N'''')', 6, 21, NULL)
GO
INSERT [dbo].[Syllabus] ([Id], [Code], [Version], [Name], [LastModifiedOn], [LastModifiedBy], [Level], [AttendeeNumber], [CourseObjectives], [QuizCriteria], [AssignmentCriteria], [FinalCriteria], [FinalTheoryCriteria], [FinalPracticalCriteria], [PassingGPA], [isActive], [isDeleted], [CreatedOn], [CreatedBy], [TechnicalRequirements], [DaysDuration], [TimeDuration], [TrainingDeliveryPrinciple]) VALUES (5, N'WED2011', 1, N'Introduction to HTML5', CAST(N'2023-09-01T00:00:00.0000000' AS DateTime2), 1, 1, 30, N'Covers how to write syntactically correct HTML5 and CSS3, and how to create interactive web experiences with JavaScript.', 5, 5, 5, 5, 5, 5, 1, 0, CAST(N'2023-09-19T00:00:00.0000000' AS DateTime2), 1, N'(N'''')', 6, 21, NULL)
GO
INSERT [dbo].[Syllabus] ([Id], [Code], [Version], [Name], [LastModifiedOn], [LastModifiedBy], [Level], [AttendeeNumber], [CourseObjectives], [QuizCriteria], [AssignmentCriteria], [FinalCriteria], [FinalTheoryCriteria], [FinalPracticalCriteria], [PassingGPA], [isActive], [isDeleted], [CreatedOn], [CreatedBy], [TechnicalRequirements], [DaysDuration], [TimeDuration], [TrainingDeliveryPrinciple]) VALUES (6, N'WED2012', 1, N'Introduction to CSS3', CAST(N'2023-07-21T00:00:00.0000000' AS DateTime2), 1, 1, 30, N'Covers how to write syntactically correct HTML5 and CSS3, and how to create interactive web experiences with JavaScript.', 5, 5, 5, 5, 5, 5, 1, 0, CAST(N'2023-07-19T00:00:00.0000000' AS DateTime2), 1, N'(N'''')', 6, 21, NULL)
GO
INSERT [dbo].[Syllabus] ([Id], [Code], [Version], [Name], [LastModifiedOn], [LastModifiedBy], [Level], [AttendeeNumber], [CourseObjectives], [QuizCriteria], [AssignmentCriteria], [FinalCriteria], [FinalTheoryCriteria], [FinalPracticalCriteria], [PassingGPA], [isActive], [isDeleted], [CreatedOn], [CreatedBy], [TechnicalRequirements], [DaysDuration], [TimeDuration], [TrainingDeliveryPrinciple]) VALUES (7, N'WED2013', 1, N'Interactivity with JavaScript', CAST(N'2023-09-26T00:00:00.0000000' AS DateTime2), 1, 1, 30, N'Covers how to write syntactically correct HTML5 and CSS3, and how to create interactive web experiences with JavaScript.', 5, 5, 5, 5, 5, 5, 1, 0, CAST(N'2023-08-22T00:00:00.0000000' AS DateTime2), 1, N'(N'''')', 6, 21, NULL)
GO
INSERT [dbo].[Syllabus] ([Id], [Code], [Version], [Name], [LastModifiedOn], [LastModifiedBy], [Level], [AttendeeNumber], [CourseObjectives], [QuizCriteria], [AssignmentCriteria], [FinalCriteria], [FinalTheoryCriteria], [FinalPracticalCriteria], [PassingGPA], [isActive], [isDeleted], [CreatedOn], [CreatedBy], [TechnicalRequirements], [DaysDuration], [TimeDuration], [TrainingDeliveryPrinciple]) VALUES (8, N'WED2014', 1, N'Advanced Styling with Responsive Design', CAST(N'2023-11-11T00:00:00.0000000' AS DateTime2), 1, 1, 30, N'Covers how to write syntactically correct HTML5 and CSS3, and how to create interactive web experiences with JavaScript.', 5, 5, 5, 5, 5, 5, 1, 0, CAST(N'2023-07-20T00:00:00.0000000' AS DateTime2), 1, N'(N'''')', 6, 21, NULL)
GO
INSERT [dbo].[Syllabus] ([Id], [Code], [Version], [Name], [LastModifiedOn], [LastModifiedBy], [Level], [AttendeeNumber], [CourseObjectives], [QuizCriteria], [AssignmentCriteria], [FinalCriteria], [FinalTheoryCriteria], [FinalPracticalCriteria], [PassingGPA], [isActive], [isDeleted], [CreatedOn], [CreatedBy], [TechnicalRequirements], [DaysDuration], [TimeDuration], [TrainingDeliveryPrinciple]) VALUES (9, N'WED2015', 1, N'Web Design for Everybody Capstone', CAST(N'2023-07-24T00:00:00.0000000' AS DateTime2), 1, 1, 30, N'Covers how to write syntactically correct HTML5 and CSS3, and how to create interactive web experiences with JavaScript.', 5, 5, 5, 5, 5, 5, 1, 0, CAST(N'2023-12-05T00:00:00.0000000' AS DateTime2), 1, N'(N'''')', 6, 21, NULL)
GO
INSERT [dbo].[Syllabus] ([Id], [Code], [Version], [Name], [LastModifiedOn], [LastModifiedBy], [Level], [AttendeeNumber], [CourseObjectives], [QuizCriteria], [AssignmentCriteria], [FinalCriteria], [FinalTheoryCriteria], [FinalPracticalCriteria], [PassingGPA], [isActive], [isDeleted], [CreatedOn], [CreatedBy], [TechnicalRequirements], [DaysDuration], [TimeDuration], [TrainingDeliveryPrinciple]) VALUES (10, N'SWE2011', 1, N'Software Development Processes and Methodologies', CAST(N'2023-11-22T00:00:00.0000000' AS DateTime2), 1, 1, 30, N'Understanding of the underlying context and theory of software development practices.', 5, 5, 5, 5, 5, 5, 1, 0, CAST(N'2023-06-15T00:00:00.0000000' AS DateTime2), 1, N'(N'''')', 6, 21, NULL)
GO
INSERT [dbo].[Syllabus] ([Id], [Code], [Version], [Name], [LastModifiedOn], [LastModifiedBy], [Level], [AttendeeNumber], [CourseObjectives], [QuizCriteria], [AssignmentCriteria], [FinalCriteria], [FinalTheoryCriteria], [FinalPracticalCriteria], [PassingGPA], [isActive], [isDeleted], [CreatedOn], [CreatedBy], [TechnicalRequirements], [DaysDuration], [TimeDuration], [TrainingDeliveryPrinciple]) VALUES (11, N'SWE2012', 1, N'Agile Software Development', CAST(N'2023-11-05T00:00:00.0000000' AS DateTime2), 1, 1, 30, N'Understanding of the underlying context and theory of software development practices.', 5, 5, 5, 5, 5, 5, 1, 0, CAST(N'2023-04-09T00:00:00.0000000' AS DateTime2), 1, N'(N'''')', 6, 21, NULL)
GO
INSERT [dbo].[Syllabus] ([Id], [Code], [Version], [Name], [LastModifiedOn], [LastModifiedBy], [Level], [AttendeeNumber], [CourseObjectives], [QuizCriteria], [AssignmentCriteria], [FinalCriteria], [FinalTheoryCriteria], [FinalPracticalCriteria], [PassingGPA], [isActive], [isDeleted], [CreatedOn], [CreatedBy], [TechnicalRequirements], [DaysDuration], [TimeDuration], [TrainingDeliveryPrinciple]) VALUES (12, N'SWE2013', 1, N'Lean Software Development', CAST(N'2023-02-26T00:00:00.0000000' AS DateTime2), 1, 1, 30, N'Understanding of the underlying context and theory of software development practices.', 5, 5, 5, 5, 5, 5, 1, 0, CAST(N'2023-08-20T00:00:00.0000000' AS DateTime2), 1, N'(N'''')', 6, 21, NULL)
GO
INSERT [dbo].[Syllabus] ([Id], [Code], [Version], [Name], [LastModifiedOn], [LastModifiedBy], [Level], [AttendeeNumber], [CourseObjectives], [QuizCriteria], [AssignmentCriteria], [FinalCriteria], [FinalTheoryCriteria], [FinalPracticalCriteria], [PassingGPA], [isActive], [isDeleted], [CreatedOn], [CreatedBy], [TechnicalRequirements], [DaysDuration], [TimeDuration], [TrainingDeliveryPrinciple]) VALUES (13, N'SWE2014', 1, N'Engineering Practices for Building Quality Software', CAST(N'2023-08-03T00:00:00.0000000' AS DateTime2), 1, 1, 30, N'Understanding of the underlying context and theory of software development practices.', 5, 5, 5, 5, 5, 5, 1, 0, CAST(N'2023-09-07T00:00:00.0000000' AS DateTime2), 1, N'(N'''')', 6, 21, NULL)
GO
INSERT [dbo].[Syllabus] ([Id], [Code], [Version], [Name], [LastModifiedOn], [LastModifiedBy], [Level], [AttendeeNumber], [CourseObjectives], [QuizCriteria], [AssignmentCriteria], [FinalCriteria], [FinalTheoryCriteria], [FinalPracticalCriteria], [PassingGPA], [isActive], [isDeleted], [CreatedOn], [CreatedBy], [TechnicalRequirements], [DaysDuration], [TimeDuration], [TrainingDeliveryPrinciple]) VALUES (14, N'NWC2031', 1, N'Fundamentals of Network Communication', CAST(N'2023-01-26T00:00:00.0000000' AS DateTime2), 1, 1, 30, N'Students will require a prior knowledge of C programming, an understanding of math probability and a computer science background is a plus', 5, 5, 5, 5, 5, 5, 1, 0, CAST(N'2023-02-08T00:00:00.0000000' AS DateTime2), 1, N'(N'''')', 6, 21, NULL)
GO
INSERT [dbo].[Syllabus] ([Id], [Code], [Version], [Name], [LastModifiedOn], [LastModifiedBy], [Level], [AttendeeNumber], [CourseObjectives], [QuizCriteria], [AssignmentCriteria], [FinalCriteria], [FinalTheoryCriteria], [FinalPracticalCriteria], [PassingGPA], [isActive], [isDeleted], [CreatedOn], [CreatedBy], [TechnicalRequirements], [DaysDuration], [TimeDuration], [TrainingDeliveryPrinciple]) VALUES (15, N'NWC2032', 1, N'Peer-to-Peer Protocols and Local Area Networks', CAST(N'2023-02-05T00:00:00.0000000' AS DateTime2), 1, 1, 30, N'Students will require a prior knowledge of C programming, an understanding of math probability and a computer science background is a plus', 5, 5, 5, 5, 5, 5, 1, 0, CAST(N'2023-02-01T00:00:00.0000000' AS DateTime2), 1, N'(N'''')', 6, 21, NULL)
GO
INSERT [dbo].[Syllabus] ([Id], [Code], [Version], [Name], [LastModifiedOn], [LastModifiedBy], [Level], [AttendeeNumber], [CourseObjectives], [QuizCriteria], [AssignmentCriteria], [FinalCriteria], [FinalTheoryCriteria], [FinalPracticalCriteria], [PassingGPA], [isActive], [isDeleted], [CreatedOn], [CreatedBy], [TechnicalRequirements], [DaysDuration], [TimeDuration], [TrainingDeliveryPrinciple]) VALUES (16, N'NWC2033', 1, N'Packet Switching Networks and Algorithms', CAST(N'2023-07-23T00:00:00.0000000' AS DateTime2), 1, 1, 30, N'Students will require a prior knowledge of C programming, an understanding of math probability and a computer science background is a plus', 5, 5, 5, 5, 5, 5, 1, 0, CAST(N'2023-11-28T00:00:00.0000000' AS DateTime2), 1, N'(N'''')', 6, 21, NULL)
GO
INSERT [dbo].[Syllabus] ([Id], [Code], [Version], [Name], [LastModifiedOn], [LastModifiedBy], [Level], [AttendeeNumber], [CourseObjectives], [QuizCriteria], [AssignmentCriteria], [FinalCriteria], [FinalTheoryCriteria], [FinalPracticalCriteria], [PassingGPA], [isActive], [isDeleted], [CreatedOn], [CreatedBy], [TechnicalRequirements], [DaysDuration], [TimeDuration], [TrainingDeliveryPrinciple]) VALUES (17, N'NWC2034', 1, N'TCP/IP and Advanced Topics', CAST(N'2023-07-02T00:00:00.0000000' AS DateTime2), 1, 1, 30, N'Students will require a prior knowledge of C programming, an understanding of math probability and a computer science background is a plus', 5, 5, 5, 5, 5, 5, 1, 0, CAST(N'2023-12-16T00:00:00.0000000' AS DateTime2), 1, N'(N'''')', 6, 21, NULL)
GO
INSERT [dbo].[Syllabus] ([Id], [Code], [Version], [Name], [LastModifiedOn], [LastModifiedBy], [Level], [AttendeeNumber], [CourseObjectives], [QuizCriteria], [AssignmentCriteria], [FinalCriteria], [FinalTheoryCriteria], [FinalPracticalCriteria], [PassingGPA], [isActive], [isDeleted], [CreatedOn], [CreatedBy], [TechnicalRequirements], [DaysDuration], [TimeDuration], [TrainingDeliveryPrinciple]) VALUES (18, N'SSL1011', 1, N'Information & Digital Literacy for University Success', CAST(N'2023-02-23T00:00:00.0000000' AS DateTime2), 1, 1, 30, N'Develop skills in information & digital literacy, problem-solving, critical thinking and communication.', 5, 5, 5, 5, 5, 5, 1, 0, CAST(N'2023-11-01T00:00:00.0000000' AS DateTime2), 1, N'(N'''')', 6, 21, NULL)
GO
INSERT [dbo].[Syllabus] ([Id], [Code], [Version], [Name], [LastModifiedOn], [LastModifiedBy], [Level], [AttendeeNumber], [CourseObjectives], [QuizCriteria], [AssignmentCriteria], [FinalCriteria], [FinalTheoryCriteria], [FinalPracticalCriteria], [PassingGPA], [isActive], [isDeleted], [CreatedOn], [CreatedBy], [TechnicalRequirements], [DaysDuration], [TimeDuration], [TrainingDeliveryPrinciple]) VALUES (19, N'SSL1012', 1, N'Problem-Solving Skills for University Success', CAST(N'2023-04-06T00:00:00.0000000' AS DateTime2), 1, 1, 30, N'Develop skills in information & digital literacy, problem-solving, critical thinking and communication.', 5, 5, 5, 5, 5, 5, 1, 0, CAST(N'2023-03-30T00:00:00.0000000' AS DateTime2), 1, N'(N'''')', 6, 21, NULL)
GO
INSERT [dbo].[Syllabus] ([Id], [Code], [Version], [Name], [LastModifiedOn], [LastModifiedBy], [Level], [AttendeeNumber], [CourseObjectives], [QuizCriteria], [AssignmentCriteria], [FinalCriteria], [FinalTheoryCriteria], [FinalPracticalCriteria], [PassingGPA], [isActive], [isDeleted], [CreatedOn], [CreatedBy], [TechnicalRequirements], [DaysDuration], [TimeDuration], [TrainingDeliveryPrinciple]) VALUES (20, N'SSL1013', 1, N'Critical Thinking Skills for University Success', CAST(N'2023-06-27T00:00:00.0000000' AS DateTime2), 1, 1, 30, N'Develop skills in information & digital literacy, problem-solving, critical thinking and communication.', 5, 5, 5, 5, 5, 5, 1, 0, CAST(N'2023-05-20T00:00:00.0000000' AS DateTime2), 1, N'(N'''')', 6, 21, NULL)
GO
INSERT [dbo].[Syllabus] ([Id], [Code], [Version], [Name], [LastModifiedOn], [LastModifiedBy], [Level], [AttendeeNumber], [CourseObjectives], [QuizCriteria], [AssignmentCriteria], [FinalCriteria], [FinalTheoryCriteria], [FinalPracticalCriteria], [PassingGPA], [isActive], [isDeleted], [CreatedOn], [CreatedBy], [TechnicalRequirements], [DaysDuration], [TimeDuration], [TrainingDeliveryPrinciple]) VALUES (21, N'SSL1014', 1, N'Communication Skills for University Success', CAST(N'2023-09-25T00:00:00.0000000' AS DateTime2), 1, 1, 30, N'Develop skills in information & digital literacy, problem-solving, critical thinking and communication.', 5, 5, 5, 5, 5, 5, 1, 0, CAST(N'2023-05-08T00:00:00.0000000' AS DateTime2), 1, N'(N'''')', 6, 21, NULL)
GO
INSERT [dbo].[Syllabus] ([Id], [Code], [Version], [Name], [LastModifiedOn], [LastModifiedBy], [Level], [AttendeeNumber], [CourseObjectives], [QuizCriteria], [AssignmentCriteria], [FinalCriteria], [FinalTheoryCriteria], [FinalPracticalCriteria], [PassingGPA], [isActive], [isDeleted], [CreatedOn], [CreatedBy], [TechnicalRequirements], [DaysDuration], [TimeDuration], [TrainingDeliveryPrinciple]) VALUES (22, N'SSL1015', 1, N'Academic Skills for University Success: Capstone', CAST(N'2023-07-12T00:00:00.0000000' AS DateTime2), 1, 1, 30, N'Develop skills in information & digital literacy, problem-solving, critical thinking and communication.', 5, 5, 5, 5, 5, 5, 1, 0, CAST(N'2023-09-01T00:00:00.0000000' AS DateTime2), 1, N'(N'''')', 6, 21, NULL)
GO
INSERT [dbo].[Syllabus] ([Id], [Code], [Version], [Name], [LastModifiedOn], [LastModifiedBy], [Level], [AttendeeNumber], [CourseObjectives], [QuizCriteria], [AssignmentCriteria], [FinalCriteria], [FinalTheoryCriteria], [FinalPracticalCriteria], [PassingGPA], [isActive], [isDeleted], [CreatedOn], [CreatedBy], [TechnicalRequirements], [DaysDuration], [TimeDuration], [TrainingDeliveryPrinciple]) VALUES (23, N'ENW4921', 1, N'Grammar and Punctuation', CAST(N'2023-10-16T00:00:00.0000000' AS DateTime2), 1, 1, 30, N'Students learn to conduct rigorous academic research and to express your ideas clearly in an academic format. In the final Capstone Project, all the knowledge that you’ve gained over the span of these courses will culminate into an academic research paper on an issue of your choice', 5, 5, 5, 5, 5, 5, 1, 0, CAST(N'2023-01-13T00:00:00.0000000' AS DateTime2), 1, N'(N'''')', 6, 21, NULL)
GO
INSERT [dbo].[Syllabus] ([Id], [Code], [Version], [Name], [LastModifiedOn], [LastModifiedBy], [Level], [AttendeeNumber], [CourseObjectives], [QuizCriteria], [AssignmentCriteria], [FinalCriteria], [FinalTheoryCriteria], [FinalPracticalCriteria], [PassingGPA], [isActive], [isDeleted], [CreatedOn], [CreatedBy], [TechnicalRequirements], [DaysDuration], [TimeDuration], [TrainingDeliveryPrinciple]) VALUES (24, N'ENW4922', 1, N'Getting Started with Essay Writing', CAST(N'2023-01-06T00:00:00.0000000' AS DateTime2), 1, 1, 30, N'Students learn to conduct rigorous academic research and to express your ideas clearly in an academic format. In the final Capstone Project, all the knowledge that you’ve gained over the span of these courses will culminate into an academic research paper on an issue of your choice', 5, 5, 5, 5, 5, 5, 1, 0, CAST(N'2023-10-08T00:00:00.0000000' AS DateTime2), 1, N'(N'''')', 6, 21, NULL)
GO
INSERT [dbo].[Syllabus] ([Id], [Code], [Version], [Name], [LastModifiedOn], [LastModifiedBy], [Level], [AttendeeNumber], [CourseObjectives], [QuizCriteria], [AssignmentCriteria], [FinalCriteria], [FinalTheoryCriteria], [FinalPracticalCriteria], [PassingGPA], [isActive], [isDeleted], [CreatedOn], [CreatedBy], [TechnicalRequirements], [DaysDuration], [TimeDuration], [TrainingDeliveryPrinciple]) VALUES (25, N'ENW4923', 1, N'Advanced Writing', CAST(N'2023-06-30T00:00:00.0000000' AS DateTime2), 1, 1, 30, N'Students learn to conduct rigorous academic research and to express your ideas clearly in an academic format. In the final Capstone Project, all the knowledge that you’ve gained over the span of these courses will culminate into an academic research paper on an issue of your choice', 5, 5, 5, 5, 5, 5, 1, 0, CAST(N'2023-06-30T00:00:00.0000000' AS DateTime2), 1, N'(N'''')', 6, 21, NULL)
GO
INSERT [dbo].[Syllabus] ([Id], [Code], [Version], [Name], [LastModifiedOn], [LastModifiedBy], [Level], [AttendeeNumber], [CourseObjectives], [QuizCriteria], [AssignmentCriteria], [FinalCriteria], [FinalTheoryCriteria], [FinalPracticalCriteria], [PassingGPA], [isActive], [isDeleted], [CreatedOn], [CreatedBy], [TechnicalRequirements], [DaysDuration], [TimeDuration], [TrainingDeliveryPrinciple]) VALUES (26, N'ENW4924', 1, N'Project: Writing a Research Paper', CAST(N'2023-09-24T00:00:00.0000000' AS DateTime2), 1, 1, 30, N'Students learn to conduct rigorous academic research and to express your ideas clearly in an academic format. In the final Capstone Project, all the knowledge that you’ve gained over the span of these courses will culminate into an academic research paper on an issue of your choice', 5, 5, 5, 5, 5, 5, 1, 0, CAST(N'2023-06-23T00:00:00.0000000' AS DateTime2), 1, N'(N'''')', 6, 21, NULL)
GO
INSERT [dbo].[Syllabus] ([Id], [Code], [Version], [Name], [LastModifiedOn], [LastModifiedBy], [Level], [AttendeeNumber], [CourseObjectives], [QuizCriteria], [AssignmentCriteria], [FinalCriteria], [FinalTheoryCriteria], [FinalPracticalCriteria], [PassingGPA], [isActive], [isDeleted], [CreatedOn], [CreatedBy], [TechnicalRequirements], [DaysDuration], [TimeDuration], [TrainingDeliveryPrinciple]) VALUES (27, N'ENW4925', 1, N'Introduction to Research for Essay Writing', CAST(N'2023-07-11T00:00:00.0000000' AS DateTime2), 1, 1, 30, N'Students learn to conduct rigorous academic research and to express your ideas clearly in an academic format. In the final Capstone Project, all the knowledge that you’ve gained over the span of these courses will culminate into an academic research paper on an issue of your choice', 5, 5, 5, 5, 5, 5, 1, 0, CAST(N'2023-04-10T00:00:00.0000000' AS DateTime2), 1, N'(N'''')', 6, 21, NULL)
GO
INSERT [dbo].[Syllabus] ([Id], [Code], [Version], [Name], [LastModifiedOn], [LastModifiedBy], [Level], [AttendeeNumber], [CourseObjectives], [QuizCriteria], [AssignmentCriteria], [FinalCriteria], [FinalTheoryCriteria], [FinalPracticalCriteria], [PassingGPA], [isActive], [isDeleted], [CreatedOn], [CreatedBy], [TechnicalRequirements], [DaysDuration], [TimeDuration], [TrainingDeliveryPrinciple]) VALUES (28, N'HRM201', 1, N'Preparing to Manage Human Resources', CAST(N'2023-11-21T00:00:00.0000000' AS DateTime2), 1, 1, 30, N'One way or another, all employees are managed. But approaches to managing employees varying from employee-to-employee, job-to-job, manager-to-manager, organization-to-organization, and country-to-country. This course provides a foundation for developing your own approach to skillfully managing employees by illustrating alternative human resource management (HRM) strategies, introducing the importance of the legal context, and thinking about what motivates employees. This will then give you the factual and conceptual basis for developing specific, critical HRM skills in subsequent courses on hiring employees, managing performance, and rewarding employees. Don''t know anything about HRM? That''s OK! Leave this course with a new-found understanding of the range of options available for managing employees, a grasp of what makes workers tick, and the readiness to develop your own HRM skills.', 5, 5, 5, 5, 20, 5, 1, 0, CAST(N'2023-03-21T00:00:00.0000000' AS DateTime2), 1, N'(N'''')', 6, 21, NULL)
GO
INSERT [dbo].[Syllabus] ([Id], [Code], [Version], [Name], [LastModifiedOn], [LastModifiedBy], [Level], [AttendeeNumber], [CourseObjectives], [QuizCriteria], [AssignmentCriteria], [FinalCriteria], [FinalTheoryCriteria], [FinalPracticalCriteria], [PassingGPA], [isActive], [isDeleted], [CreatedOn], [CreatedBy], [TechnicalRequirements], [DaysDuration], [TimeDuration], [TrainingDeliveryPrinciple]) VALUES (29, N'HRM202', 1, N'Recruiting, Hiring, and Onboarding Employees', CAST(N'2023-05-18T00:00:00.0000000' AS DateTime2), 1, 1, 20, N'At the outset of the course we will explore the importance of linking recruitment goals with overall company strategy. We then look at a number of options to recruit and select employees both effectively and legally. Throughout the course we will examine current issues in talent acquisition, such as how companies are now leveraging social media and hiring analytics to ensure better quality hires.At the conclusion of the course, we look at how to onboard employees to promote employee commitment and engagement.', 5, 5, 5, 5, 20, 5, 1, 0, CAST(N'2023-03-18T00:00:00.0000000' AS DateTime2), 1, N'(N'''')', 6, 21, NULL)
GO
INSERT [dbo].[Syllabus] ([Id], [Code], [Version], [Name], [LastModifiedOn], [LastModifiedBy], [Level], [AttendeeNumber], [CourseObjectives], [QuizCriteria], [AssignmentCriteria], [FinalCriteria], [FinalTheoryCriteria], [FinalPracticalCriteria], [PassingGPA], [isActive], [isDeleted], [CreatedOn], [CreatedBy], [TechnicalRequirements], [DaysDuration], [TimeDuration], [TrainingDeliveryPrinciple]) VALUES (30, N'HRM203', 1, N'Managing Employee Performance', CAST(N'2023-03-09T00:00:00.0000000' AS DateTime2), 1, 1, 28, N'In this third course in the Human Resources for People Managers specialization, we will discuss the skills and key processes you will need to develop your employees to attain department and organizational goals. These skills will include setting clear expectations, providing positive and corrective feedback, and delivering an effective performance appraisal.', 5, 5, 5, 5, 20, 5, 1, 0, CAST(N'2023-08-26T00:00:00.0000000' AS DateTime2), 1, N'(N'''')', 6, 21, NULL)
GO
INSERT [dbo].[Syllabus] ([Id], [Code], [Version], [Name], [LastModifiedOn], [LastModifiedBy], [Level], [AttendeeNumber], [CourseObjectives], [QuizCriteria], [AssignmentCriteria], [FinalCriteria], [FinalTheoryCriteria], [FinalPracticalCriteria], [PassingGPA], [isActive], [isDeleted], [CreatedOn], [CreatedBy], [TechnicalRequirements], [DaysDuration], [TimeDuration], [TrainingDeliveryPrinciple]) VALUES (31, N'HRM204', 1, N'Managing Employee Compensation', CAST(N'2023-09-17T00:00:00.0000000' AS DateTime2), 1, 1, 29, N'Upon completing the course, you should be able to have an understanding of compensation both strategically and technically. Learners will also gain introductory familiarity with pay regulation in the US.', 5, 5, 5, 5, 20, 5, 1, 0, CAST(N'2023-09-17T00:00:00.0000000' AS DateTime2), 1, N'(N'''')', 6, 21, NULL)
GO
INSERT [dbo].[Syllabus] ([Id], [Code], [Version], [Name], [LastModifiedOn], [LastModifiedBy], [Level], [AttendeeNumber], [CourseObjectives], [QuizCriteria], [AssignmentCriteria], [FinalCriteria], [FinalTheoryCriteria], [FinalPracticalCriteria], [PassingGPA], [isActive], [isDeleted], [CreatedOn], [CreatedBy], [TechnicalRequirements], [DaysDuration], [TimeDuration], [TrainingDeliveryPrinciple]) VALUES (32, N'HRM205', 1, N'Human Resources Management Capstone: HR for People Managers', CAST(N'2023-12-26T00:00:00.0000000' AS DateTime2), 1, 1, 30, N'This specialization provides a robust introduction to the key principles, policies, and practices of human resource management, with a focus on understanding managerial choices and constraints, acquiring and onboarding talent, managing employee performance, and rewarding employees. The capstone project provides learners with the opportunity to apply these key principles and practices to a real-world workplace (including a learner''s own workplace if desired). Specifically, the capstone project will involve identifying the key human resources challenges for a workplace--including the most pressing motivational, selection, performance evaluation, and reward issues. And for each of these areas, learners will devise a multi-step action plan for addressing the challenges identified.', 5, 5, 5, 5, 20, 5, 1, 0, CAST(N'2023-05-15T00:00:00.0000000' AS DateTime2), 1, N'(N'''')', 6, 21, NULL)
GO
SET IDENTITY_INSERT [dbo].[Syllabus] OFF
GO
SET IDENTITY_INSERT [dbo].[TrainingPrograms] ON 
GO
INSERT [dbo].[TrainingPrograms] ([Id], [Name], [Duration], [LastModify], [IsActive], [LastModifyBy], [CreatedOn], [CreatedBy], [isDeleted], [DaysDuration], [TimeDuration]) VALUES (1, N'Basic Web Design', 0, CAST(N'2023-09-28T00:00:00.0000000' AS DateTime2), 1, 1, CAST(N'2023-10-16T00:00:00.0000000' AS DateTime2), 1, 0, 6, 21)
GO
INSERT [dbo].[TrainingPrograms] ([Id], [Name], [Duration], [LastModify], [IsActive], [LastModifyBy], [CreatedOn], [CreatedBy], [isDeleted], [DaysDuration], [TimeDuration]) VALUES (2, N'Computer Communications', 0, CAST(N'2023-05-17T00:00:00.0000000' AS DateTime2), 1, 1, CAST(N'2023-05-01T00:00:00.0000000' AS DateTime2), 1, 0, 4, 15)
GO
INSERT [dbo].[TrainingPrograms] ([Id], [Name], [Duration], [LastModify], [IsActive], [LastModifyBy], [CreatedOn], [CreatedBy], [isDeleted], [DaysDuration], [TimeDuration]) VALUES (3, N'Software Development Lifecycle', 0, CAST(N'2023-08-10T00:00:00.0000000' AS DateTime2), 1, 1, CAST(N'2023-06-12T00:00:00.0000000' AS DateTime2), 1, 0, 5, 17)
GO
INSERT [dbo].[TrainingPrograms] ([Id], [Name], [Duration], [LastModify], [IsActive], [LastModifyBy], [CreatedOn], [CreatedBy], [isDeleted], [DaysDuration], [TimeDuration]) VALUES (4, N'Academic English Writing Skill', 0, CAST(N'2023-06-29T00:00:00.0000000' AS DateTime2), 1, 1, CAST(N'2023-07-03T00:00:00.0000000' AS DateTime2), 1, 0, 6, 21)
GO
INSERT [dbo].[TrainingPrograms] ([Id], [Name], [Duration], [LastModify], [IsActive], [LastModifyBy], [CreatedOn], [CreatedBy], [isDeleted], [DaysDuration], [TimeDuration]) VALUES (5, N'Ethics In IT', 0, CAST(N'2023-05-02T00:00:00.0000000' AS DateTime2), 1, 1, CAST(N'2023-07-18T00:00:00.0000000' AS DateTime2), 1, 0, 6, 21)
GO
INSERT [dbo].[TrainingPrograms] ([Id], [Name], [Duration], [LastModify], [IsActive], [LastModifyBy], [CreatedOn], [CreatedBy], [isDeleted], [DaysDuration], [TimeDuration]) VALUES (6, N'Academic Skills for University Success', 0, CAST(N'2023-08-10T00:00:00.0000000' AS DateTime2), 1, 1, CAST(N'2023-09-25T00:00:00.0000000' AS DateTime2), 1, 0, 6, 21)
GO
INSERT [dbo].[TrainingPrograms] ([Id], [Name], [Duration], [LastModify], [IsActive], [LastModifyBy], [CreatedOn], [CreatedBy], [isDeleted], [DaysDuration], [TimeDuration]) VALUES (7, N'Human Resource Management: HR for People Managers', 0, CAST(N'2023-05-21T00:00:00.0000000' AS DateTime2), 1, 8, CAST(N'2023-08-13T00:00:00.0000000' AS DateTime2), 9, 0, 6, 21)
GO
INSERT [dbo].[TrainingPrograms] ([Id], [Name], [Duration], [LastModify], [IsActive], [LastModifyBy], [CreatedOn], [CreatedBy], [isDeleted], [DaysDuration], [TimeDuration]) VALUES (8, N'Camelia1958', 93, CAST(N'2023-04-16T00:00:00.0000000' AS DateTime2), 1, 4, CAST(N'2023-10-03T00:00:00.0000000' AS DateTime2), 9, 1, 25, 0)
GO
INSERT [dbo].[TrainingPrograms] ([Id], [Name], [Duration], [LastModify], [IsActive], [LastModifyBy], [CreatedOn], [CreatedBy], [isDeleted], [DaysDuration], [TimeDuration]) VALUES (9, N'Houck1977', 102, CAST(N'2023-03-05T00:00:00.0000000' AS DateTime2), 0, 14, CAST(N'2023-08-14T00:00:00.0000000' AS DateTime2), 27, 0, 30, 0)
GO
INSERT [dbo].[TrainingPrograms] ([Id], [Name], [Duration], [LastModify], [IsActive], [LastModifyBy], [CreatedOn], [CreatedBy], [isDeleted], [DaysDuration], [TimeDuration]) VALUES (10, N'Clark2003', 39, CAST(N'2023-03-28T00:00:00.0000000' AS DateTime2), 0, 22, CAST(N'2023-12-25T00:00:00.0000000' AS DateTime2), 3, 0, 20, 0)
GO
INSERT [dbo].[TrainingPrograms] ([Id], [Name], [Duration], [LastModify], [IsActive], [LastModifyBy], [CreatedOn], [CreatedBy], [isDeleted], [DaysDuration], [TimeDuration]) VALUES (11, N'Bernardo43', 45, CAST(N'2023-08-08T00:00:00.0000000' AS DateTime2), 0, 3, CAST(N'2023-03-01T00:00:00.0000000' AS DateTime2), 4, 1, 30, 0)
GO
INSERT [dbo].[TrainingPrograms] ([Id], [Name], [Duration], [LastModify], [IsActive], [LastModifyBy], [CreatedOn], [CreatedBy], [isDeleted], [DaysDuration], [TimeDuration]) VALUES (12, N'Jacquline2027', 97, CAST(N'2023-07-12T00:00:00.0000000' AS DateTime2), 1, 6, CAST(N'2023-02-05T00:00:00.0000000' AS DateTime2), 9, 0, 15, 0)
GO
INSERT [dbo].[TrainingPrograms] ([Id], [Name], [Duration], [LastModify], [IsActive], [LastModifyBy], [CreatedOn], [CreatedBy], [isDeleted], [DaysDuration], [TimeDuration]) VALUES (13, N'Mafalda362', 106, CAST(N'2023-11-11T00:00:00.0000000' AS DateTime2), 0, 12, CAST(N'2023-09-08T00:00:00.0000000' AS DateTime2), 17, 1, 15, 0)
GO
INSERT [dbo].[TrainingPrograms] ([Id], [Name], [Duration], [LastModify], [IsActive], [LastModifyBy], [CreatedOn], [CreatedBy], [isDeleted], [DaysDuration], [TimeDuration]) VALUES (14, N'Ying432', 119, CAST(N'2023-01-01T00:00:00.0000000' AS DateTime2), 0, 14, CAST(N'2023-10-19T00:00:00.0000000' AS DateTime2), 12, 1, 20, 0)
GO
INSERT [dbo].[TrainingPrograms] ([Id], [Name], [Duration], [LastModify], [IsActive], [LastModifyBy], [CreatedOn], [CreatedBy], [isDeleted], [DaysDuration], [TimeDuration]) VALUES (15, N'Lynn417', 111, CAST(N'2023-03-29T00:00:00.0000000' AS DateTime2), 0, 14, CAST(N'2023-05-10T00:00:00.0000000' AS DateTime2), 11, 1, 30, 0)
GO
INSERT [dbo].[TrainingPrograms] ([Id], [Name], [Duration], [LastModify], [IsActive], [LastModifyBy], [CreatedOn], [CreatedBy], [isDeleted], [DaysDuration], [TimeDuration]) VALUES (16, N'Worrell829', 46, CAST(N'2023-01-10T00:00:00.0000000' AS DateTime2), 1, 3, CAST(N'2023-09-13T00:00:00.0000000' AS DateTime2), 16, 1, 45, 0)
GO
INSERT [dbo].[TrainingPrograms] ([Id], [Name], [Duration], [LastModify], [IsActive], [LastModifyBy], [CreatedOn], [CreatedBy], [isDeleted], [DaysDuration], [TimeDuration]) VALUES (17, N'Sanda1954', 111, CAST(N'2023-08-26T00:00:00.0000000' AS DateTime2), 0, 13, CAST(N'2023-09-18T00:00:00.0000000' AS DateTime2), 27, 1, 60, 0)
GO
INSERT [dbo].[TrainingPrograms] ([Id], [Name], [Duration], [LastModify], [IsActive], [LastModifyBy], [CreatedOn], [CreatedBy], [isDeleted], [DaysDuration], [TimeDuration]) VALUES (18, N'Briscoe1976', 33, CAST(N'2023-05-16T00:00:00.0000000' AS DateTime2), 1, 6, CAST(N'2023-10-03T00:00:00.0000000' AS DateTime2), 6, 0, 20, 0)
GO
INSERT [dbo].[TrainingPrograms] ([Id], [Name], [Duration], [LastModify], [IsActive], [LastModifyBy], [CreatedOn], [CreatedBy], [isDeleted], [DaysDuration], [TimeDuration]) VALUES (19, N'Terrilyn2010', 53, CAST(N'2023-04-08T00:00:00.0000000' AS DateTime2), 0, 1, CAST(N'2023-06-19T00:00:00.0000000' AS DateTime2), 16, 1, 60, 0)
GO
INSERT [dbo].[TrainingPrograms] ([Id], [Name], [Duration], [LastModify], [IsActive], [LastModifyBy], [CreatedOn], [CreatedBy], [isDeleted], [DaysDuration], [TimeDuration]) VALUES (20, N'Abbott1966', 38, CAST(N'2023-12-23T00:00:00.0000000' AS DateTime2), 0, 17, CAST(N'2023-06-08T00:00:00.0000000' AS DateTime2), 1, 0, 20, 0)
GO
INSERT [dbo].[TrainingPrograms] ([Id], [Name], [Duration], [LastModify], [IsActive], [LastModifyBy], [CreatedOn], [CreatedBy], [isDeleted], [DaysDuration], [TimeDuration]) VALUES (21, N'Matha333', 77, CAST(N'2023-07-12T00:00:00.0000000' AS DateTime2), 1, 9, CAST(N'2023-04-06T00:00:00.0000000' AS DateTime2), 9, 0, 35, 0)
GO
INSERT [dbo].[TrainingPrograms] ([Id], [Name], [Duration], [LastModify], [IsActive], [LastModifyBy], [CreatedOn], [CreatedBy], [isDeleted], [DaysDuration], [TimeDuration]) VALUES (22, N'Kerrie82', 71, CAST(N'2023-05-29T00:00:00.0000000' AS DateTime2), 1, 26, CAST(N'2023-02-21T00:00:00.0000000' AS DateTime2), 10, 0, 25, 0)
GO
INSERT [dbo].[TrainingPrograms] ([Id], [Name], [Duration], [LastModify], [IsActive], [LastModifyBy], [CreatedOn], [CreatedBy], [isDeleted], [DaysDuration], [TimeDuration]) VALUES (23, N'Columbus13', 38, CAST(N'2023-03-20T00:00:00.0000000' AS DateTime2), 0, 25, CAST(N'2023-08-03T00:00:00.0000000' AS DateTime2), 10, 0, 40, 0)
GO
INSERT [dbo].[TrainingPrograms] ([Id], [Name], [Duration], [LastModify], [IsActive], [LastModifyBy], [CreatedOn], [CreatedBy], [isDeleted], [DaysDuration], [TimeDuration]) VALUES (24, N'Snowden7', 83, CAST(N'2023-04-28T00:00:00.0000000' AS DateTime2), 1, 15, CAST(N'2023-12-10T00:00:00.0000000' AS DateTime2), 28, 0, 45, 0)
GO
INSERT [dbo].[TrainingPrograms] ([Id], [Name], [Duration], [LastModify], [IsActive], [LastModifyBy], [CreatedOn], [CreatedBy], [isDeleted], [DaysDuration], [TimeDuration]) VALUES (25, N'Farrah989', 33, CAST(N'2023-07-24T00:00:00.0000000' AS DateTime2), 1, 15, CAST(N'2023-07-24T00:00:00.0000000' AS DateTime2), 12, 0, 30, 0)
GO
INSERT [dbo].[TrainingPrograms] ([Id], [Name], [Duration], [LastModify], [IsActive], [LastModifyBy], [CreatedOn], [CreatedBy], [isDeleted], [DaysDuration], [TimeDuration]) VALUES (26, N'Eddie391', 52, CAST(N'2023-04-17T00:00:00.0000000' AS DateTime2), 0, 6, CAST(N'2023-12-30T00:00:00.0000000' AS DateTime2), 10, 0, 30, 0)
GO
INSERT [dbo].[TrainingPrograms] ([Id], [Name], [Duration], [LastModify], [IsActive], [LastModifyBy], [CreatedOn], [CreatedBy], [isDeleted], [DaysDuration], [TimeDuration]) VALUES (27, N'Ian426', 114, CAST(N'2023-09-14T00:00:00.0000000' AS DateTime2), 1, 22, CAST(N'2023-12-18T00:00:00.0000000' AS DateTime2), 5, 0, 30, 0)
GO
INSERT [dbo].[TrainingPrograms] ([Id], [Name], [Duration], [LastModify], [IsActive], [LastModifyBy], [CreatedOn], [CreatedBy], [isDeleted], [DaysDuration], [TimeDuration]) VALUES (28, N'Humphreys532', 97, CAST(N'2023-11-19T00:00:00.0000000' AS DateTime2), 0, 29, CAST(N'2023-03-26T00:00:00.0000000' AS DateTime2), 4, 0, 30, 0)
GO
INSERT [dbo].[TrainingPrograms] ([Id], [Name], [Duration], [LastModify], [IsActive], [LastModifyBy], [CreatedOn], [CreatedBy], [isDeleted], [DaysDuration], [TimeDuration]) VALUES (29, N'Alida43', 46, CAST(N'2023-01-17T00:00:00.0000000' AS DateTime2), 0, 15, CAST(N'2023-01-16T00:00:00.0000000' AS DateTime2), 14, 1, 30, 0)
GO
INSERT [dbo].[TrainingPrograms] ([Id], [Name], [Duration], [LastModify], [IsActive], [LastModifyBy], [CreatedOn], [CreatedBy], [isDeleted], [DaysDuration], [TimeDuration]) VALUES (30, N'Hatley1958', 118, CAST(N'2023-03-05T00:00:00.0000000' AS DateTime2), 0, 11, CAST(N'2023-04-08T00:00:00.0000000' AS DateTime2), 11, 0, 30, 0)
GO
SET IDENTITY_INSERT [dbo].[TrainingPrograms] OFF
GO
SET IDENTITY_INSERT [dbo].[Class] ON 
GO
INSERT [dbo].[Class] ([Id], [Code], [Location], [AttendeeType], [FSU], [ClassTime], [StartedOn], [FinishedOn], [Status], [ApprovedOn], [ApprovedBy], [TrainingProgramId], [CreatedOn], [CreatedBy], [isDeleted], [LectureFinishedTime], [LectureStartedTime], [Name], [DaysDuration], [TimeDuration]) VALUES (1, N'F630I', 3, 1, 0, 2, CAST(N'2023-10-20T00:00:00.0000000' AS DateTime2), CAST(N'2023-12-18T00:00:00.0000000' AS DateTime2), 2, CAST(N'2023-07-23T00:00:00.0000000' AS DateTime2), 20, 8, CAST(N'2023-06-03T00:00:00.0000000' AS DateTime2), 25, 0, N'08:00', N'10:00', N'Gale949', 27, 24)
GO
INSERT [dbo].[Class] ([Id], [Code], [Location], [AttendeeType], [FSU], [ClassTime], [StartedOn], [FinishedOn], [Status], [ApprovedOn], [ApprovedBy], [TrainingProgramId], [CreatedOn], [CreatedBy], [isDeleted], [LectureFinishedTime], [LectureStartedTime], [Name], [DaysDuration], [TimeDuration]) VALUES (2, N'XD815', 1, 0, 0, 3, CAST(N'2023-09-24T00:00:00.0000000' AS DateTime2), CAST(N'2023-02-22T00:00:00.0000000' AS DateTime2), 2, CAST(N'2023-05-08T00:00:00.0000000' AS DateTime2), 10, 1, CAST(N'2023-04-25T00:00:00.0000000' AS DateTime2), 2, 0, N'08:00', N'10:00', N'Ohara2004', 24, 28)
GO
INSERT [dbo].[Class] ([Id], [Code], [Location], [AttendeeType], [FSU], [ClassTime], [StartedOn], [FinishedOn], [Status], [ApprovedOn], [ApprovedBy], [TrainingProgramId], [CreatedOn], [CreatedBy], [isDeleted], [LectureFinishedTime], [LectureStartedTime], [Name], [DaysDuration], [TimeDuration]) VALUES (3, N'C3QTE', 3, 3, 0, 1, CAST(N'2023-10-19T00:00:00.0000000' AS DateTime2), CAST(N'2023-05-17T00:00:00.0000000' AS DateTime2), 1, CAST(N'2023-04-28T00:00:00.0000000' AS DateTime2), 1, 6, CAST(N'2023-10-03T00:00:00.0000000' AS DateTime2), 3, 0, N'08:00', N'10:00', N'Alonzo512', 29, 30)
GO
INSERT [dbo].[Class] ([Id], [Code], [Location], [AttendeeType], [FSU], [ClassTime], [StartedOn], [FinishedOn], [Status], [ApprovedOn], [ApprovedBy], [TrainingProgramId], [CreatedOn], [CreatedBy], [isDeleted], [LectureFinishedTime], [LectureStartedTime], [Name], [DaysDuration], [TimeDuration]) VALUES (4, N'O358Q', 1, 2, 0, 1, CAST(N'2023-04-09T00:00:00.0000000' AS DateTime2), CAST(N'2023-10-31T00:00:00.0000000' AS DateTime2), 1, CAST(N'2023-07-12T00:00:00.0000000' AS DateTime2), 8, 21, CAST(N'2023-12-22T00:00:00.0000000' AS DateTime2), 6, 0, N'08:00', N'10:00', N'Ressie658', 21, 21)
GO
INSERT [dbo].[Class] ([Id], [Code], [Location], [AttendeeType], [FSU], [ClassTime], [StartedOn], [FinishedOn], [Status], [ApprovedOn], [ApprovedBy], [TrainingProgramId], [CreatedOn], [CreatedBy], [isDeleted], [LectureFinishedTime], [LectureStartedTime], [Name], [DaysDuration], [TimeDuration]) VALUES (5, N'63471', 2, 0, 0, 2, CAST(N'2023-12-05T00:00:00.0000000' AS DateTime2), CAST(N'2023-09-27T00:00:00.0000000' AS DateTime2), 1, CAST(N'2023-06-06T00:00:00.0000000' AS DateTime2), 25, 7, CAST(N'2023-10-20T00:00:00.0000000' AS DateTime2), 2, 0, N'08:00', N'10:00', N'Alva2028', 28, 30)
GO
INSERT [dbo].[Class] ([Id], [Code], [Location], [AttendeeType], [FSU], [ClassTime], [StartedOn], [FinishedOn], [Status], [ApprovedOn], [ApprovedBy], [TrainingProgramId], [CreatedOn], [CreatedBy], [isDeleted], [LectureFinishedTime], [LectureStartedTime], [Name], [DaysDuration], [TimeDuration]) VALUES (6, N'84086', 3, 0, 0, 2, CAST(N'2023-04-22T00:00:00.0000000' AS DateTime2), CAST(N'2023-12-29T00:00:00.0000000' AS DateTime2), 2, CAST(N'2023-11-01T00:00:00.0000000' AS DateTime2), 25, 6, CAST(N'2023-02-02T00:00:00.0000000' AS DateTime2), 18, 0, N'08:00', N'10:00', N'Maki144', 22, 30)
GO
INSERT [dbo].[Class] ([Id], [Code], [Location], [AttendeeType], [FSU], [ClassTime], [StartedOn], [FinishedOn], [Status], [ApprovedOn], [ApprovedBy], [TrainingProgramId], [CreatedOn], [CreatedBy], [isDeleted], [LectureFinishedTime], [LectureStartedTime], [Name], [DaysDuration], [TimeDuration]) VALUES (7, N'1X428', 0, 2, 0, 1, CAST(N'2023-11-27T00:00:00.0000000' AS DateTime2), CAST(N'2023-04-15T00:00:00.0000000' AS DateTime2), 2, CAST(N'2023-01-02T00:00:00.0000000' AS DateTime2), 7, 30, CAST(N'2023-07-02T00:00:00.0000000' AS DateTime2), 25, 0, N'08:00', N'10:00', N'Hoyt334', 30, 27)
GO
INSERT [dbo].[Class] ([Id], [Code], [Location], [AttendeeType], [FSU], [ClassTime], [StartedOn], [FinishedOn], [Status], [ApprovedOn], [ApprovedBy], [TrainingProgramId], [CreatedOn], [CreatedBy], [isDeleted], [LectureFinishedTime], [LectureStartedTime], [Name], [DaysDuration], [TimeDuration]) VALUES (8, N'X67RT', 0, 0, 0, 3, CAST(N'2023-10-08T00:00:00.0000000' AS DateTime2), CAST(N'2023-02-11T00:00:00.0000000' AS DateTime2), 1, CAST(N'2023-12-24T00:00:00.0000000' AS DateTime2), 5, 10, CAST(N'2023-08-25T00:00:00.0000000' AS DateTime2), 15, 0, N'08:00', N'10:00', N'Desirae866', 23, 28)
GO
INSERT [dbo].[Class] ([Id], [Code], [Location], [AttendeeType], [FSU], [ClassTime], [StartedOn], [FinishedOn], [Status], [ApprovedOn], [ApprovedBy], [TrainingProgramId], [CreatedOn], [CreatedBy], [isDeleted], [LectureFinishedTime], [LectureStartedTime], [Name], [DaysDuration], [TimeDuration]) VALUES (9, N'5ZH6H', 4, 3, 0, 1, CAST(N'2023-01-29T00:00:00.0000000' AS DateTime2), CAST(N'2023-07-18T00:00:00.0000000' AS DateTime2), 2, CAST(N'2023-04-22T00:00:00.0000000' AS DateTime2), 29, 12, CAST(N'2023-11-24T00:00:00.0000000' AS DateTime2), 11, 0, N'08:00', N'10:00', N'Bachman1', 30, 30)
GO
INSERT [dbo].[Class] ([Id], [Code], [Location], [AttendeeType], [FSU], [ClassTime], [StartedOn], [FinishedOn], [Status], [ApprovedOn], [ApprovedBy], [TrainingProgramId], [CreatedOn], [CreatedBy], [isDeleted], [LectureFinishedTime], [LectureStartedTime], [Name], [DaysDuration], [TimeDuration]) VALUES (10, N'87AAH', 0, 3, 0, 2, CAST(N'2023-04-14T00:00:00.0000000' AS DateTime2), CAST(N'2023-01-08T00:00:00.0000000' AS DateTime2), 0, CAST(N'2023-06-19T00:00:00.0000000' AS DateTime2), 14, 22, CAST(N'2023-12-30T00:00:00.0000000' AS DateTime2), 1, 0, N'08:00', N'10:00', N'Antwan324', 21, 30)
GO
INSERT [dbo].[Class] ([Id], [Code], [Location], [AttendeeType], [FSU], [ClassTime], [StartedOn], [FinishedOn], [Status], [ApprovedOn], [ApprovedBy], [TrainingProgramId], [CreatedOn], [CreatedBy], [isDeleted], [LectureFinishedTime], [LectureStartedTime], [Name], [DaysDuration], [TimeDuration]) VALUES (11, N'UX95D', 1, 2, 0, 1, CAST(N'2023-11-26T00:00:00.0000000' AS DateTime2), CAST(N'2023-04-14T00:00:00.0000000' AS DateTime2), 1, CAST(N'2023-05-01T00:00:00.0000000' AS DateTime2), 21, 10, CAST(N'2023-12-18T00:00:00.0000000' AS DateTime2), 15, 0, N'08:00', N'10:00', N'Libbie1956', 20, 25)
GO
INSERT [dbo].[Class] ([Id], [Code], [Location], [AttendeeType], [FSU], [ClassTime], [StartedOn], [FinishedOn], [Status], [ApprovedOn], [ApprovedBy], [TrainingProgramId], [CreatedOn], [CreatedBy], [isDeleted], [LectureFinishedTime], [LectureStartedTime], [Name], [DaysDuration], [TimeDuration]) VALUES (12, N'70I99', 3, 2, 0, 1, CAST(N'2023-03-26T00:00:00.0000000' AS DateTime2), CAST(N'2023-03-26T00:00:00.0000000' AS DateTime2), 0, CAST(N'2023-04-05T00:00:00.0000000' AS DateTime2), 26, 26, CAST(N'2023-07-11T00:00:00.0000000' AS DateTime2), 15, 0, N'08:00', N'10:00', N'Falls2016', 28, 20)
GO
INSERT [dbo].[Class] ([Id], [Code], [Location], [AttendeeType], [FSU], [ClassTime], [StartedOn], [FinishedOn], [Status], [ApprovedOn], [ApprovedBy], [TrainingProgramId], [CreatedOn], [CreatedBy], [isDeleted], [LectureFinishedTime], [LectureStartedTime], [Name], [DaysDuration], [TimeDuration]) VALUES (13, N'B7KYN', 0, 3, 0, 3, CAST(N'2023-11-17T00:00:00.0000000' AS DateTime2), CAST(N'2023-10-18T00:00:00.0000000' AS DateTime2), 1, CAST(N'2023-01-17T00:00:00.0000000' AS DateTime2), 23, 16, CAST(N'2023-01-02T00:00:00.0000000' AS DateTime2), 5, 0, N'08:00', N'10:00', N'Abraham137', 22, 30)
GO
INSERT [dbo].[Class] ([Id], [Code], [Location], [AttendeeType], [FSU], [ClassTime], [StartedOn], [FinishedOn], [Status], [ApprovedOn], [ApprovedBy], [TrainingProgramId], [CreatedOn], [CreatedBy], [isDeleted], [LectureFinishedTime], [LectureStartedTime], [Name], [DaysDuration], [TimeDuration]) VALUES (14, N'M2927', 0, 3, 0, 1, CAST(N'2023-02-21T00:00:00.0000000' AS DateTime2), CAST(N'2023-12-19T00:00:00.0000000' AS DateTime2), 2, CAST(N'2023-03-22T00:00:00.0000000' AS DateTime2), 21, 5, CAST(N'2023-12-05T00:00:00.0000000' AS DateTime2), 22, 0, N'08:00', N'10:00', N'Marc37', 26, 26)
GO
INSERT [dbo].[Class] ([Id], [Code], [Location], [AttendeeType], [FSU], [ClassTime], [StartedOn], [FinishedOn], [Status], [ApprovedOn], [ApprovedBy], [TrainingProgramId], [CreatedOn], [CreatedBy], [isDeleted], [LectureFinishedTime], [LectureStartedTime], [Name], [DaysDuration], [TimeDuration]) VALUES (15, N'8Y8ML', 0, 1, 0, 3, CAST(N'2023-05-22T00:00:00.0000000' AS DateTime2), CAST(N'2023-07-23T00:00:00.0000000' AS DateTime2), 1, CAST(N'2023-09-27T00:00:00.0000000' AS DateTime2), 11, 27, CAST(N'2023-09-28T00:00:00.0000000' AS DateTime2), 22, 0, N'08:00', N'10:00', N'Arletha1965', 29, 24)
GO
INSERT [dbo].[Class] ([Id], [Code], [Location], [AttendeeType], [FSU], [ClassTime], [StartedOn], [FinishedOn], [Status], [ApprovedOn], [ApprovedBy], [TrainingProgramId], [CreatedOn], [CreatedBy], [isDeleted], [LectureFinishedTime], [LectureStartedTime], [Name], [DaysDuration], [TimeDuration]) VALUES (16, N'X2AN3', 3, 1, 0, 2, CAST(N'2023-03-02T00:00:00.0000000' AS DateTime2), CAST(N'2023-04-14T00:00:00.0000000' AS DateTime2), 1, CAST(N'2023-01-05T00:00:00.0000000' AS DateTime2), 21, 23, CAST(N'2023-11-11T00:00:00.0000000' AS DateTime2), 23, 1, N'08:00', N'10:00', N'Elizabet2025', 27, 26)
GO
INSERT [dbo].[Class] ([Id], [Code], [Location], [AttendeeType], [FSU], [ClassTime], [StartedOn], [FinishedOn], [Status], [ApprovedOn], [ApprovedBy], [TrainingProgramId], [CreatedOn], [CreatedBy], [isDeleted], [LectureFinishedTime], [LectureStartedTime], [Name], [DaysDuration], [TimeDuration]) VALUES (17, N'5W2CY', 0, 1, 0, 0, CAST(N'2023-03-02T00:00:00.0000000' AS DateTime2), CAST(N'2023-10-28T00:00:00.0000000' AS DateTime2), 0, CAST(N'2023-01-14T00:00:00.0000000' AS DateTime2), 1, 3, CAST(N'2023-01-17T00:00:00.0000000' AS DateTime2), 29, 1, N'08:00', N'10:00', N'Woodall819', 24, 23)
GO
INSERT [dbo].[Class] ([Id], [Code], [Location], [AttendeeType], [FSU], [ClassTime], [StartedOn], [FinishedOn], [Status], [ApprovedOn], [ApprovedBy], [TrainingProgramId], [CreatedOn], [CreatedBy], [isDeleted], [LectureFinishedTime], [LectureStartedTime], [Name], [DaysDuration], [TimeDuration]) VALUES (18, N'LCJW7', 1, 2, 0, 0, CAST(N'2023-04-03T00:00:00.0000000' AS DateTime2), CAST(N'2023-05-14T00:00:00.0000000' AS DateTime2), 1, CAST(N'2023-01-20T00:00:00.0000000' AS DateTime2), 2, 18, CAST(N'2023-11-12T00:00:00.0000000' AS DateTime2), 22, 1, N'08:00', N'10:00', N'Ross2011', 30, 29)
GO
INSERT [dbo].[Class] ([Id], [Code], [Location], [AttendeeType], [FSU], [ClassTime], [StartedOn], [FinishedOn], [Status], [ApprovedOn], [ApprovedBy], [TrainingProgramId], [CreatedOn], [CreatedBy], [isDeleted], [LectureFinishedTime], [LectureStartedTime], [Name], [DaysDuration], [TimeDuration]) VALUES (19, N'F9016', 3, 0, 0, 2, CAST(N'2023-04-18T00:00:00.0000000' AS DateTime2), CAST(N'2023-01-24T00:00:00.0000000' AS DateTime2), 0, CAST(N'2023-02-20T00:00:00.0000000' AS DateTime2), 20, 18, CAST(N'2023-05-31T00:00:00.0000000' AS DateTime2), 5, 0, N'14:00', N'16:00', N'Wingate6', 30, 25)
GO
INSERT [dbo].[Class] ([Id], [Code], [Location], [AttendeeType], [FSU], [ClassTime], [StartedOn], [FinishedOn], [Status], [ApprovedOn], [ApprovedBy], [TrainingProgramId], [CreatedOn], [CreatedBy], [isDeleted], [LectureFinishedTime], [LectureStartedTime], [Name], [DaysDuration], [TimeDuration]) VALUES (20, N'7SEP7', 0, 2, 0, 3, CAST(N'2023-03-17T00:00:00.0000000' AS DateTime2), CAST(N'2023-05-29T00:00:00.0000000' AS DateTime2), 0, CAST(N'2023-08-25T00:00:00.0000000' AS DateTime2), 12, 24, CAST(N'2023-08-16T00:00:00.0000000' AS DateTime2), 9, 1, N'14:00', N'16:00', N'Dick4', 25, 29)
GO
INSERT [dbo].[Class] ([Id], [Code], [Location], [AttendeeType], [FSU], [ClassTime], [StartedOn], [FinishedOn], [Status], [ApprovedOn], [ApprovedBy], [TrainingProgramId], [CreatedOn], [CreatedBy], [isDeleted], [LectureFinishedTime], [LectureStartedTime], [Name], [DaysDuration], [TimeDuration]) VALUES (21, N'R14O7', 2, 2, 0, 1, CAST(N'2023-08-06T00:00:00.0000000' AS DateTime2), CAST(N'2023-03-18T00:00:00.0000000' AS DateTime2), 1, CAST(N'2023-01-25T00:00:00.0000000' AS DateTime2), 18, 16, CAST(N'2023-09-04T00:00:00.0000000' AS DateTime2), 2, 1, N'14:00', N'16:00', N'Fumiko89', 24, 23)
GO
INSERT [dbo].[Class] ([Id], [Code], [Location], [AttendeeType], [FSU], [ClassTime], [StartedOn], [FinishedOn], [Status], [ApprovedOn], [ApprovedBy], [TrainingProgramId], [CreatedOn], [CreatedBy], [isDeleted], [LectureFinishedTime], [LectureStartedTime], [Name], [DaysDuration], [TimeDuration]) VALUES (22, N'E621N', 0, 1, 0, 2, CAST(N'2023-10-08T00:00:00.0000000' AS DateTime2), CAST(N'2023-02-22T00:00:00.0000000' AS DateTime2), 1, CAST(N'2023-10-07T00:00:00.0000000' AS DateTime2), 21, 5, CAST(N'2023-04-30T00:00:00.0000000' AS DateTime2), 3, 1, N'14:00', N'16:00', N'Buckner3', 24, 27)
GO
INSERT [dbo].[Class] ([Id], [Code], [Location], [AttendeeType], [FSU], [ClassTime], [StartedOn], [FinishedOn], [Status], [ApprovedOn], [ApprovedBy], [TrainingProgramId], [CreatedOn], [CreatedBy], [isDeleted], [LectureFinishedTime], [LectureStartedTime], [Name], [DaysDuration], [TimeDuration]) VALUES (23, N'CTI25', 2, 3, 0, 3, CAST(N'2023-11-21T00:00:00.0000000' AS DateTime2), CAST(N'2023-11-13T00:00:00.0000000' AS DateTime2), 0, CAST(N'2023-09-28T00:00:00.0000000' AS DateTime2), 8, 25, CAST(N'2023-02-05T00:00:00.0000000' AS DateTime2), 28, 1, N'14:00', N'16:00', N'Nick485', 26, 23)
GO
INSERT [dbo].[Class] ([Id], [Code], [Location], [AttendeeType], [FSU], [ClassTime], [StartedOn], [FinishedOn], [Status], [ApprovedOn], [ApprovedBy], [TrainingProgramId], [CreatedOn], [CreatedBy], [isDeleted], [LectureFinishedTime], [LectureStartedTime], [Name], [DaysDuration], [TimeDuration]) VALUES (24, N'6539F', 3, 0, 0, 2, CAST(N'2023-09-12T00:00:00.0000000' AS DateTime2), CAST(N'2023-05-02T00:00:00.0000000' AS DateTime2), 2, CAST(N'2023-09-10T00:00:00.0000000' AS DateTime2), 24, 25, CAST(N'2023-08-22T00:00:00.0000000' AS DateTime2), 28, 0, N'14:00', N'16:00', N'Shaffer2014', 24, 22)
GO
INSERT [dbo].[Class] ([Id], [Code], [Location], [AttendeeType], [FSU], [ClassTime], [StartedOn], [FinishedOn], [Status], [ApprovedOn], [ApprovedBy], [TrainingProgramId], [CreatedOn], [CreatedBy], [isDeleted], [LectureFinishedTime], [LectureStartedTime], [Name], [DaysDuration], [TimeDuration]) VALUES (25, N'90N5I', 0, 3, 0, 3, CAST(N'2023-09-02T00:00:00.0000000' AS DateTime2), CAST(N'2023-08-30T00:00:00.0000000' AS DateTime2), 0, CAST(N'2023-05-20T00:00:00.0000000' AS DateTime2), 7, 20, CAST(N'2023-07-10T00:00:00.0000000' AS DateTime2), 2, 0, N'14:00', N'16:00', N'Adolfo8', 30, 21)
GO
INSERT [dbo].[Class] ([Id], [Code], [Location], [AttendeeType], [FSU], [ClassTime], [StartedOn], [FinishedOn], [Status], [ApprovedOn], [ApprovedBy], [TrainingProgramId], [CreatedOn], [CreatedBy], [isDeleted], [LectureFinishedTime], [LectureStartedTime], [Name], [DaysDuration], [TimeDuration]) VALUES (26, N'75753', 2, 2, 0, 3, CAST(N'2023-01-10T00:00:00.0000000' AS DateTime2), CAST(N'2023-09-19T00:00:00.0000000' AS DateTime2), 0, CAST(N'2023-10-19T00:00:00.0000000' AS DateTime2), 14, 4, CAST(N'2023-11-01T00:00:00.0000000' AS DateTime2), 5, 0, N'14:00', N'16:00', N'Kelley1958', 21, 24)
GO
INSERT [dbo].[Class] ([Id], [Code], [Location], [AttendeeType], [FSU], [ClassTime], [StartedOn], [FinishedOn], [Status], [ApprovedOn], [ApprovedBy], [TrainingProgramId], [CreatedOn], [CreatedBy], [isDeleted], [LectureFinishedTime], [LectureStartedTime], [Name], [DaysDuration], [TimeDuration]) VALUES (27, N'8M7B4', 0, 1, 0, 1, CAST(N'2023-06-26T00:00:00.0000000' AS DateTime2), CAST(N'2023-02-28T00:00:00.0000000' AS DateTime2), 0, CAST(N'2023-09-21T00:00:00.0000000' AS DateTime2), 24, 6, CAST(N'2023-08-12T00:00:00.0000000' AS DateTime2), 5, 0, N'14:00', N'16:00', N'Alexandria497', 27, 20)
GO
INSERT [dbo].[Class] ([Id], [Code], [Location], [AttendeeType], [FSU], [ClassTime], [StartedOn], [FinishedOn], [Status], [ApprovedOn], [ApprovedBy], [TrainingProgramId], [CreatedOn], [CreatedBy], [isDeleted], [LectureFinishedTime], [LectureStartedTime], [Name], [DaysDuration], [TimeDuration]) VALUES (28, N'HE423', 3, 0, 0, 3, CAST(N'2023-08-02T00:00:00.0000000' AS DateTime2), CAST(N'2023-02-21T00:00:00.0000000' AS DateTime2), 2, CAST(N'2023-09-30T00:00:00.0000000' AS DateTime2), 16, 4, CAST(N'2023-03-20T00:00:00.0000000' AS DateTime2), 25, 0, N'14:00', N'16:00', N'Jayna2026', 20, 26)
GO
INSERT [dbo].[Class] ([Id], [Code], [Location], [AttendeeType], [FSU], [ClassTime], [StartedOn], [FinishedOn], [Status], [ApprovedOn], [ApprovedBy], [TrainingProgramId], [CreatedOn], [CreatedBy], [isDeleted], [LectureFinishedTime], [LectureStartedTime], [Name], [DaysDuration], [TimeDuration]) VALUES (29, N'79OTL', 2, 3, 0, 0, CAST(N'2023-11-01T00:00:00.0000000' AS DateTime2), CAST(N'2023-04-27T00:00:00.0000000' AS DateTime2), 1, CAST(N'2023-01-20T00:00:00.0000000' AS DateTime2), 29, 28, CAST(N'2023-01-05T00:00:00.0000000' AS DateTime2), 7, 0, N'14:00', N'16:00', N'Charlette17', 26, 23)
GO
INSERT [dbo].[Class] ([Id], [Code], [Location], [AttendeeType], [FSU], [ClassTime], [StartedOn], [FinishedOn], [Status], [ApprovedOn], [ApprovedBy], [TrainingProgramId], [CreatedOn], [CreatedBy], [isDeleted], [LectureFinishedTime], [LectureStartedTime], [Name], [DaysDuration], [TimeDuration]) VALUES (30, N'YXM4M', 1, 2, 0, 1, CAST(N'2023-12-02T00:00:00.0000000' AS DateTime2), CAST(N'2023-02-09T00:00:00.0000000' AS DateTime2), 0, CAST(N'2023-07-24T00:00:00.0000000' AS DateTime2), 27, 25, CAST(N'2023-01-18T00:00:00.0000000' AS DateTime2), 26, 0, N'14:00', N'16:00', N'Ramon2015', 30, 28)
GO
SET IDENTITY_INSERT [dbo].[Class] OFF
GO
SET IDENTITY_INSERT [dbo].[AuditPlan] ON 
GO
INSERT [dbo].[AuditPlan] ([Id], [AuditDate], [PlannedBy], [Location], [SyllabusId], [ClassId]) VALUES (1, CAST(N'2023-09-10T00:00:00.0000000' AS DateTime2), 22, N'Aut error rerum.', 26, 13)
GO
INSERT [dbo].[AuditPlan] ([Id], [AuditDate], [PlannedBy], [Location], [SyllabusId], [ClassId]) VALUES (2, CAST(N'2023-01-13T00:00:00.0000000' AS DateTime2), 11, N'Ex neque qui.', 14, 19)
GO
INSERT [dbo].[AuditPlan] ([Id], [AuditDate], [PlannedBy], [Location], [SyllabusId], [ClassId]) VALUES (3, CAST(N'2023-10-26T00:00:00.0000000' AS DateTime2), 7, N'Error voluptatem adipisci.', 16, 22)
GO
INSERT [dbo].[AuditPlan] ([Id], [AuditDate], [PlannedBy], [Location], [SyllabusId], [ClassId]) VALUES (4, CAST(N'2023-10-08T00:00:00.0000000' AS DateTime2), 12, N'Non quam delectus.', 23, 8)
GO
INSERT [dbo].[AuditPlan] ([Id], [AuditDate], [PlannedBy], [Location], [SyllabusId], [ClassId]) VALUES (5, CAST(N'2023-07-17T00:00:00.0000000' AS DateTime2), 29, N'Velit sit itaque.', 28, 12)
GO
INSERT [dbo].[AuditPlan] ([Id], [AuditDate], [PlannedBy], [Location], [SyllabusId], [ClassId]) VALUES (6, CAST(N'2023-11-16T00:00:00.0000000' AS DateTime2), 10, N'Omnis possimus voluptatibus.', 5, 3)
GO
INSERT [dbo].[AuditPlan] ([Id], [AuditDate], [PlannedBy], [Location], [SyllabusId], [ClassId]) VALUES (7, CAST(N'2023-08-04T00:00:00.0000000' AS DateTime2), 16, N'Animi nemo enim.', 23, 4)
GO
INSERT [dbo].[AuditPlan] ([Id], [AuditDate], [PlannedBy], [Location], [SyllabusId], [ClassId]) VALUES (8, CAST(N'2023-01-14T00:00:00.0000000' AS DateTime2), 8, N'Et odit unde.', 15, 4)
GO
INSERT [dbo].[AuditPlan] ([Id], [AuditDate], [PlannedBy], [Location], [SyllabusId], [ClassId]) VALUES (9, CAST(N'2023-06-11T00:00:00.0000000' AS DateTime2), 7, N'Deleniti tempora voluptate.', 6, 19)
GO
INSERT [dbo].[AuditPlan] ([Id], [AuditDate], [PlannedBy], [Location], [SyllabusId], [ClassId]) VALUES (10, CAST(N'2023-10-15T00:00:00.0000000' AS DateTime2), 16, N'Perspiciatis non quis.', 12, 21)
GO
INSERT [dbo].[AuditPlan] ([Id], [AuditDate], [PlannedBy], [Location], [SyllabusId], [ClassId]) VALUES (11, CAST(N'2023-01-17T00:00:00.0000000' AS DateTime2), 18, N'Aspernatur quia sit.', 9, 28)
GO
INSERT [dbo].[AuditPlan] ([Id], [AuditDate], [PlannedBy], [Location], [SyllabusId], [ClassId]) VALUES (12, CAST(N'2023-03-02T00:00:00.0000000' AS DateTime2), 16, N'Sint aspernatur omnis.', 3, 6)
GO
INSERT [dbo].[AuditPlan] ([Id], [AuditDate], [PlannedBy], [Location], [SyllabusId], [ClassId]) VALUES (13, CAST(N'2023-03-01T00:00:00.0000000' AS DateTime2), 13, N'Maxime unde laborum.', 18, 27)
GO
INSERT [dbo].[AuditPlan] ([Id], [AuditDate], [PlannedBy], [Location], [SyllabusId], [ClassId]) VALUES (14, CAST(N'2023-09-12T00:00:00.0000000' AS DateTime2), 10, N'Doloremque porro repudiandae.', 8, 6)
GO
INSERT [dbo].[AuditPlan] ([Id], [AuditDate], [PlannedBy], [Location], [SyllabusId], [ClassId]) VALUES (15, CAST(N'2023-11-16T00:00:00.0000000' AS DateTime2), 23, N'Consequatur omnis corrupti.', 7, 20)
GO
INSERT [dbo].[AuditPlan] ([Id], [AuditDate], [PlannedBy], [Location], [SyllabusId], [ClassId]) VALUES (16, CAST(N'2023-09-19T00:00:00.0000000' AS DateTime2), 7, N'Earum maxime quidem.', 23, 9)
GO
INSERT [dbo].[AuditPlan] ([Id], [AuditDate], [PlannedBy], [Location], [SyllabusId], [ClassId]) VALUES (17, CAST(N'2023-06-26T00:00:00.0000000' AS DateTime2), 13, N'Odit quidem ullam.', 27, 29)
GO
INSERT [dbo].[AuditPlan] ([Id], [AuditDate], [PlannedBy], [Location], [SyllabusId], [ClassId]) VALUES (18, CAST(N'2023-08-05T00:00:00.0000000' AS DateTime2), 8, N'Voluptas ipsam distinctio.', 26, 14)
GO
INSERT [dbo].[AuditPlan] ([Id], [AuditDate], [PlannedBy], [Location], [SyllabusId], [ClassId]) VALUES (19, CAST(N'2023-10-09T00:00:00.0000000' AS DateTime2), 22, N'Rerum praesentium qui.', 22, 21)
GO
INSERT [dbo].[AuditPlan] ([Id], [AuditDate], [PlannedBy], [Location], [SyllabusId], [ClassId]) VALUES (20, CAST(N'2023-01-20T00:00:00.0000000' AS DateTime2), 15, N'Qui praesentium quos.', 28, 12)
GO
INSERT [dbo].[AuditPlan] ([Id], [AuditDate], [PlannedBy], [Location], [SyllabusId], [ClassId]) VALUES (21, CAST(N'2023-07-08T00:00:00.0000000' AS DateTime2), 1, N'Excepturi expedita nostrum.', 29, 1)
GO
INSERT [dbo].[AuditPlan] ([Id], [AuditDate], [PlannedBy], [Location], [SyllabusId], [ClassId]) VALUES (22, CAST(N'2023-12-17T00:00:00.0000000' AS DateTime2), 26, N'Perspiciatis temporibus amet.', 8, 23)
GO
INSERT [dbo].[AuditPlan] ([Id], [AuditDate], [PlannedBy], [Location], [SyllabusId], [ClassId]) VALUES (23, CAST(N'2023-06-15T00:00:00.0000000' AS DateTime2), 18, N'Voluptatem culpa ducimus.', 17, 5)
GO
INSERT [dbo].[AuditPlan] ([Id], [AuditDate], [PlannedBy], [Location], [SyllabusId], [ClassId]) VALUES (24, CAST(N'2023-11-09T00:00:00.0000000' AS DateTime2), 2, N'Suscipit sit aspernatur.', 3, 4)
GO
INSERT [dbo].[AuditPlan] ([Id], [AuditDate], [PlannedBy], [Location], [SyllabusId], [ClassId]) VALUES (25, CAST(N'2023-05-30T00:00:00.0000000' AS DateTime2), 4, N'Dolorem voluptatem repellendus.', 2, 12)
GO
INSERT [dbo].[AuditPlan] ([Id], [AuditDate], [PlannedBy], [Location], [SyllabusId], [ClassId]) VALUES (26, CAST(N'2023-09-12T00:00:00.0000000' AS DateTime2), 17, N'Sed ad et.', 5, 7)
GO
INSERT [dbo].[AuditPlan] ([Id], [AuditDate], [PlannedBy], [Location], [SyllabusId], [ClassId]) VALUES (27, CAST(N'2023-09-15T00:00:00.0000000' AS DateTime2), 24, N'Iste vero iste.', 9, 24)
GO
INSERT [dbo].[AuditPlan] ([Id], [AuditDate], [PlannedBy], [Location], [SyllabusId], [ClassId]) VALUES (28, CAST(N'2023-02-16T00:00:00.0000000' AS DateTime2), 15, N'Rerum accusantium nostrum.', 6, 24)
GO
INSERT [dbo].[AuditPlan] ([Id], [AuditDate], [PlannedBy], [Location], [SyllabusId], [ClassId]) VALUES (29, CAST(N'2023-06-04T00:00:00.0000000' AS DateTime2), 22, N'Voluptatem officia dolor...', 24, 5)
GO
INSERT [dbo].[AuditPlan] ([Id], [AuditDate], [PlannedBy], [Location], [SyllabusId], [ClassId]) VALUES (30, CAST(N'2023-08-13T00:00:00.0000000' AS DateTime2), 11, N'Qui facere iste.', 26, 12)
GO
SET IDENTITY_INSERT [dbo].[AuditPlan] OFF
GO
SET IDENTITY_INSERT [dbo].[AuditDetail] ON 
GO
INSERT [dbo].[AuditDetail] ([Id], [Feedback], [PlanId], [AuditorId], [TraineeId], [Status]) VALUES (1, N'Dolor iusto consequatur dolorem minus labore suscipit natus. Voluptatem et nemo ratione corporis voluptatem! Itaque odio rerum et nam voluptatum qui aut blanditiis et. Blanditiis repellat aliquid ducimus non necessitatibus, maxime dolorum cumque voluptas. Aut eos sed quibusdam doloremque dolorem magni et corporis et.', 14, 3, 7, 1)
GO
INSERT [dbo].[AuditDetail] ([Id], [Feedback], [PlanId], [AuditorId], [TraineeId], [Status]) VALUES (2, N'Aut tempora sapiente aut dolores esse. Sed ut qui iste explicabo autem nobis ut omnis aut. Aperiam ad perspiciatis temporibus quis inventore voluptas. Sit voluptatibus nisi nostrum deserunt laudantium. Accusantium et atque qui dolor vero dolore odit laboriosam neque. Dolore quam, voluptatem vel nulla numquam tempore consequatur quod illum.', 30, 3, 8, 1)
GO
INSERT [dbo].[AuditDetail] ([Id], [Feedback], [PlanId], [AuditorId], [TraineeId], [Status]) VALUES (3, N'Odit nesciunt, aperiam corrupti iste quibusdam sequi ut eum voluptatem. Aut sapiente eius doloribus animi ea nesciunt doloribus ab voluptate. Aliquam est a nihil consectetur fugiat deleniti et sunt sed. Deserunt ut provident aut neque similique sit omnis ut distinctio.', 11, 18, 27, 0)
GO
INSERT [dbo].[AuditDetail] ([Id], [Feedback], [PlanId], [AuditorId], [TraineeId], [Status]) VALUES (4, N'Magni quam quisquam voluptates placeat ducimus et dicta quas ipsa; ipsum unde nihil aliquam numquam deserunt incidunt est id ut. Veniam quia, deleniti dolorum culpa molestiae voluptatem vero quia est.', 28, 12, 25, 1)
GO
INSERT [dbo].[AuditDetail] ([Id], [Feedback], [PlanId], [AuditorId], [TraineeId], [Status]) VALUES (5, N'Non et at. Deleniti unde veniam corporis dignissimos porro et iste odit unde. Natus aliquid ut dolorem soluta qui suscipit quia, asperiores ipsum. Voluptatibus maxime labore quos error quaerat est odio iste in! Sit nostrum quos sit quia architecto a deserunt similique voluptatem...', 4, 20, 1, 0)
GO
INSERT [dbo].[AuditDetail] ([Id], [Feedback], [PlanId], [AuditorId], [TraineeId], [Status]) VALUES (6, N'Eveniet nulla sit ea magni. Praesentium rerum excepturi. Commodi veritatis nam quo. Voluptas animi dolorum eum nihil vel, quisquam consectetur et sit. Incidunt recusandae nisi rerum aut ipsa blanditiis expedita, quis neque. Et consequatur odio assumenda id eum ad consequatur in magni.', 4, 16, 28, 1)
GO
INSERT [dbo].[AuditDetail] ([Id], [Feedback], [PlanId], [AuditorId], [TraineeId], [Status]) VALUES (7, N'Laborum accusantium ea facere maxime voluptate tempora; eius nam omnis sunt facere non cumque dolor alias sit. Quia alias consectetur ipsam quibusdam! Velit numquam aperiam aut blanditiis est sed adipisci. Eos adipisci et architecto. Dicta aut ratione sunt rerum voluptatem. Maxime sed ut unde blanditiis qui...', 3, 10, 21, 0)
GO
INSERT [dbo].[AuditDetail] ([Id], [Feedback], [PlanId], [AuditorId], [TraineeId], [Status]) VALUES (8, N'Impedit aspernatur eligendi laudantium ullam nesciunt. Quam quibusdam labore velit sit iste quia? Omnis voluptatibus aut. Nobis fuga autem et culpa exercitationem a totam vel ut. Aliquam veritatis error laudantium facilis quam veniam odit deserunt ipsam. Nulla dolores, aspernatur consectetur voluptas laborum ut ad sapiente magni.', 19, 28, 3, 0)
GO
INSERT [dbo].[AuditDetail] ([Id], [Feedback], [PlanId], [AuditorId], [TraineeId], [Status]) VALUES (9, N'Vero consequatur soluta sed omnis qui praesentium dolorem sequi voluptatum. Nam aut, at sed reiciendis voluptas dolor atque sequi consequuntur. Optio mollitia, error tempore debitis nihil dolorem omnis blanditiis architecto.', 2, 29, 12, 0)
GO
INSERT [dbo].[AuditDetail] ([Id], [Feedback], [PlanId], [AuditorId], [TraineeId], [Status]) VALUES (10, N'Voluptatibus sunt suscipit est laborum laboriosam et quisquam rerum. Rerum aut ipsa id rem eligendi sequi saepe tempore; laudantium ut enim et dignissimos facere omnis unde necessitatibus. Consequatur est ad natus ut molestiae aliquid est incidunt quas. Ut tempora culpa cumque et nam dolore? Facere voluptatem sit minus quas unde, optio sed natus iste. Asperiores sit natus.', 30, 27, 21, 0)
GO
INSERT [dbo].[AuditDetail] ([Id], [Feedback], [PlanId], [AuditorId], [TraineeId], [Status]) VALUES (11, N'Vero temporibus quis est minima unde et. Quod rem quia! Aut maiores, omnis culpa vitae est error ut ipsa sunt; quisquam provident voluptas, sunt voluptatem iste excepturi ea voluptatem consequatur. Non ut laborum iste exercitationem unde molestias id voluptas quia.', 8, 9, 14, 1)
GO
INSERT [dbo].[AuditDetail] ([Id], [Feedback], [PlanId], [AuditorId], [TraineeId], [Status]) VALUES (12, N'Maiores qui, quam unde doloremque dolorem est quia id voluptatum. Reiciendis et facilis sunt accusamus doloremque sit, ipsum omnis quis.', 24, 13, 27, 0)
GO
INSERT [dbo].[AuditDetail] ([Id], [Feedback], [PlanId], [AuditorId], [TraineeId], [Status]) VALUES (13, N'Ut in, sunt eligendi natus voluptatem voluptas sint hic eos. Maxime ipsum non quidem! Et ipsa dicta. Qui et odit sapiente, et omnis illo sed illum quasi; placeat minus tempora minima sint et non eum quos soluta. Non sint iste voluptatibus officiis voluptas molestias quos iste quia.', 11, 17, 8, 1)
GO
INSERT [dbo].[AuditDetail] ([Id], [Feedback], [PlanId], [AuditorId], [TraineeId], [Status]) VALUES (14, N'Ex incidunt excepturi; debitis pariatur voluptas. Qui facere explicabo est ut asperiores aut perferendis ut. Quod cum laboriosam. Eos omnis deleniti quasi aut recusandae corrupti! Nulla quis expedita unde eveniet qui deserunt voluptates natus est. Magnam ut qui voluptatum nostrum nisi, explicabo nemo cumque debitis...', 27, 11, 11, 0)
GO
INSERT [dbo].[AuditDetail] ([Id], [Feedback], [PlanId], [AuditorId], [TraineeId], [Status]) VALUES (15, N'Dolores sint ullam non, quas et quia et voluptas est.', 29, 10, 12, 1)
GO
INSERT [dbo].[AuditDetail] ([Id], [Feedback], [PlanId], [AuditorId], [TraineeId], [Status]) VALUES (16, N'Fugiat esse corporis blanditiis laboriosam perspiciatis quaerat aut sit voluptas. Expedita sit illo natus itaque sequi voluptatum! Eius dicta ex amet. Modi sed ut sed. Et minus aut iure nemo. Est nihil sed tempora voluptates. Assumenda sunt consequatur aut optio et magni ut sunt beatae; voluptatem hic qui.', 23, 9, 23, 1)
GO
INSERT [dbo].[AuditDetail] ([Id], [Feedback], [PlanId], [AuditorId], [TraineeId], [Status]) VALUES (17, N'Quibusdam eveniet temporibus quisquam. Dolores ad dolorem! Accusantium sunt qui nisi unde ducimus sunt aliquid. Accusamus aperiam exercitationem unde sunt ut id repudiandae quibusdam. Velit odit natus assumenda. Ut voluptatibus, placeat nobis sint eos earum animi ullam ut. Nulla soluta, dignissimos qui voluptatem odio et ratione est qui.', 26, 12, 25, 1)
GO
INSERT [dbo].[AuditDetail] ([Id], [Feedback], [PlanId], [AuditorId], [TraineeId], [Status]) VALUES (18, N'Blanditiis cum, aut necessitatibus omnis quod magni laboriosam nulla repellat. Et nihil iste delectus. Commodi sed aut et explicabo omnis placeat, omnis similique doloribus. Recusandae sit unde libero inventore consequatur commodi modi eum nobis. Fugiat aut, quidem aliquam perferendis natus dolorem fugiat adipisci voluptate.', 18, 4, 24, 0)
GO
INSERT [dbo].[AuditDetail] ([Id], [Feedback], [PlanId], [AuditorId], [TraineeId], [Status]) VALUES (19, N'Assumenda est sapiente magni, nostrum sit nulla ducimus nam in. Cumque et quia dolor dolores, harum accusamus harum aut perspiciatis. Quo autem nisi, quis reiciendis natus iure modi ducimus vel. Quo magnam sit molestias voluptatem consequatur ad et perspiciatis nam.', 23, 9, 23, 0)
GO
INSERT [dbo].[AuditDetail] ([Id], [Feedback], [PlanId], [AuditorId], [TraineeId], [Status]) VALUES (20, N'Dolor explicabo quam. Et vel perferendis placeat! Perspiciatis dolor ut. Amet placeat atque qui velit sed aut? Sed obcaecati accusamus nihil ut voluptatem repellat dicta! Explicabo in laudantium ullam culpa hic unde voluptatem corrupti adipisci. Aut corrupti pariatur soluta aut. Illum reprehenderit tempora voluptatem sunt, quaerat tenetur ad perferendis eum!', 3, 4, 3, 1)
GO
INSERT [dbo].[AuditDetail] ([Id], [Feedback], [PlanId], [AuditorId], [TraineeId], [Status]) VALUES (21, N'Tempora neque dicta rerum ipsa. Assumenda quia omnis est maiores. Commodi numquam provident perspiciatis aut omnis sapiente. Alias reiciendis delectus quod eaque deserunt odio? In velit quaerat aut ut repellat ipsa; possimus similique at. Quod odit molestiae ut, magni sunt laboriosam nihil ratione veritatis.', 28, 14, 14, 0)
GO
INSERT [dbo].[AuditDetail] ([Id], [Feedback], [PlanId], [AuditorId], [TraineeId], [Status]) VALUES (22, N'Unde possimus ut accusantium qui voluptatem ea qui quasi qui. Quis est aut at, illum labore in quaerat deleniti ut. Obcaecati natus nulla ipsa omnis et suscipit rem dolorem unde.', 12, 10, 12, 1)
GO
INSERT [dbo].[AuditDetail] ([Id], [Feedback], [PlanId], [AuditorId], [TraineeId], [Status]) VALUES (23, N'Qui iste libero totam obcaecati laboriosam iste dolor. Natus eum minus! Ipsa numquam incidunt commodi. Facilis enim assumenda perspiciatis alias ut quia incidunt facere veniam. Facere quia optio consequatur maiores id. Sunt itaque saepe ut impedit voluptates. Saepe magni rerum laboriosam sint; est ad voluptatem. Est nesciunt molestias. Recusandae aut hic!', 26, 13, 12, 0)
GO
INSERT [dbo].[AuditDetail] ([Id], [Feedback], [PlanId], [AuditorId], [TraineeId], [Status]) VALUES (24, N'Iste omnis aspernatur architecto sit porro veniam et nihil porro. Mollitia voluptas impedit nostrum aperiam ullam est unde corrupti dolorum. Molestias explicabo est cupiditate corporis qui quia laboriosam magnam sint.', 27, 12, 13, 1)
GO
INSERT [dbo].[AuditDetail] ([Id], [Feedback], [PlanId], [AuditorId], [TraineeId], [Status]) VALUES (25, N'Molestias dicta placeat omnis eligendi natus, sed sint voluptas accusamus. Sit perspiciatis ut animi fuga ad officia architecto eos quis. Natus corporis omnis qui voluptate odit eos dolor nesciunt illo. Est eligendi omnis et illo labore vero, tempora vitae quasi.', 13, 25, 7, 1)
GO
INSERT [dbo].[AuditDetail] ([Id], [Feedback], [PlanId], [AuditorId], [TraineeId], [Status]) VALUES (26, N'Fugit incidunt deleniti aliquid dicta magni fuga necessitatibus facilis. Odio vel voluptatum earum sit perferendis voluptatem aspernatur. Nostrum nihil aperiam autem aliquid ipsa officiis odit nesciunt saepe. Non eaque ipsam iusto animi quod adipisci, corrupti voluptatem corporis! Aliquid asperiores adipisci pariatur ex sit cum incidunt iste quis...', 6, 24, 13, 1)
GO
INSERT [dbo].[AuditDetail] ([Id], [Feedback], [PlanId], [AuditorId], [TraineeId], [Status]) VALUES (27, N'Mollitia necessitatibus fugit aut aperiam quo eligendi ex. Doloremque consequatur necessitatibus et aut perferendis sed et distinctio! Est ipsa rem aperiam quia impedit odio sed fugit. Ut debitis repudiandae minus doloremque ab et corrupti non. Omnis voluptatem dignissimos nam voluptatibus vero ad. Velit beatae maiores. Ipsum qui sed! Omnis nobis quia.', 11, 12, 11, 1)
GO
INSERT [dbo].[AuditDetail] ([Id], [Feedback], [PlanId], [AuditorId], [TraineeId], [Status]) VALUES (28, N'Eos enim eos neque qui est harum totam; corrupti suscipit rem dolor sit fugiat. Ad quia rem; sit non repudiandae sunt sed dolores qui sed modi. Minus tempore tenetur quisquam magnam facere ullam quia ratione. Officiis placeat ratione! Consequatur necessitatibus, aut nulla ut cum eum nam non sit.', 17, 20, 10, 1)
GO
INSERT [dbo].[AuditDetail] ([Id], [Feedback], [PlanId], [AuditorId], [TraineeId], [Status]) VALUES (29, N'Doloremque unde, et asperiores omnis est enim quia est rerum. Quia iste quisquam iure voluptate quidem eum, omnis quas enim; sed ex deleniti et est dolor aliquid deleniti odio consequatur. Placeat adipisci maiores fugit qui suscipit nesciunt eos voluptas qui.', 17, 14, 27, 0)
GO
INSERT [dbo].[AuditDetail] ([Id], [Feedback], [PlanId], [AuditorId], [TraineeId], [Status]) VALUES (30, N'Laborum ad harum autem, doloremque nihil nulla id quo fuga. Ex beatae repudiandae doloribus, dignissimos culpa velit earum voluptas dolore.', 12, 26, 27, 1)
GO
SET IDENTITY_INSERT [dbo].[AuditDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[OutputStandards] ON 
GO
INSERT [dbo].[OutputStandards] ([Id], [Code], [Description]) VALUES (1, N'CLN123', N'Write clean code')
GO
INSERT [dbo].[OutputStandards] ([Id], [Code], [Description]) VALUES (2, N'SQL123', N'Being able to perform SQL query')
GO
INSERT [dbo].[OutputStandards] ([Id], [Code], [Description]) VALUES (3, N'WEB123', N'Have some basic concept of creating webpage')
GO
INSERT [dbo].[OutputStandards] ([Id], [Code], [Description]) VALUES (4, N'CSD123', N'Have knowledge about some algorithms and data structures')
GO
INSERT [dbo].[OutputStandards] ([Id], [Code], [Description]) VALUES (5, N'PRJ123', N'Being able to create a web app using Java Servlet')
GO
SET IDENTITY_INSERT [dbo].[OutputStandards] OFF
GO
SET IDENTITY_INSERT [dbo].[Units] ON 
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (1, N'Course Introduction', 1, 0, 85)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (2, N'Verb Tenses and Conjunctions', 2, 0, 35)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (3, N'Compound and Complex Sentences', 3, 0, 75)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (4, N'More Commas, Parallel Structure, and Sentence Variety', 4, 0, 70)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (5, N'Local Area Networks', 1, 0, 45)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (6, N'Frame Switching and Packet Switching', 2, 0, 60)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (7, N'Routing in Packet Networks', 3, 0, 120)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (8, N'Writing Cause/Effect Essays', 4, 0, 120)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (9, N'Writing Argument Essays', 5, 0, 60)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (10, N'Course Introduction', 1, 0, 30)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (11, N'Advanced Argument Essays', 2, 0, 120)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (12, N'Avoiding Plagiarism', 3, 0, 120)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (13, N'Synthesis Essay', 4, 0, 165)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (14, N'Documented Essay', 5, 0, 135)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (15, N'Course Introduction', 1, 0, 120)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (16, N'Introduction to Research', 1, 0, 90)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (17, N'Doing Research and Planning the Paper', 2, 0, 105)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (18, N'Language for Research Writing', 3, 0, 105)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (19, N'More on Citing Sources and Formatting', 4, 0, 105)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (20, N'Getting Started', 1, 0, 165)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (21, N'Research and Annotated Bibliography', 2, 0, 15)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (22, N'First Draft and Introduction Paragraph', 3, 0, 75)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (23, N'The Rough Draft', 4, 0, 90)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (24, N'Revise and Rewrite', 5, 0, 15)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (25, N'The Final Draft', 6, 0, 75)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (26, N'Alternative Approaches to Managing Human Resources', 1, 0, 0)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (27, N'What Makes Employees Work? Money, Of Course!', 2, 0, 0)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (28, N'What Makes Employees Work Revisited...Non-Monetary Motivations', 3, 0, 0)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (29, N'The People Manager as Part of a Complex System', 4, 0, 0)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (30, N'Workforce Planning: Aligning Recruitment and Selection with Company Strategy', 1, 0, 0)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (31, N'Recruitment: Finding the Best Candidates', 2, 0, 0)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (32, N'Selection: Choosing the Best Candidates', 3, 0, 0)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (33, N'Special Topic: Onboarding', 4, 0, 0)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (34, N'GETTING STARTED - DEVELOPING PERFORMANCE MANAGEMENT SYSTEMS', 1, 0, 0)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (35, N'IMPLEMENTING PERFORMANCE MANAGEMENT SYSTEMS', 2, 0, 0)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (36, N'TOOLS FOR EFFECTIVE PERFORMANCE MANAGEMENT', 3, 0, 0)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (37, N'CREATING A POSITIVE PERFORMANCE CULTURE', 4, 0, 0)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (38, N'Pay Determination', 1, 0, 0)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (39, N'Pay for Performance', 2, 0, 0)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (40, N'Benefits and Compliance', 3, 0, 0)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (41, N'NON-MONETARY REWARDS', 4, 0, 0)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (42, N'Welcome and Getting Started', 1, 0, 0)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (43, N'Milestone 1: Identifying the Internal and External Context', 2, 0, 0)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (44, N'Milestone 2: Recruiting and Selecting Employees', 3, 0, 0)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (45, N'Milestone 3: Managing Employee Performance', 4, 0, 0)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (46, N'Milestone 4: Managing Employee Compensation and Rewards', 5, 0, 0)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (47, N'Submitting the Final Project', 6, 0, 0)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (48, N'HTML5', 2, 0, 0)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (49, N'HTML Tags', 2, 0, 0)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (50, N'HTML Validation & Accessibility', 3, 0, 0)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (51, N'CSS Getting Started with Simple Styling', 2, 0, 0)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (52, N'CSS Advanced Styling', 2, 0, 0)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (53, N'CSS Psuedo-classes, Pseudo-elements, Transitions, and Positioning', 1, 0, 0)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (54, N'CSS Putting It All Together', 1, 0, 0)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (55, N'CSS Recommendation', 1, 0, 0)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (56, N'Introduction to JavaScript', 2, 0, 0)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (57, N'Reacting to Your Audience', 2, 0, 0)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (58, N'Arrays and Looping', 2, 0, 0)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (59, N'Validating Form Data', 2, 0, 0)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (60, N'Style with Responsive Design', 2, 0, 0)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (61, N'Basic Concepts', 2, 0, 0)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (62, N'Use Existing Frameworks', 2, 0, 0)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (63, N'Identify Data-Driven Emerging Technologies', 2, 0, 0)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (64, N'Examine Legal and Ethical Privacy Concepts as they Relate to Data-Driven Technology', 2, 0, 0)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (65, N'Examine Types of Bias', 1, 0, 0)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (66, N'Examine Common Ethical Theories', 1, 0, 0)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (67, N'Examine Ethical Principles that Apply to Data-Driven Technology', 2, 0, 0)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (68, N'Apply Frameworks to Your Ethical Responsibilities for Data-Driven Technologies', 2, 0, 0)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (69, N'Apply an Ethical Frameork to Navigate an Ethically Challenging Dilemma', 2, 0, 0)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (70, N'Follow Regulations and Standards That Have an Impact on Business Strategy', 2, 0, 0)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (71, N'Reconcile Conflicts Between Ethics, Regulations, Societal Needs, and Business Demands', 2, 0, 0)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (72, N'Ethical Risk Analysis Fundamentals', 2, 0, 0)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (73, N'Manage Privacy Risks', 2, 0, 0)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (74, N'Manage Accountability Risks', 2, 0, 0)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (75, N'Manage Transparency and Explainability Risks', 2, 0, 0)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (76, N'Manage Fairness and Non-Discrimination Risks', 2, 0, 0)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (77, N'Manage Safety and Security Risks', 2, 0, 0)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (78, N'Communicate the Business Impacts of Ethical Risks to Diverse Stakeholders', 2, 0, 0)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (79, N'Design Diverse, Equitable, and Inclusive External Communication Strategies', 2, 0, 0)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (80, N'Manage a Crisis, Communicate Critical Messages, and Ensure Business Continuity', 2, 0, 0)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (81, N'Manage the Media During an Ethical Crisis', 2, 0, 0)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (82, N'Communicate the Business Impacts of Ethical Risks to Diverse Stakeholders', 2, 0, 0)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (83, N'Design Diverse, Equitable, and Inclusive External Communication Strategies', 2, 0, 0)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (84, N'Manage a Crisis, Communicate Critical Messages, and Ensure Business Continuity', 2, 0, 0)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (85, N'Manage the Media During an Ethical Crisis', 2, 0, 0)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (86, N'Promote an Ethical Organizational Culture', 2, 0, 0)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (87, N'Maintain Ethical Considerations in Governance and Policy Making', 2, 0, 0)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (88, N'Develop and Deploy a Code of Ethics', 2, 0, 0)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (89, N'Develop and Deploy Ethical Organizational Policies', 2, 0, 0)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (90, N'Communication Networks and Services', 2, 0, 0)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (91, N'Layered Architectures', 2, 0, 0)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (92, N'Socket API & Digital Transmissions', 2, 0, 0)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (93, N'Error Control', 2, 0, 0)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (94, N'Peer-to-Peer Protocols', 2, 0, 0)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (95, N'Reliable Services and Data Link Controls', 2, 0, 0)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (96, N'Medium access control', 2, 0, 0)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (97, N'Local Area Networks', 2, 0, 0)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (98, N'Frame Switching and Packet Switching', 2, 0, 0)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (99, N'Routing in Packet Networks', 2, 0, 0)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (100, N'Shortest-Path Routing', 2, 0, 0)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (101, N'Traffic Management', 2, 0, 0)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (102, N'Internet Protocol', 2, 0, 0)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (103, N'IP Addressing', 2, 0, 0)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (104, N'Transmission Control Protocol', 2, 0, 0)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (105, N'Advanced Topics', 2, 0, 0)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (106, N'Verb Tenses and Conjunctions', 1, 0, 0)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (107, N'Compound and Complex Sentences', 1, 0, 0)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (108, N'Verb Tenses and Conjunctions', 1, 0, 0)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (109, N'More Commas, Parallel Structure, and Sentence Variety', 1, 0, 0)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (110, N'Essay Writing', 1, 0, 0)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (111, N'Writing Compare/Contrast Essays', 1, 0, 0)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (112, N'Writing Cause/Effect Essays', 1, 0, 0)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (113, N'Advanced Argument Essays', 1, 0, 0)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (114, N'Avoiding Plagiarism', 1, 0, 0)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (115, N'Synthesis Essay', 1, 0, 0)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (116, N'Introduction to Research', 1, 0, 0)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (117, N'Doing Research and Planning the Paper', 1, 0, 0)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (118, N'Language for Research Writing', 1, 0, 0)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (119, N'More on Citing Sources and Formatting', 1, 0, 0)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (120, N'Software development processes', 1, 0, 0)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (121, N'Software Development Models: Traditional Models', 1, 0, 0)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (122, N'Software Development Models: Agile and Lean', 1, 0, 0)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (123, N'Agile Fundamentals', 1, 0, 0)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (124, N'Requirements and Planning', 1, 0, 0)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (125, N'XP and Course Wrap-up', 1, 0, 0)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (126, N'Scrum', 1, 0, 0)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (127, N'Introduction to Quality Software', 1, 0, 0)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (128, N'Quality in Design', 1, 0, 0)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (129, N'Quality in Architecture', 1, 0, 0)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (130, N'Quality in Implementation', 1, 0, 0)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (131, N'Quality in Testing and Deployment', 1, 0, 0)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (132, N'Lean Fundamentals', 1, 0, 0)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (133, N'Kanban, Value Steam Mapping and Kaizen', 1, 0, 0)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (134, N'Lean Startup', 1, 0, 0)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (135, N'Design Thinking', 1, 0, 0)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (136, N'Access and search for information efficiently and effectively using a variety of digital tools.', 1, 0, 0)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (137, N'Critically evaluate the reliability of sources for an academic context.', 1, 0, 0)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (138, N'Filter, manage and organize information from a wide variety of sources for use in academic study.', 1, 0, 0)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (139, N'Demonstrate awareness of ethical issues related to academic integrity surrounding the access and use of information.', 1, 0, 0)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (140, N'Understand how to use digital tools for referencing and attribution in order to avoid plagiarism.', 1, 0, 0)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (141, N'Understand how to disseminate and communicate information in a professional way, including managing digital identity and building networks for learning and research.', 1, 0, 0)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (142, N'Recognise the importance and function of problem solving and creative thought within academic study and the role of critical thought in creative ideation.', 1, 0, 0)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (143, N'Develop a toolkit to be able to identify real problems and goals within ill-defined problems', 1, 0, 0)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (144, N'Recognize and apply analytical problem solving techniques', 1, 0, 0)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (145, N'Recognise and apply creative problem solving techniques', 1, 0, 0)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (146, N'Identify the use of creativity within and types of problems most common to your field', 1, 0, 0)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (147, N'Apply learnt problem solving and creative ideation skills to a real-life context and reflect on personal learning processes', 1, 0, 0)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (148, N'Use critical thinking and argumentation in university contexts to improve academic results', 1, 0, 0)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (149, N'Understand the importance and function of critical thinking in academic culture', 1, 0, 0)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (150, N'Use a variety of thinking tools to improve critical thinking', 1, 0, 0)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (151, N'Identify types of argument, and bias within arguments, in order to better evaluate the strength of arguments', 1, 0, 0)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (152, N'Use evidence to support claims in arguments', 1, 0, 0)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (153, N'Apply critical thinking and argumentation to real world problems and issues', 1, 0, 0)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (154, N'Recognise the importance of communication in communities of practice at university', 1, 0, 0)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (155, N'Understand contexts of communication at university and associated expectations', 1, 0, 0)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (156, N'Communicate clearly across a variety of different contexts and to a wide range of audiences by adapting communicative styles appropriately', 1, 0, 0)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (157, N'Demonstrate, negotiate, and further understanding through spoken, written, visual, and conversational modes', 1, 0, 0)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (158, N'Effectively formulate arguments and communicate research findings through the process of researching, composing, and editing', 1, 0, 0)
GO
INSERT [dbo].[Units] ([Id], [Name], [Session], [isDeleted], [Duration]) VALUES (159, N'Confidently engage in constructive and critical dialogue with respect and professionalism', 1, 0, 0)
GO
SET IDENTITY_INSERT [dbo].[Units] OFF
GO
SET IDENTITY_INSERT [dbo].[Lectures] ON 
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (1, N'Course Introduction Video', 15, 0, 1, 1, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (2, N'Practice Peer-graded Assignment: Introductions', 60, 0, 4, 1, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (3, N'Pre-Course Survey', 10, 0, 1, 1, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (4, N'Introduction to Verbs and Conjunctions', 10, 0, 1, 2, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (5, N'Verb Tenses Video Lecture', 10, 0, 1, 2, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (6, N'Verb Tenses Practice Quiz', 15, 0, 3, 2, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (7, N'Compound Sentences Video Lecture', 15, 0, 1, 3, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (8, N'Transitions Study Guide', 30, 0, 1, 3, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (9, N'Compound Sentence Practice Quiz', 30, 0, 3, 3, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (10, N'More Uses of Commas Video Lecture', 10, 0, 1, 4, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (11, N'Therefore vs. ThereforeLL', 15, 0, 1, 4, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (12, N'Sentence Variety Video Lecture', 15, 0, 1, 4, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (13, N'Commas, Parallel Structure, and Sentence Variety', 30, 0, 3, 4, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (14, N'Course Introduction Video', 15, 0, 1, 5, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (15, N'Academic Integrity Video Lecture', 15, 0, 1, 5, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (16, N'Practice Quiz', 15, 1, 1, 5, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (17, N'Body Paragraphs Video Lecture', 15, 0, 1, 6, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (18, N'Paragraph Basics Video Lecture', 15, 0, 1, 6, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (19, N'Essay Writing Practice Quiz', 30, 0, 3, 6, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (20, N'Introduction to Writing Compare/Contrast Essays', 15, 0, 1, 7, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (21, N'Compare/Contrast Essay Video Lecture', 15, 0, 1, 7, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (22, N'Practice Peer-graded Assignment: Compare/Contrast Essay Discussion', 60, 0, 4, 7, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (23, N'Writing Compare/Contrast Essays', 30, 0, 3, 7, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (24, N'Introduction to Writing Cause/Effect Essays', 15, 0, 1, 8, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (25, N'Cause/Effect Video Lecture', 15, 0, 1, 8, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (26, N'Practice Peer-graded Assignment: Cause/Effect Essay Discussion', 60, 0, 4, 8, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (27, N'Writing Cause/Effect Essays', 30, 0, 3, 8, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (28, N'Introduction to Writing Argument Essays', 15, 0, 1, 9, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (29, N'Argument Essays Video Lecture', 15, 0, 1, 9, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (30, N'Argument Essay Practice Quiz', 30, 0, 3, 9, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (31, N'Practice Peer-graded Assignment: Argument Essay Discussion', 60, 0, 4, 9, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (32, N'Course Introduction Video', 15, 0, 1, 10, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (33, N'Message About Peer Reviews', 15, 0, 1, 10, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (34, N'Using Sources Video Lecture', 15, 0, 1, 11, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (35, N'Writing Longer Essays Video Lecture', 15, 0, 1, 11, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (36, N'Peer-graded Assignment: Advanced Argument Essay Peer Review', 60, 0, 4, 11, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (37, N'Advanced Argument Quiz', 30, 0, 3, 11, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (38, N'What is Plagiarism? Video Lecture', 15, 0, 1, 12, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (39, N'How to Avoid Plagiarism Lecture', 15, 0, 1, 12, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (40, N'Practice Peer-graded Assignment: Discussion of Plagiarism Cases 2', 60, 0, 4, 12, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (41, N'Plagiarism Quiz', 30, 0, 3, 12, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (42, N'Synthesis Essay Video Lecture', 15, 0, 1, 13, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (43, N'Practice Peer-graded Assignment: Plagiarism in Music Discussion', 60, 0, 4, 13, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (44, N'Peer-graded Assignment: Synthesis Essay Peer Review', 60, 0, 4, 13, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (45, N'Synthesis Essay Quiz', 30, 0, 3, 13, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (46, N'Documented Essay Video Lecture--Updated', 30, 0, 1, 15, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (47, N'Practice Peer-graded Assignment: Documented Essay Discussion', 60, 0, 1, 15, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (48, N'Creating a Works Cited Page Video Lecture--Updated', 15, 0, 1, 15, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (49, N'Documented Essay Quiz', 30, 0, 3, 15, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (50, N'Course Introduction Video', 15, 0, 1, 16, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (51, N'Practice Peer-graded Assignment: Practice Writing Research Questions', 60, 0, 4, 16, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (52, N'Practice Quiz', 30, 0, 3, 16, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (53, N'Finding and Evaluating Academic Sources Video Lecture', 15, 0, 1, 16, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (54, N'Practice Peer-graded Assignment: Practice Finding Sources', 60, 0, 4, 17, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (55, N'Introduction to Research Quiz', 30, 0, 3, 17, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (56, N'More on Finding Sources and Taking Notes Video Lecture', 15, 0, 1, 18, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (57, N'Peer-graded Assignment: Annotated Bibliography Assignment Feedback', 60, 0, 4, 18, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (58, N'Practice Quiz', 30, 0, 3, 18, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (59, N'Academic Tone and Language Video Lecture', 15, 0, 1, 19, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (60, N'Peer-graded Assignment: Using Statistics for Writing Peer Review', 60, 0, 4, 19, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (61, N'Language for Research Quiz', 30, 0, 3, 19, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (62, N'Using Purdue Owl Video Lecture', 15, 0, 1, 20, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (63, N'Practice Peer-graded Assignment: Purdue Owl Practice', 60, 0, 1, 20, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (64, N'Practice Quiz', 30, 0, 3, 20, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (65, N'Citing Sources and Formatting Quiz', 30, 0, 3, 20, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (66, N'Plagiarism Resource video', 15, 0, 1, 21, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (67, N'Practice Peer-graded Assignment: Submit Your Outline', 60, 0, 4, 21, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (68, N'Making an Outline video', 15, 0, 1, 21, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (69, N'Finding Sources video', 15, 0, 1, 22, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (70, N'Annotated Bibliography', 15, 0, 1, 21, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (71, N'Practice Peer-graded Assignment: Submit Annotated Bibliography', 60, 0, 4, 21, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (72, N'Writing Longer Essays video', 15, 0, 1, 23, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (73, N'Using Sources video', 15, 0, 1, 23, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (74, N'Practice Peer-graded Assignment: Submit Introduction Paragraph', 60, 0, 4, 23, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (75, N'Works Cited video', 15, 1, 1, 24, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (76, N'MLA Formatting video', 15, 1, 1, 24, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (77, N'Practice Peer-graded Assignment: Submit Research Paper Rough Draft', 60, 1, 4, 24, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (78, N'Academic Tone and Language video', 15, 1, 1, 25, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (79, N'Peer-graded Assignment: Submit Research Paper Final Draft', 60, 1, 4, 26, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (80, N'End of Capstone Video', 15, 1, 1, 26, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (81, N'Video: Embrace Your Role as a Manager (Course Introduction)', 15, 1, 1, 152, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (82, N'Course Readiness and Personal Goals', 30, 1, 3, 152, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (83, N'Different Approaches to Managing People', 30, 1, 3, 152, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (84, N'Video: Why Worry about Why Employees Work?', 15, 1, 1, 153, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (85, N'Video: The Daily Grind', 15, 1, 1, 153, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (86, N'Practice Peer-graded Assignment: What Work Means to Me...and Others', 60, 1, 4, 153, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (87, N'Monetary Aspects of Work', 30, 1, 3, 153, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (88, N'Video: Seeking Fulfillment from Work', 15, 1, 1, 154, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (89, N'Video: Work Complexities Mean Managing is Complex', 15, 1, 1, 154, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (90, N'Peer-graded Assignment: Analyzing Your HR Landscape', 60, 1, 4, 154, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (91, N'Video: You Can’t Always Do What You Want', 15, 1, 1, 155, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (92, N'Video: Interview with HR VP', 15, 1, 1, 155, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (93, N'Managing in a Complex System', 30, 1, 3, 155, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (94, N'HR for People Managers Overview', 15, 1, 1, 156, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (95, N'Aligning Recruitment and Selection with Company Strategy', 30, 1, 3, 156, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (96, N'Peer-graded Assignment: Workforce Planning Application', 60, 1, 4, 156, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (97, N'HR Responsibilities in Recruitment', 15, 1, 1, 156, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (98, N'Sourcing the Best Talent', 30, 1, 3, 156, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (99, N'Recruitment: Finding the Best Candidates', 30, 1, 3, 156, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (100, N'Cultural Fit', 30, 1, 3, 157, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (101, N'U.S. Department of Labor Website', 15, 1, 1, 157, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (102, N'WSJ Article: Are You Disabled? Your Boss Needs to Know', 15, 1, 1, 157, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (103, N'Selection Process Overview', 15, 1, 1, 158, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (104, N'Selection Overview Process', 30, 1, 3, 158, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (105, N'Choosing the Best Candidates', 30, 1, 3, 158, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (106, N'Onboarding as Part of Employee Engagement', 15, 1, 1, 159, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (107, N'Bringing on a New Employee', 30, 1, 3, 159, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (108, N'Peer-graded Assignment: Onboarding Portfolio', 60, 1, 4, 159, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (109, N'Developing People (Course Introduction)', 15, 1, 1, 86, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (110, N'Linking Performance Management to Financial Outcomes (ROI)', 15, 1, 1, 156, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (111, N'Managing Employee Performance Overview', 30, 1, 3, 88, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (112, N'Developing Performance Management Systems', 30, 1, 3, 29, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (113, N'"Calculating" Performance', 15, 1, 1, 39, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (114, N'Defining Performance', 30, 1, 3, 150, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (115, N'Peer-graded Assignment: Management by Objective (MBO)', 60, 1, 4, 25, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (116, N'Benefits and Purposes of Performance Reviews', 15, 1, 1, 148, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (117, N'Effective Reviews', 30, 1, 3, 40, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (118, N'Tools for Effective Performance Management', 30, 1, 3, 136, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (119, N'Role of Culture in Performance Management', 15, 1, 1, 99, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (120, N'Role of Culture in the Organization', 30, 1, 3, 108, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (121, N'Creating a Positive Performance Culture', 30, 1, 3, 28, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (122, N'Overview of the Pay Model', 15, 1, 1, 115, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (123, N'Building a Pay Structure', 30, 1, 3, 25, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (124, N'Pay Determination', 30, 1, 3, 45, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (125, N'Tying Pay to Performance Evaluations', 15, 1, 1, 37, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (126, N'Raises and Promotions', 30, 1, 3, 28, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (127, N'Should Pay Depend on Performance Evaluations?', 15, 1, 1, 95, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (128, N'Pay For Performance', 30, 1, 3, 40, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (129, N'An Overview of US Employment Law', 15, 1, 1, 104, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (130, N'Pay Compliance', 30, 1, 3, 33, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (131, N'Peer-graded Assignment: Job and Benefits Analysis', 60, 1, 4, 152, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (132, N'Value to Employees', 15, 1, 1, 68, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (133, N'Introduction to Non-Monetary Rewards', 30, 1, 3, 91, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (134, N'Non-Monetary Rewards', 30, 1, 3, 108, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (135, N'Welcome to the HRM Capstone', 15, 1, 1, 13, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (136, N'Practice Peer-graded Assignment: Identifying a Work Unit to Analyze', 60, 1, 4, 94, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (137, N'Overview of the HRM Capstone', 15, 1, 1, 141, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (138, N'External Influences on HR Strategies', 15, 1, 1, 46, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (139, N'Why Worry about Why Employees Work?', 15, 1, 1, 79, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (140, N'Practice Peer-graded Assignment: Identifying the Internal and External Context', 60, 1, 4, 98, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (141, N'Internal vs. External Hires', 15, 1, 1, 41, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (142, N'Selection Process Overview', 15, 1, 1, 7, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (143, N'Practice Peer-graded Assignment: Recruitment and Selection', 60, 1, 4, 110, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (144, N'Characteristics of Good Performance Objectives', 15, 1, 1, 37, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (145, N'What is Multi Rater Feedback?', 15, 1, 1, 68, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (146, N'Practice Peer-graded Assignment: 1st Draft of Milestone 3: Performance Management', 60, 1, 4, 65, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (147, N'From a Business Strategy to a Pay Strategy', 15, 1, 1, 150, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (148, N'Producing a Job Description', 15, 1, 1, 135, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (149, N'Practice Peer-graded Assignment: Milestone 4: Compensation Management', 60, 1, 4, 67, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (150, N'Peer-graded Assignment: HRM Capstone Project', 60, 1, 4, 132, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (151, N'Congratulations Video from the Instructors', 15, 1, 1, 49, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (152, N'Staying in contact with each other', 15, 1, 1, 9, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (153, N'Evolution of HTML', 60, 1, 1, 48, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (154, N'The origins of MOSAIC', 60, 1, 1, 48, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (155, N'HTML5 Tags and Syntax', 60, 1, 1, 49, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (156, N'Hyperlinks', 60, 1, 1, 49, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (157, N'Accessibility', 60, 1, 1, 50, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (158, N'Validating Your Site', 60, 1, 1, 50, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (159, N'Putting Your Code Out on to the Web', 60, 1, 1, 50, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (160, N'Building your site', 60, 1, 1, 51, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (161, N'Frame work', 60, 1, 1, 51, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (162, N'Design Sketch from a template', 60, 1, 1, 52, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (163, N'Design Sketch using a framework', 60, 1, 1, 52, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (164, N'W3 Validator', 60, 1, 1, 53, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (165, N'Uploading Files to Your Account using Byethost', 60, 1, 1, 54, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (166, N'Why Validate?', 60, 1, 1, 55, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (167, N'The Document Object Model ', 60, 1, 1, 56, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (168, N'DOM Review with Object Oriented Programming', 60, 1, 1, 56, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (169, N'Folder Structure / Organizing Your Code', 60, 1, 1, 57, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (170, N'JavaScript Interactive Photo Gallery', 60, 1, 1, 57, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (171, N'JavaScript Arrays', 60, 1, 1, 58, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (172, N'Advanced Coding Techniques', 60, 1, 1, 58, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (173, N'Simple Validation', 60, 1, 1, 59, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (174, N'Intro to JQuery', 60, 1, 1, 59, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (175, N'What is Responsive Design?', 60, 1, 1, 60, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (176, N'Pixel to Em conversion tool', 60, 1, 1, 60, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (177, N'Media Queries', 60, 1, 1, 61, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (178, N'Fluid Measurements and Media Queries', 60, 1, 1, 61, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (179, N'Frameworks', 60, 1, 1, 62, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (180, N'Boostrap', 60, 1, 1, 62, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (181, N'CEET Specialization Introduction', 30, 1, 1, 63, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (182, N'Promote the Ethical Use of Data-Driven Technologies Course Introduction', 30, 1, 1, 63, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (183, N'Course Welcome & Success Tips', 30, 1, 1, 63, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (184, N'Ethics Make a Difference in Emerging Technologies', 30, 1, 1, 63, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (185, N'Big Data', 30, 1, 1, 64, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (186, N'Working with Big Data', 30, 1, 1, 64, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (187, N'Data Analytics', 30, 1, 1, 64, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (188, N'Data Science Pipeline', 30, 1, 1, 64, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (189, N'Artificial Intelligence', 30, 1, 1, 65, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (190, N'Narrow AI', 30, 1, 1, 65, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (191, N'General AI and Superintelligence', 30, 1, 1, 65, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (192, N'Ambient Intelligence and IoT', 30, 1, 1, 65, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (193, N'The Black Box Problem', 30, 1, 1, 66, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (194, N'Ethical Considerations for Data Science', 30, 1, 1, 66, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (195, N'Benefits of Ethical Data Science', 30, 1, 1, 66, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (196, N'A Day in the Life of an Ethical Data Scientist', 30, 1, 1, 66, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (197, N'Data Science Ethics in Practice', 30, 1, 1, 67, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (198, N'How Close are We to General AI?', 30, 1, 1, 67, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (199, N'Cracking the Black Box', 30, 1, 1, 67, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (200, N'Ethical Considerations for AI', 30, 1, 1, 67, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (201, N'Benefits of Ethical AI', 30, 1, 1, 68, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (202, N'A Day in the Life of an Ethical AI Engineer', 30, 1, 1, 68, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (203, N'The Question of Data Ownership', 30, 1, 1, 68, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (204, N'PII', 30, 1, 1, 68, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (205, N'Privacy Risks in IoT/Ambient Intelligence Technologies', 30, 1, 1, 69, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (206, N'Privacy Protection through Individual Authorization', 30, 1, 1, 69, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (207, N'Privacy Protection through Data Management', 30, 1, 1, 69, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (208, N'Privacy by Design', 30, 1, 1, 69, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (209, N'Differential Privacy', 30, 1, 1, 70, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (210, N'Legal Terminology: Responsibility, Accountability, and Liability', 30, 1, 1, 70, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (211, N'Technology Contract Types', 30, 1, 1, 70, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (212, N'Smart Contracts', 30, 1, 1, 70, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (213, N'The Privacy Paradox', 30, 1, 1, 71, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (214, N'Protected Attributes', 30, 1, 1, 71, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (215, N'Project Nightingale Case Study', 30, 1, 1, 99, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (216, N'How Anonymous Is Anonymous?', 30, 1, 1, 5, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (217, N'Data Sharing Agreements', 30, 1, 1, 72, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (218, N'Visual Contracts', 30, 1, 1, 46, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (219, N'Click-through Agreement', 30, 1, 1, 72, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (220, N'The Impact of Bias on Emerging Technologies2m', 30, 1, 1, 6, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (221, N'Bias1m', 30, 1, 1, 73, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (222, N'Sociological Bias3m', 30, 1, 1, 47, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (223, N'Implicit Bias4m', 30, 1, 1, 151, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (224, N'Cognitive Biases6m', 30, 1, 1, 68, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (225, N'Confirmation Bias7m', 30, 1, 1, 74, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (226, N'Temporal Bias2m', 30, 1, 1, 124, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (227, N'Complacency and Automation Biases4m', 30, 1, 1, 132, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (228, N'Data Collection Bias5m', 30, 1, 1, 74, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (229, N'Statistical Bias4m', 30, 1, 1, 75, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (230, N'Thinking about Right and Wrong4m', 30, 1, 1, 64, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (231, N'Moral Philosophy2m', 30, 1, 1, 133, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (232, N'Moral Relativism2m', 30, 1, 1, 32, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (233, N'Deontology2m', 30, 1, 1, 76, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (234, N'Kant''s Categorical Imperative4m', 30, 1, 1, 65, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (235, N'Universalizability2m', 30, 1, 1, 111, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (236, N'Consequentialism and Utilitarianism5m', 30, 1, 1, 51, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (237, N'Virtue Ethics3m', 30, 1, 1, 84, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (238, N'Free Will and Determinism5m', 30, 1, 1, 101, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (239, N'Norms and Morals2m', 30, 1, 1, 51, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (240, N'Moral Agency2m', 30, 1, 1, 52, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (241, N'Moral Psychology2m', 30, 1, 1, 85, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (242, N'Moral Reasoning3m', 30, 1, 1, 102, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (243, N'Moral Judgements3m', 30, 1, 1, 52, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (244, N'Applied Ethics2m', 30, 1, 1, 53, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (245, N'Business Ethics4m', 30, 1, 1, 91, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (246, N'Professional Ethics3m', 30, 1, 1, 58, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (247, N'Engineering Ethics2m', 30, 1, 1, 53, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (248, N'Social Ethics4m', 30, 1, 1, 54, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (249, N'Human Rights and Animal Rights3m', 30, 1, 1, 92, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (250, N'Bioethics2m', 30, 1, 1, 59, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (251, N'Environmental Ethics2m', 30, 1, 1, 54, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (252, N'Detect and Mitigate Ethical Risks Course Introduction3m', 30, 1, 1, 127, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (253, N'CEET Specialization Introduction7m', 30, 1, 1, 93, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (254, N'Course Welcome & Success Tips3m', 30, 1, 1, 86, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (255, N'The Importance of Managing Risks3m', 30, 1, 1, 7, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (256, N'Risk Management Process3m', 30, 1, 1, 128, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (257, N'Risk Identification3m', 30, 1, 1, 112, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (258, N'Risk Analysis4m', 30, 1, 1, 134, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (259, N'Risk Mitigation4m', 30, 1, 1, 8, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (260, N'Types of Ethical Risk2m', 30, 1, 1, 129, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (261, N'Distributions2m', 30, 1, 1, 64, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (262, N'Central Tendency3m', 30, 1, 1, 135, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (263, N'Variance and Standard Deviation4m', 30, 1, 1, 9, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (264, N'Skewness and Kurtosis3m', 30, 1, 1, 95, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (265, N'Correlation3m', 30, 1, 1, 65, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (266, N'Probability3m', 30, 1, 1, 136, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (267, N'Machine Learning Outcomes8m', 30, 1, 1, 54, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (268, N'Cost Functions5m', 30, 1, 1, 124, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (269, N'Reliability4m', 30, 1, 1, 66, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (270, N'Goodhart''s Law3m', 30, 1, 1, 82, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (271, N'3 readings', 30, 1, 1, 36, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (272, N'Overview2m', 30, 1, 1, 125, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (273, N'Risk Management Frameworks20m', 30, 1, 1, 57, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (274, N'Classification Metrics15m', 30, 1, 1, 83, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (275, N'1 practice exercise', 30, 1, 1, 112, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (276, N'Analyzing Ethical Risks30m', 30, 1, 1, 32, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (277, N'The Importance of Managing Privacy Risks2m', 30, 1, 1, 112, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (278, N'Private Data5m', 30, 1, 1, 142, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (279, N'First-Party vs. Third-Party Data5m', 30, 1, 1, 124, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (280, N'Secondary Use of Data3m', 30, 1, 1, 9, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (281, N'Combined Data Sources4m', 30, 1, 1, 89, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (282, N'Identify Personally Identifiable Information (PII)3m', 30, 1, 1, 1, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (283, N'Model Personas4m', 30, 1, 1, 145, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (284, N'Track Customer Data6m', 30, 1, 1, 98, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (285, N'Meet Compliance Requirements2m', 30, 1, 1, 22, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (286, N'Intent and Consent5m', 30, 1, 1, 2, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (287, N'Minimize Private Data Sharing4m', 30, 1, 1, 2, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (288, N'Give the User Choices5m', 30, 1, 1, 135, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (289, N'Minimize Private Data Collection2m', 30, 1, 1, 66, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (290, N'Reinforce Trust7m', 30, 1, 1, 77, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (291, N'Anonymization and Pseudonymization3m', 30, 1, 1, 88, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (292, N'Homomorphic Encryption6m', 30, 1, 1, 78, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (293, N'Zero-Knowledge Protocols6m', 30, 1, 1, 79, 1)
GO
INSERT [dbo].[Lectures] ([Id], [Name], [Duration], [LessonType], [DeliveryType], [UnitId], [OutputStandardId]) VALUES (294, N'Incorporate Privacy Risk Management in the Lifecycle3m', 30, 1, 1, 76, 1)
GO
SET IDENTITY_INSERT [dbo].[Lectures] OFF
GO
SET IDENTITY_INSERT [dbo].[AuditResult] ON 
GO
INSERT [dbo].[AuditResult] ([Id], [Question], [TraineeAnswer], [Rating], [AuditDetailId]) VALUES (1, N'Quae error omnis dolorem, commodi labore itaque au', N'Optio totam animi, ipsa et nihil reiciendis magnam', 0, 3)
GO
INSERT [dbo].[AuditResult] ([Id], [Question], [TraineeAnswer], [Rating], [AuditDetailId]) VALUES (2, N'Nemo vel sit natus sit ad non cupiditate velit in.', N'Autem debitis vel suscipit sit, harum et rem enim ', 1, 7)
GO
INSERT [dbo].[AuditResult] ([Id], [Question], [TraineeAnswer], [Rating], [AuditDetailId]) VALUES (3, N'Natus ratione nemo mollitia error illo sapiente, s', N'Dolor error est exercitationem at minus vel numqua', 0, 21)
GO
INSERT [dbo].[AuditResult] ([Id], [Question], [TraineeAnswer], [Rating], [AuditDetailId]) VALUES (4, N'Blanditiis sed in eveniet qui cum pariatur dicta d', N'Minima non, aliquam id quod repellat sed quisquam ', 0, 9)
GO
INSERT [dbo].[AuditResult] ([Id], [Question], [TraineeAnswer], [Rating], [AuditDetailId]) VALUES (5, N'Quidem tempore voluptas neque, voluptates recusand', N'Magnam omnis veniam voluptatum eaque ipsa natus vo', 0, 8)
GO
INSERT [dbo].[AuditResult] ([Id], [Question], [TraineeAnswer], [Rating], [AuditDetailId]) VALUES (6, N'Sunt voluptatem, et omnis rerum consequatur omnis ', N'Unde blanditiis fugit repellat fugit ad labore vol', 2, 13)
GO
INSERT [dbo].[AuditResult] ([Id], [Question], [TraineeAnswer], [Rating], [AuditDetailId]) VALUES (7, N'Suscipit aliquam, autem tempore distinctio debitis', N'Vitae ipsa, perspiciatis suscipit ut qui consequun', 0, 14)
GO
INSERT [dbo].[AuditResult] ([Id], [Question], [TraineeAnswer], [Rating], [AuditDetailId]) VALUES (8, N'Rem sequi fugiat omnis sed amet minus totam labori', N'Quis eveniet laudantium dolorum, magnam aut volupt', 2, 25)
GO
INSERT [dbo].[AuditResult] ([Id], [Question], [TraineeAnswer], [Rating], [AuditDetailId]) VALUES (9, N'Ex rerum a aperiam natus nihil est earum architect', N'Libero ut sint exercitationem non totam odit perfe', 2, 2)
GO
INSERT [dbo].[AuditResult] ([Id], [Question], [TraineeAnswer], [Rating], [AuditDetailId]) VALUES (10, N'Minima vero iste qui error autem eligendi omnis ne', N'Et est hic adipisci voluptas aperiam ut veniam hic', 2, 1)
GO
INSERT [dbo].[AuditResult] ([Id], [Question], [TraineeAnswer], [Rating], [AuditDetailId]) VALUES (11, N'Id ipsam dicta ut, quibusdam incidunt aut id iure ', N'Fuga aut a aspernatur voluptatem maxime quia illo ', 1, 1)
GO
INSERT [dbo].[AuditResult] ([Id], [Question], [TraineeAnswer], [Rating], [AuditDetailId]) VALUES (12, N'Commodi explicabo iure sapiente commodi, mollitia ', N'Error nesciunt accusantium eos ullam beatae aspern', 0, 23)
GO
INSERT [dbo].[AuditResult] ([Id], [Question], [TraineeAnswer], [Rating], [AuditDetailId]) VALUES (13, N'Ut velit quia non placeat enim laudantium illum of', N'Eveniet sapiente sunt quos, non natus vel perspici', 3, 16)
GO
INSERT [dbo].[AuditResult] ([Id], [Question], [TraineeAnswer], [Rating], [AuditDetailId]) VALUES (14, N'Ea saepe beatae et, ut unde non sit ab voluptate. ', N'Consequatur minus illum consequuntur porro ad et m', 2, 9)
GO
INSERT [dbo].[AuditResult] ([Id], [Question], [TraineeAnswer], [Rating], [AuditDetailId]) VALUES (15, N'Aperiam veritatis quia et aspernatur placeat nihil', N'Maiores amet debitis alias rerum mollitia tempore ', 2, 2)
GO
INSERT [dbo].[AuditResult] ([Id], [Question], [TraineeAnswer], [Rating], [AuditDetailId]) VALUES (16, N'Neque aspernatur beatae tenetur unde nostrum delen', N'Sed ipsum voluptatum voluptas voluptatum quia sapi', 0, 7)
GO
INSERT [dbo].[AuditResult] ([Id], [Question], [TraineeAnswer], [Rating], [AuditDetailId]) VALUES (17, N'At quo error mollitia perspiciatis ipsa autem veli', N'Excepturi enim sed voluptatem ut sint doloribus, s', 1, 29)
GO
INSERT [dbo].[AuditResult] ([Id], [Question], [TraineeAnswer], [Rating], [AuditDetailId]) VALUES (18, N'Perspiciatis voluptatum ad ut eos velit dolores es', N'Expedita explicabo repellendus quia asperiores arc', 3, 16)
GO
INSERT [dbo].[AuditResult] ([Id], [Question], [TraineeAnswer], [Rating], [AuditDetailId]) VALUES (19, N'Modi dolore omnis, porro iste sed voluptas consequ', N'Dignissimos molestiae voluptatem ut velit et dolor', 1, 5)
GO
INSERT [dbo].[AuditResult] ([Id], [Question], [TraineeAnswer], [Rating], [AuditDetailId]) VALUES (20, N'Iste labore aut molestias inventore ut molestiae e', N'Veniam ex aut, sit aspernatur sed unde ab tenetur ', 1, 27)
GO
INSERT [dbo].[AuditResult] ([Id], [Question], [TraineeAnswer], [Rating], [AuditDetailId]) VALUES (21, N'Esse magnam et perferendis vitae ut vero quos quis', N'Necessitatibus dolore libero dignissimos omnis ab ', 3, 1)
GO
INSERT [dbo].[AuditResult] ([Id], [Question], [TraineeAnswer], [Rating], [AuditDetailId]) VALUES (22, N'Voluptatem quod ipsa error explicabo, aut quaerat ', N'Temporibus delectus repellendus consequatur tempor', 2, 7)
GO
INSERT [dbo].[AuditResult] ([Id], [Question], [TraineeAnswer], [Rating], [AuditDetailId]) VALUES (23, N'Corporis natus amet impedit qui ut harum voluptatu', N'Culpa dolore illo voluptatem nihil corrupti laboru', 3, 22)
GO
INSERT [dbo].[AuditResult] ([Id], [Question], [TraineeAnswer], [Rating], [AuditDetailId]) VALUES (24, N'Dicta nihil sed quo quia ut nesciunt aut voluptate', N'Et facilis et tempora delectus omnis laboriosam ab', 2, 21)
GO
INSERT [dbo].[AuditResult] ([Id], [Question], [TraineeAnswer], [Rating], [AuditDetailId]) VALUES (25, N'Corrupti veritatis unde praesentium sed, ab omnis ', N'Temporibus et, blanditiis dolorem sit dignissimos ', 3, 25)
GO
INSERT [dbo].[AuditResult] ([Id], [Question], [TraineeAnswer], [Rating], [AuditDetailId]) VALUES (26, N'Dolorum sit vel facilis ipsum est et aut est molli', N'Omnis iste beatae ullam earum aut nulla, nostrum q', 0, 10)
GO
INSERT [dbo].[AuditResult] ([Id], [Question], [TraineeAnswer], [Rating], [AuditDetailId]) VALUES (27, N'Omnis qui omnis praesentium explicabo vero aut atq', N'Et placeat hic repellendus voluptatem hic omnis do', 0, 9)
GO
INSERT [dbo].[AuditResult] ([Id], [Question], [TraineeAnswer], [Rating], [AuditDetailId]) VALUES (28, N'Nulla eveniet consequuntur veritatis, rerum sit ve', N'Nisi aliquam debitis ea voluptatem commodi aut, sa', 2, 11)
GO
INSERT [dbo].[AuditResult] ([Id], [Question], [TraineeAnswer], [Rating], [AuditDetailId]) VALUES (29, N'Omnis tenetur quo autem odit beatae temporibus rei', N'Ut iste natus accusamus totam voluptate magnam ut ', 1, 2)
GO
INSERT [dbo].[AuditResult] ([Id], [Question], [TraineeAnswer], [Rating], [AuditDetailId]) VALUES (30, N'Id quae cumque natus quod et rem alias corrupti es', N'Ad laudantium officia quisquam aut eligendi alias ', 2, 27)
GO
SET IDENTITY_INSERT [dbo].[AuditResult] OFF
GO
INSERT [dbo].[ClassUnitDetail] ([ClassId], [UnitId], [Location], [TrainerId], [DayNo], [OperationDate]) VALUES (1, 1, 0, 28, 15, CAST(N'2023-10-30T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[ClassUnitDetail] ([ClassId], [UnitId], [Location], [TrainerId], [DayNo], [OperationDate]) VALUES (1, 2, 4, 10, 10, CAST(N'2023-12-31T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[ClassUnitDetail] ([ClassId], [UnitId], [Location], [TrainerId], [DayNo], [OperationDate]) VALUES (1, 3, 3, 26, 21, CAST(N'2023-09-17T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[ClassUnitDetail] ([ClassId], [UnitId], [Location], [TrainerId], [DayNo], [OperationDate]) VALUES (2, 4, 4, 20, 19, CAST(N'2023-04-17T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[ClassUnitDetail] ([ClassId], [UnitId], [Location], [TrainerId], [DayNo], [OperationDate]) VALUES (2, 5, 2, 2, 22, CAST(N'2023-02-18T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[ClassUnitDetail] ([ClassId], [UnitId], [Location], [TrainerId], [DayNo], [OperationDate]) VALUES (2, 6, 4, 26, 17, CAST(N'2023-08-04T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[ClassUnitDetail] ([ClassId], [UnitId], [Location], [TrainerId], [DayNo], [OperationDate]) VALUES (2, 7, 4, 1, 7, CAST(N'2023-08-11T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[ClassUnitDetail] ([ClassId], [UnitId], [Location], [TrainerId], [DayNo], [OperationDate]) VALUES (3, 8, 4, 30, 25, CAST(N'2023-07-21T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[ClassUnitDetail] ([ClassId], [UnitId], [Location], [TrainerId], [DayNo], [OperationDate]) VALUES (3, 9, 2, 6, 18, CAST(N'2023-10-17T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[ClassUnitDetail] ([ClassId], [UnitId], [Location], [TrainerId], [DayNo], [OperationDate]) VALUES (3, 10, 0, 20, 1, CAST(N'2023-02-23T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[ClassUnitDetail] ([ClassId], [UnitId], [Location], [TrainerId], [DayNo], [OperationDate]) VALUES (4, 11, 0, 24, 23, CAST(N'2023-08-02T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[ClassUnitDetail] ([ClassId], [UnitId], [Location], [TrainerId], [DayNo], [OperationDate]) VALUES (5, 12, 1, 14, 22, CAST(N'2023-02-13T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[ClassUnitDetail] ([ClassId], [UnitId], [Location], [TrainerId], [DayNo], [OperationDate]) VALUES (5, 13, 2, 20, 22, CAST(N'2023-04-27T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[ClassUnitDetail] ([ClassId], [UnitId], [Location], [TrainerId], [DayNo], [OperationDate]) VALUES (5, 14, 2, 1, 8, CAST(N'2023-12-15T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[ClassUnitDetail] ([ClassId], [UnitId], [Location], [TrainerId], [DayNo], [OperationDate]) VALUES (5, 15, 3, 8, 10, CAST(N'2023-12-25T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[ClassUnitDetail] ([ClassId], [UnitId], [Location], [TrainerId], [DayNo], [OperationDate]) VALUES (6, 16, 0, 5, 24, CAST(N'2023-08-04T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[ClassUnitDetail] ([ClassId], [UnitId], [Location], [TrainerId], [DayNo], [OperationDate]) VALUES (6, 17, 2, 26, 28, CAST(N'2023-05-18T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[ClassUnitDetail] ([ClassId], [UnitId], [Location], [TrainerId], [DayNo], [OperationDate]) VALUES (7, 18, 0, 5, 20, CAST(N'2023-08-23T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[ClassUnitDetail] ([ClassId], [UnitId], [Location], [TrainerId], [DayNo], [OperationDate]) VALUES (7, 19, 3, 11, 6, CAST(N'2023-05-17T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[ClassUnitDetail] ([ClassId], [UnitId], [Location], [TrainerId], [DayNo], [OperationDate]) VALUES (7, 20, 4, 26, 13, CAST(N'2023-12-12T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[ClassUnitDetail] ([ClassId], [UnitId], [Location], [TrainerId], [DayNo], [OperationDate]) VALUES (8, 21, 0, 4, 8, CAST(N'2023-01-18T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[ClassUnitDetail] ([ClassId], [UnitId], [Location], [TrainerId], [DayNo], [OperationDate]) VALUES (8, 22, 3, 10, 3, CAST(N'2023-08-02T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[ClassUnitDetail] ([ClassId], [UnitId], [Location], [TrainerId], [DayNo], [OperationDate]) VALUES (8, 23, 2, 7, 16, CAST(N'2023-12-31T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[ClassUnitDetail] ([ClassId], [UnitId], [Location], [TrainerId], [DayNo], [OperationDate]) VALUES (8, 24, 1, 20, 21, CAST(N'2023-06-05T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[ClassUnitDetail] ([ClassId], [UnitId], [Location], [TrainerId], [DayNo], [OperationDate]) VALUES (9, 25, 4, 8, 28, CAST(N'2023-03-06T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[ClassUnitDetail] ([ClassId], [UnitId], [Location], [TrainerId], [DayNo], [OperationDate]) VALUES (10, 26, 1, 16, 27, CAST(N'2023-02-24T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[ClassUnitDetail] ([ClassId], [UnitId], [Location], [TrainerId], [DayNo], [OperationDate]) VALUES (10, 27, 1, 19, 9, CAST(N'2023-02-06T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[ClassUnitDetail] ([ClassId], [UnitId], [Location], [TrainerId], [DayNo], [OperationDate]) VALUES (10, 28, 2, 10, 20, CAST(N'2023-09-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[ClassUnitDetail] ([ClassId], [UnitId], [Location], [TrainerId], [DayNo], [OperationDate]) VALUES (11, 1, 0, 10, 30, CAST(N'2023-03-15T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[ClassUnitDetail] ([ClassId], [UnitId], [Location], [TrainerId], [DayNo], [OperationDate]) VALUES (11, 2, 3, 21, 12, CAST(N'2023-10-15T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[ClassUnitDetail] ([ClassId], [UnitId], [Location], [TrainerId], [DayNo], [OperationDate]) VALUES (11, 29, 1, 3, 9, CAST(N'2023-08-20T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[ClassUnitDetail] ([ClassId], [UnitId], [Location], [TrainerId], [DayNo], [OperationDate]) VALUES (11, 30, 2, 14, 19, CAST(N'2023-03-05T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[ClassUnitDetail] ([ClassId], [UnitId], [Location], [TrainerId], [DayNo], [OperationDate]) VALUES (12, 3, 0, 24, 2, CAST(N'2023-05-03T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[ClassUnitDetail] ([ClassId], [UnitId], [Location], [TrainerId], [DayNo], [OperationDate]) VALUES (12, 4, 4, 3, 19, CAST(N'2023-05-03T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[ClassUnitDetail] ([ClassId], [UnitId], [Location], [TrainerId], [DayNo], [OperationDate]) VALUES (12, 5, 0, 28, 26, CAST(N'2023-12-15T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[ClassUnitDetail] ([ClassId], [UnitId], [Location], [TrainerId], [DayNo], [OperationDate]) VALUES (13, 6, 0, 26, 12, CAST(N'2023-09-02T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[ClassUnitDetail] ([ClassId], [UnitId], [Location], [TrainerId], [DayNo], [OperationDate]) VALUES (13, 7, 3, 2, 5, CAST(N'2023-03-03T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[ClassUnitDetail] ([ClassId], [UnitId], [Location], [TrainerId], [DayNo], [OperationDate]) VALUES (14, 8, 1, 12, 8, CAST(N'2023-05-18T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[ClassUnitDetail] ([ClassId], [UnitId], [Location], [TrainerId], [DayNo], [OperationDate]) VALUES (14, 9, 2, 21, 3, CAST(N'2023-09-23T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[ClassUnitDetail] ([ClassId], [UnitId], [Location], [TrainerId], [DayNo], [OperationDate]) VALUES (15, 10, 2, 9, 3, CAST(N'2023-10-03T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[ClassUnitDetail] ([ClassId], [UnitId], [Location], [TrainerId], [DayNo], [OperationDate]) VALUES (15, 11, 3, 29, 13, CAST(N'2023-10-09T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[ClassUnitDetail] ([ClassId], [UnitId], [Location], [TrainerId], [DayNo], [OperationDate]) VALUES (15, 12, 3, 20, 22, CAST(N'2023-05-03T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[ClassUnitDetail] ([ClassId], [UnitId], [Location], [TrainerId], [DayNo], [OperationDate]) VALUES (15, 13, 4, 15, 15, CAST(N'2023-08-08T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[ClassUnitDetail] ([ClassId], [UnitId], [Location], [TrainerId], [DayNo], [OperationDate]) VALUES (16, 14, 3, 5, 26, CAST(N'2023-07-30T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[ClassUnitDetail] ([ClassId], [UnitId], [Location], [TrainerId], [DayNo], [OperationDate]) VALUES (16, 15, 0, 24, 23, CAST(N'2023-05-04T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[ClassUnitDetail] ([ClassId], [UnitId], [Location], [TrainerId], [DayNo], [OperationDate]) VALUES (16, 16, 2, 12, 14, CAST(N'2023-11-12T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[ClassUnitDetail] ([ClassId], [UnitId], [Location], [TrainerId], [DayNo], [OperationDate]) VALUES (17, 17, 2, 25, 27, CAST(N'2023-09-23T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[ClassUnitDetail] ([ClassId], [UnitId], [Location], [TrainerId], [DayNo], [OperationDate]) VALUES (18, 18, 2, 14, 25, CAST(N'2023-05-11T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[ClassUnitDetail] ([ClassId], [UnitId], [Location], [TrainerId], [DayNo], [OperationDate]) VALUES (18, 19, 3, 6, 23, CAST(N'2023-10-26T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[ClassUnitDetail] ([ClassId], [UnitId], [Location], [TrainerId], [DayNo], [OperationDate]) VALUES (18, 20, 3, 29, 2, CAST(N'2023-04-19T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (23, 1)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (23, 2)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (23, 3)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (23, 4)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (24, 5)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (24, 6)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (24, 7)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (24, 8)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (25, 9)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (25, 10)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (25, 11)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (25, 12)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (26, 13)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (26, 14)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (26, 15)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (26, 16)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (27, 17)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (27, 18)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (27, 19)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (28, 20)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (28, 21)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (28, 22)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (28, 23)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (28, 24)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (29, 25)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (29, 26)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (29, 27)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (29, 28)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (29, 29)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (29, 30)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (30, 31)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (30, 32)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (30, 33)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (30, 34)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (30, 35)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (30, 36)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (31, 37)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (31, 38)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (31, 39)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (31, 40)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (31, 41)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (31, 42)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (32, 43)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (32, 44)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (32, 45)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (32, 46)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (32, 47)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (5, 48)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (5, 49)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (5, 50)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (6, 51)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (6, 52)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (6, 53)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (6, 54)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (6, 55)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (7, 56)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (7, 57)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (7, 58)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (7, 59)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (8, 60)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (8, 61)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (8, 62)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (1, 63)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (1, 64)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (1, 65)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (1, 66)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (1, 67)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (1, 68)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (1, 69)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (2, 70)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (2, 71)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (2, 72)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (2, 73)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (2, 74)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (2, 75)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (2, 76)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (3, 77)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (3, 78)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (3, 79)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (3, 80)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (3, 81)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (3, 82)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (3, 83)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (4, 84)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (4, 85)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (4, 86)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (4, 87)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (4, 88)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (4, 89)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (14, 90)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (14, 91)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (14, 92)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (14, 93)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (15, 94)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (15, 95)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (15, 96)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (15, 97)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (16, 98)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (16, 99)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (16, 100)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (16, 101)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (17, 102)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (17, 103)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (17, 104)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (17, 105)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (23, 106)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (23, 107)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (23, 108)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (24, 109)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (24, 110)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (24, 111)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (25, 112)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (25, 113)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (25, 114)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (26, 115)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (26, 116)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (26, 117)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (27, 118)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (27, 119)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (10, 120)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (10, 121)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (10, 122)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (10, 123)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (11, 124)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (11, 125)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (11, 126)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (11, 127)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (12, 128)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (12, 129)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (12, 130)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (12, 131)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (13, 132)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (13, 133)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (13, 134)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (13, 135)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (18, 136)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (28, 136)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (18, 137)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (28, 137)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (18, 138)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (28, 138)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (18, 139)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (28, 139)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (18, 140)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (28, 140)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (19, 141)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (29, 141)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (19, 142)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (29, 142)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (19, 143)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (29, 143)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (19, 144)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (29, 144)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (19, 145)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (29, 145)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (20, 146)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (30, 146)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (20, 147)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (30, 147)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (20, 148)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (30, 148)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (20, 149)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (30, 149)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (20, 150)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (31, 150)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (21, 151)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (31, 151)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (21, 152)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (31, 152)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (21, 153)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (31, 153)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (21, 154)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (32, 154)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (21, 155)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (32, 155)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (22, 156)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (32, 156)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (22, 157)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (32, 157)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (22, 158)
GO
INSERT [dbo].[SyllabusUnit] ([SyllabusesId], [UnitsId]) VALUES (22, 159)
GO
SET IDENTITY_INSERT [dbo].[FeedBackForms] ON 
GO
INSERT [dbo].[FeedBackForms] ([Id], [Rating], [Comment], [TraineeId], [TrainerId]) VALUES (1, 3, N'here words a your or or file from file words words from', 25, 15)
GO
INSERT [dbo].[FeedBackForms] ([Id], [Rating], [Comment], [TraineeId], [TrainerId]) VALUES (2, 3, N'text text load words load your enter or it text or or text text here words', 6, 25)
GO
INSERT [dbo].[FeedBackForms] ([Id], [Rating], [Comment], [TraineeId], [TrainerId]) VALUES (3, 0, N'from your words or To from enter text from it enter from it', 5, 14)
GO
INSERT [dbo].[FeedBackForms] ([Id], [Rating], [Comment], [TraineeId], [TrainerId]) VALUES (4, 1, N'a To To from file words words load from text your or enter it here your words or from enter', 20, 1)
GO
INSERT [dbo].[FeedBackForms] ([Id], [Rating], [Comment], [TraineeId], [TrainerId]) VALUES (5, 1, N'your words a from from or text or file it load from a your', 10, 8)
GO
INSERT [dbo].[FeedBackForms] ([Id], [Rating], [Comment], [TraineeId], [TrainerId]) VALUES (6, 4, N'load load file words here To your text it load a load text words To or', 29, 25)
GO
INSERT [dbo].[FeedBackForms] ([Id], [Rating], [Comment], [TraineeId], [TrainerId]) VALUES (7, 0, N'To To words it shuffle file text enter text To To words text it shuffle', 24, 19)
GO
INSERT [dbo].[FeedBackForms] ([Id], [Rating], [Comment], [TraineeId], [TrainerId]) VALUES (8, 5, N'a or it words words To enter load shuffle here To it text To your it words text text', 14, 22)
GO
INSERT [dbo].[FeedBackForms] ([Id], [Rating], [Comment], [TraineeId], [TrainerId]) VALUES (9, 1, N'a enter it load To here shuffle a To shuffle load words your shuffle words it', 12, 25)
GO
INSERT [dbo].[FeedBackForms] ([Id], [Rating], [Comment], [TraineeId], [TrainerId]) VALUES (10, 0, N'here text from text shuffle To text shuffle a or To your file here it here from from', 7, 13)
GO
INSERT [dbo].[FeedBackForms] ([Id], [Rating], [Comment], [TraineeId], [TrainerId]) VALUES (11, 5, N'enter words it file load it your To or it it words a shuffle', 20, 27)
GO
INSERT [dbo].[FeedBackForms] ([Id], [Rating], [Comment], [TraineeId], [TrainerId]) VALUES (12, 5, N'To here or from To file shuffle from shuffle load text your text text', 11, 14)
GO
INSERT [dbo].[FeedBackForms] ([Id], [Rating], [Comment], [TraineeId], [TrainerId]) VALUES (13, 1, N'words file enter load it To file text words load or enter', 20, 11)
GO
INSERT [dbo].[FeedBackForms] ([Id], [Rating], [Comment], [TraineeId], [TrainerId]) VALUES (14, 2, N'text from enter your your load load from words shuffle from', 1, 18)
GO
INSERT [dbo].[FeedBackForms] ([Id], [Rating], [Comment], [TraineeId], [TrainerId]) VALUES (15, 5, N'load To text file or load or a your shuffle or load a from from here enter load file it text', 26, 10)
GO
INSERT [dbo].[FeedBackForms] ([Id], [Rating], [Comment], [TraineeId], [TrainerId]) VALUES (16, 1, N'here text from words text text To your enter To or words load words it', 6, 6)
GO
INSERT [dbo].[FeedBackForms] ([Id], [Rating], [Comment], [TraineeId], [TrainerId]) VALUES (17, 0, N'text from here from enter enter To words words enter a it or or it words', 8, 22)
GO
INSERT [dbo].[FeedBackForms] ([Id], [Rating], [Comment], [TraineeId], [TrainerId]) VALUES (18, 0, N'from or load text file enter load from a file file here or words or words words To file or a enter', 2, 4)
GO
INSERT [dbo].[FeedBackForms] ([Id], [Rating], [Comment], [TraineeId], [TrainerId]) VALUES (19, 1, N'it text shuffle words To shuffle a here text your shuffle enter To file words from here your', 15, 16)
GO
INSERT [dbo].[FeedBackForms] ([Id], [Rating], [Comment], [TraineeId], [TrainerId]) VALUES (20, 0, N'text here text shuffle your it text it from load load shuffle words your To words', 4, 3)
GO
INSERT [dbo].[FeedBackForms] ([Id], [Rating], [Comment], [TraineeId], [TrainerId]) VALUES (21, 2, N'text it shuffle To a To To file words To here words To enter load or text from', 3, 3)
GO
INSERT [dbo].[FeedBackForms] ([Id], [Rating], [Comment], [TraineeId], [TrainerId]) VALUES (22, 3, N'text shuffle from text To shuffle To words words words shuffle text or', 12, 26)
GO
INSERT [dbo].[FeedBackForms] ([Id], [Rating], [Comment], [TraineeId], [TrainerId]) VALUES (23, 5, N'it it words here enter it text shuffle enter words', 20, 19)
GO
INSERT [dbo].[FeedBackForms] ([Id], [Rating], [Comment], [TraineeId], [TrainerId]) VALUES (24, 5, N'load text it your or your enter enter load words here load here', 5, 6)
GO
INSERT [dbo].[FeedBackForms] ([Id], [Rating], [Comment], [TraineeId], [TrainerId]) VALUES (25, 0, N'here load words shuffle enter words To text from To text text', 2, 12)
GO
INSERT [dbo].[FeedBackForms] ([Id], [Rating], [Comment], [TraineeId], [TrainerId]) VALUES (26, 2, N'load To here load file your To text enter To To a words load from enter a a your', 24, 12)
GO
INSERT [dbo].[FeedBackForms] ([Id], [Rating], [Comment], [TraineeId], [TrainerId]) VALUES (27, 3, N'a a text text To file your To file text enter load it a shuffle your load enter file words file', 20, 4)
GO
INSERT [dbo].[FeedBackForms] ([Id], [Rating], [Comment], [TraineeId], [TrainerId]) VALUES (28, 4, N'shuffle from enter it file text from words shuffle load', 14, 17)
GO
INSERT [dbo].[FeedBackForms] ([Id], [Rating], [Comment], [TraineeId], [TrainerId]) VALUES (29, 5, N'enter shuffle words load it shuffle text shuffle or a shuffle file file enter file from', 8, 6)
GO
INSERT [dbo].[FeedBackForms] ([Id], [Rating], [Comment], [TraineeId], [TrainerId]) VALUES (30, 3, N'load To shuffle enter words from from from shuffle a shuffle from file a file load', 10, 26)
GO
SET IDENTITY_INSERT [dbo].[FeedBackForms] OFF
GO
SET IDENTITY_INSERT [dbo].[TMS] ON 
GO
INSERT [dbo].[TMS] ([Id], [Time], [Reason], [CheckedBy], [TraineeId], [ApproveStatus]) VALUES (1, CAST(N'2023-04-12T00:00:00.0000000' AS DateTime2), N'Quisquam exercitationem error commodi itaque optio exercitationem ex ducimus.', 25, 17, 1)
GO
INSERT [dbo].[TMS] ([Id], [Time], [Reason], [CheckedBy], [TraineeId], [ApproveStatus]) VALUES (2, CAST(N'2023-09-08T00:00:00.0000000' AS DateTime2), N'Enim quia consequuntur nisi quae blanditiis. A eum quis sed in itaque cumque!', 23, 26, 1)
GO
INSERT [dbo].[TMS] ([Id], [Time], [Reason], [CheckedBy], [TraineeId], [ApproveStatus]) VALUES (3, CAST(N'2023-01-20T00:00:00.0000000' AS DateTime2), N'Eveniet quis ducimus voluptatum veniam magnam ut quibusdam provident sit.', 28, 22, 2)
GO
INSERT [dbo].[TMS] ([Id], [Time], [Reason], [CheckedBy], [TraineeId], [ApproveStatus]) VALUES (4, CAST(N'2023-02-11T00:00:00.0000000' AS DateTime2), N'Temporibus dolor nesciunt.', 5, 18, 1)
GO
INSERT [dbo].[TMS] ([Id], [Time], [Reason], [CheckedBy], [TraineeId], [ApproveStatus]) VALUES (5, CAST(N'2023-06-22T00:00:00.0000000' AS DateTime2), N'Voluptatem omnis quo nam et aut. Est et quia. Qui sunt voluptatem!', 16, 2, 3)
GO
INSERT [dbo].[TMS] ([Id], [Time], [Reason], [CheckedBy], [TraineeId], [ApproveStatus]) VALUES (6, CAST(N'2023-10-02T00:00:00.0000000' AS DateTime2), N'Voluptatem molestiae repudiandae.', 30, 12, 3)
GO
INSERT [dbo].[TMS] ([Id], [Time], [Reason], [CheckedBy], [TraineeId], [ApproveStatus]) VALUES (7, CAST(N'2023-09-28T00:00:00.0000000' AS DateTime2), N'Voluptatem optio et aperiam corporis. Explicabo molestiae natus sunt aut qui.', 7, 18, 0)
GO
INSERT [dbo].[TMS] ([Id], [Time], [Reason], [CheckedBy], [TraineeId], [ApproveStatus]) VALUES (8, CAST(N'2023-05-05T00:00:00.0000000' AS DateTime2), N'Voluptatibus ut culpa consequatur praesentium ipsum. Consequatur magnam sed?', 24, 29, 1)
GO
INSERT [dbo].[TMS] ([Id], [Time], [Reason], [CheckedBy], [TraineeId], [ApproveStatus]) VALUES (9, CAST(N'2023-05-06T00:00:00.0000000' AS DateTime2), N'Dicta reiciendis dignissimos laborum nemo nam vitae veritatis quo ut.', 7, 20, 2)
GO
INSERT [dbo].[TMS] ([Id], [Time], [Reason], [CheckedBy], [TraineeId], [ApproveStatus]) VALUES (10, CAST(N'2023-06-13T00:00:00.0000000' AS DateTime2), N'Unde labore optio aut cum minus eaque et quos.', 22, 15, 1)
GO
INSERT [dbo].[TMS] ([Id], [Time], [Reason], [CheckedBy], [TraineeId], [ApproveStatus]) VALUES (11, CAST(N'2023-05-12T00:00:00.0000000' AS DateTime2), N'Error sunt corporis nihil.', 7, 11, 0)
GO
INSERT [dbo].[TMS] ([Id], [Time], [Reason], [CheckedBy], [TraineeId], [ApproveStatus]) VALUES (12, CAST(N'2023-07-06T00:00:00.0000000' AS DateTime2), N'Ratione quasi voluptatum ut sed ipsa minima architecto dignissimos...', 29, 13, 2)
GO
INSERT [dbo].[TMS] ([Id], [Time], [Reason], [CheckedBy], [TraineeId], [ApproveStatus]) VALUES (13, CAST(N'2023-01-27T00:00:00.0000000' AS DateTime2), N'Qui voluptates vitae praesentium ut eius. Est amet adipisci! Et a obcaecati.', 30, 23, 3)
GO
INSERT [dbo].[TMS] ([Id], [Time], [Reason], [CheckedBy], [TraineeId], [ApproveStatus]) VALUES (14, CAST(N'2023-12-17T00:00:00.0000000' AS DateTime2), N'Voluptatem dolore unde quis exercitationem aut itaque. Consequuntur tempore?', 18, 3, 0)
GO
INSERT [dbo].[TMS] ([Id], [Time], [Reason], [CheckedBy], [TraineeId], [ApproveStatus]) VALUES (15, CAST(N'2023-04-16T00:00:00.0000000' AS DateTime2), N'Delectus et alias blanditiis dolores et sunt. Et quam vitae sint ea sint ut.', 4, 2, 2)
GO
INSERT [dbo].[TMS] ([Id], [Time], [Reason], [CheckedBy], [TraineeId], [ApproveStatus]) VALUES (16, CAST(N'2023-07-11T00:00:00.0000000' AS DateTime2), N'Cupiditate asperiores ea voluptas qui possimus et ipsam. Ut provident in! Nisi.', 17, 3, 2)
GO
INSERT [dbo].[TMS] ([Id], [Time], [Reason], [CheckedBy], [TraineeId], [ApproveStatus]) VALUES (17, CAST(N'2023-07-10T00:00:00.0000000' AS DateTime2), N'Aperiam sint animi nisi.', 22, 22, 2)
GO
INSERT [dbo].[TMS] ([Id], [Time], [Reason], [CheckedBy], [TraineeId], [ApproveStatus]) VALUES (18, CAST(N'2023-03-19T00:00:00.0000000' AS DateTime2), N'Voluptas qui voluptatibus perspiciatis incidunt perspiciatis eligendi ut; amet.', 18, 20, 3)
GO
INSERT [dbo].[TMS] ([Id], [Time], [Reason], [CheckedBy], [TraineeId], [ApproveStatus]) VALUES (19, CAST(N'2023-02-28T00:00:00.0000000' AS DateTime2), N'Illo omnis ea voluptatem ab officiis ut laboriosam at sint dolore laboriosam.', 21, 19, 3)
GO
INSERT [dbo].[TMS] ([Id], [Time], [Reason], [CheckedBy], [TraineeId], [ApproveStatus]) VALUES (20, CAST(N'2023-02-24T00:00:00.0000000' AS DateTime2), N'Error aut omnis ut natus minima magni explicabo laborum numquam, iure.', 11, 24, 2)
GO
INSERT [dbo].[TMS] ([Id], [Time], [Reason], [CheckedBy], [TraineeId], [ApproveStatus]) VALUES (21, CAST(N'2023-02-20T00:00:00.0000000' AS DateTime2), N'Consequatur magnam atque, quia labore ut explicabo quis iste natus et.', 23, 21, 0)
GO
INSERT [dbo].[TMS] ([Id], [Time], [Reason], [CheckedBy], [TraineeId], [ApproveStatus]) VALUES (22, CAST(N'2023-02-12T00:00:00.0000000' AS DateTime2), N'Odit et qui sit vero. Deserunt rerum iusto! Repellendus odit rerum.', 20, 4, 0)
GO
INSERT [dbo].[TMS] ([Id], [Time], [Reason], [CheckedBy], [TraineeId], [ApproveStatus]) VALUES (23, CAST(N'2023-08-09T00:00:00.0000000' AS DateTime2), N'Nesciunt excepturi debitis quas sit facere enim sit consectetur. Ratione neque.', 10, 13, 0)
GO
INSERT [dbo].[TMS] ([Id], [Time], [Reason], [CheckedBy], [TraineeId], [ApproveStatus]) VALUES (24, CAST(N'2023-07-11T00:00:00.0000000' AS DateTime2), N'Odio quibusdam voluptatem rerum voluptatem debitis non dolorem suscipit dolore.', 11, 28, 2)
GO
INSERT [dbo].[TMS] ([Id], [Time], [Reason], [CheckedBy], [TraineeId], [ApproveStatus]) VALUES (25, CAST(N'2023-10-25T00:00:00.0000000' AS DateTime2), N'Voluptatem sed est ut corporis est. Iusto qui tempora. Repellat nam debitis.', 28, 10, 0)
GO
INSERT [dbo].[TMS] ([Id], [Time], [Reason], [CheckedBy], [TraineeId], [ApproveStatus]) VALUES (26, CAST(N'2023-12-25T00:00:00.0000000' AS DateTime2), N'Quidem voluptatem minus impedit veritatis totam quis dolorem optio est.', 20, 8, 3)
GO
INSERT [dbo].[TMS] ([Id], [Time], [Reason], [CheckedBy], [TraineeId], [ApproveStatus]) VALUES (27, CAST(N'2023-05-03T00:00:00.0000000' AS DateTime2), N'Aspernatur qui iste quia voluptas ut dolor ipsa fuga ipsum recusandae sapiente.', 12, 25, 0)
GO
INSERT [dbo].[TMS] ([Id], [Time], [Reason], [CheckedBy], [TraineeId], [ApproveStatus]) VALUES (28, CAST(N'2023-07-10T00:00:00.0000000' AS DateTime2), N'Quis consequatur alias amet nam quidem unde. Ut accusantium quas!', 23, 30, 3)
GO
INSERT [dbo].[TMS] ([Id], [Time], [Reason], [CheckedBy], [TraineeId], [ApproveStatus]) VALUES (29, CAST(N'2023-06-18T00:00:00.0000000' AS DateTime2), N'Aut est dolorem.', 25, 23, 0)
GO
INSERT [dbo].[TMS] ([Id], [Time], [Reason], [CheckedBy], [TraineeId], [ApproveStatus]) VALUES (30, CAST(N'2023-10-24T00:00:00.0000000' AS DateTime2), N'Quis sit quia exercitationem ut at iste ipsa, natus sed.', 25, 25, 3)
GO
SET IDENTITY_INSERT [dbo].[TMS] OFF
GO
SET IDENTITY_INSERT [dbo].[GradeReports] ON 
GO
INSERT [dbo].[GradeReports] ([Id], [Type], [GradedOn], [Grade], [TraineeId], [LectureId]) VALUES (1, 0, CAST(N'2023-02-14T00:00:00.0000000' AS DateTime2), 2, 2, 4)
GO
INSERT [dbo].[GradeReports] ([Id], [Type], [GradedOn], [Grade], [TraineeId], [LectureId]) VALUES (2, 0, CAST(N'2023-01-27T00:00:00.0000000' AS DateTime2), 3, 14, 3)
GO
INSERT [dbo].[GradeReports] ([Id], [Type], [GradedOn], [Grade], [TraineeId], [LectureId]) VALUES (3, 0, CAST(N'2023-10-29T00:00:00.0000000' AS DateTime2), 6, 5, 1)
GO
INSERT [dbo].[GradeReports] ([Id], [Type], [GradedOn], [Grade], [TraineeId], [LectureId]) VALUES (4, 1, CAST(N'2023-04-27T00:00:00.0000000' AS DateTime2), 3, 2, 17)
GO
INSERT [dbo].[GradeReports] ([Id], [Type], [GradedOn], [Grade], [TraineeId], [LectureId]) VALUES (5, 0, CAST(N'2023-05-07T00:00:00.0000000' AS DateTime2), 10, 6, 3)
GO
INSERT [dbo].[GradeReports] ([Id], [Type], [GradedOn], [Grade], [TraineeId], [LectureId]) VALUES (6, 1, CAST(N'2023-08-06T00:00:00.0000000' AS DateTime2), 1, 7, 18)
GO
INSERT [dbo].[GradeReports] ([Id], [Type], [GradedOn], [Grade], [TraineeId], [LectureId]) VALUES (7, 0, CAST(N'2023-08-02T00:00:00.0000000' AS DateTime2), 5, 29, 24)
GO
INSERT [dbo].[GradeReports] ([Id], [Type], [GradedOn], [Grade], [TraineeId], [LectureId]) VALUES (8, 1, CAST(N'2023-07-04T00:00:00.0000000' AS DateTime2), 4, 27, 18)
GO
INSERT [dbo].[GradeReports] ([Id], [Type], [GradedOn], [Grade], [TraineeId], [LectureId]) VALUES (9, 0, CAST(N'2023-05-26T00:00:00.0000000' AS DateTime2), 2, 8, 5)
GO
INSERT [dbo].[GradeReports] ([Id], [Type], [GradedOn], [Grade], [TraineeId], [LectureId]) VALUES (10, 0, CAST(N'2023-11-09T00:00:00.0000000' AS DateTime2), 7, 12, 22)
GO
INSERT [dbo].[GradeReports] ([Id], [Type], [GradedOn], [Grade], [TraineeId], [LectureId]) VALUES (11, 1, CAST(N'2023-05-26T00:00:00.0000000' AS DateTime2), 9, 30, 4)
GO
INSERT [dbo].[GradeReports] ([Id], [Type], [GradedOn], [Grade], [TraineeId], [LectureId]) VALUES (12, 0, CAST(N'2023-06-12T00:00:00.0000000' AS DateTime2), 1, 17, 18)
GO
INSERT [dbo].[GradeReports] ([Id], [Type], [GradedOn], [Grade], [TraineeId], [LectureId]) VALUES (13, 0, CAST(N'2023-12-31T00:00:00.0000000' AS DateTime2), 4, 4, 9)
GO
INSERT [dbo].[GradeReports] ([Id], [Type], [GradedOn], [Grade], [TraineeId], [LectureId]) VALUES (14, 1, CAST(N'2023-08-21T00:00:00.0000000' AS DateTime2), 3, 16, 28)
GO
INSERT [dbo].[GradeReports] ([Id], [Type], [GradedOn], [Grade], [TraineeId], [LectureId]) VALUES (15, 0, CAST(N'2023-02-15T00:00:00.0000000' AS DateTime2), 3, 23, 19)
GO
INSERT [dbo].[GradeReports] ([Id], [Type], [GradedOn], [Grade], [TraineeId], [LectureId]) VALUES (16, 1, CAST(N'2023-11-05T00:00:00.0000000' AS DateTime2), 1, 20, 22)
GO
INSERT [dbo].[GradeReports] ([Id], [Type], [GradedOn], [Grade], [TraineeId], [LectureId]) VALUES (17, 1, CAST(N'2023-08-03T00:00:00.0000000' AS DateTime2), 10, 6, 8)
GO
INSERT [dbo].[GradeReports] ([Id], [Type], [GradedOn], [Grade], [TraineeId], [LectureId]) VALUES (18, 0, CAST(N'2023-08-23T00:00:00.0000000' AS DateTime2), 6, 22, 10)
GO
INSERT [dbo].[GradeReports] ([Id], [Type], [GradedOn], [Grade], [TraineeId], [LectureId]) VALUES (19, 1, CAST(N'2023-07-27T00:00:00.0000000' AS DateTime2), 0, 16, 14)
GO
INSERT [dbo].[GradeReports] ([Id], [Type], [GradedOn], [Grade], [TraineeId], [LectureId]) VALUES (20, 1, CAST(N'2023-08-01T00:00:00.0000000' AS DateTime2), 3, 1, 14)
GO
INSERT [dbo].[GradeReports] ([Id], [Type], [GradedOn], [Grade], [TraineeId], [LectureId]) VALUES (21, 1, CAST(N'2023-05-16T00:00:00.0000000' AS DateTime2), 9, 3, 18)
GO
INSERT [dbo].[GradeReports] ([Id], [Type], [GradedOn], [Grade], [TraineeId], [LectureId]) VALUES (22, 1, CAST(N'2023-05-29T00:00:00.0000000' AS DateTime2), 1, 27, 9)
GO
INSERT [dbo].[GradeReports] ([Id], [Type], [GradedOn], [Grade], [TraineeId], [LectureId]) VALUES (23, 1, CAST(N'2023-08-07T00:00:00.0000000' AS DateTime2), 7, 7, 10)
GO
INSERT [dbo].[GradeReports] ([Id], [Type], [GradedOn], [Grade], [TraineeId], [LectureId]) VALUES (24, 0, CAST(N'2023-01-17T00:00:00.0000000' AS DateTime2), 1, 23, 26)
GO
INSERT [dbo].[GradeReports] ([Id], [Type], [GradedOn], [Grade], [TraineeId], [LectureId]) VALUES (25, 0, CAST(N'2023-05-29T00:00:00.0000000' AS DateTime2), 3, 11, 23)
GO
INSERT [dbo].[GradeReports] ([Id], [Type], [GradedOn], [Grade], [TraineeId], [LectureId]) VALUES (26, 1, CAST(N'2023-07-27T00:00:00.0000000' AS DateTime2), 9, 30, 15)
GO
INSERT [dbo].[GradeReports] ([Id], [Type], [GradedOn], [Grade], [TraineeId], [LectureId]) VALUES (27, 1, CAST(N'2023-09-07T00:00:00.0000000' AS DateTime2), 3, 19, 4)
GO
INSERT [dbo].[GradeReports] ([Id], [Type], [GradedOn], [Grade], [TraineeId], [LectureId]) VALUES (28, 0, CAST(N'2023-12-10T00:00:00.0000000' AS DateTime2), 7, 22, 25)
GO
INSERT [dbo].[GradeReports] ([Id], [Type], [GradedOn], [Grade], [TraineeId], [LectureId]) VALUES (29, 0, CAST(N'2023-10-23T00:00:00.0000000' AS DateTime2), 5, 5, 16)
GO
INSERT [dbo].[GradeReports] ([Id], [Type], [GradedOn], [Grade], [TraineeId], [LectureId]) VALUES (30, 0, CAST(N'2023-04-16T00:00:00.0000000' AS DateTime2), 1, 27, 11)
GO
SET IDENTITY_INSERT [dbo].[GradeReports] OFF
GO
SET IDENTITY_INSERT [dbo].[TrainingMaterials] ON 
GO
INSERT [dbo].[TrainingMaterials] ([Id], [Name], [Url], [LectureId], [EditedOn], [EditedBy], [isDeleted]) VALUES (1, N'Juliana386', N'http://ashisthor.es/hiwaseve/areedwas/and/waere.ht', 20, CAST(N'2023-11-12T00:00:00.0000000' AS DateTime2), 5, 0)
GO
INSERT [dbo].[TrainingMaterials] ([Id], [Name], [Url], [LectureId], [EditedOn], [EditedBy], [isDeleted]) VALUES (2, N'Rima1973', N'https://ested.cn/al/not/arnot/histio.asp', 17, CAST(N'2023-09-19T00:00:00.0000000' AS DateTime2), 6, 1)
GO
INSERT [dbo].[TrainingMaterials] ([Id], [Name], [Url], [LectureId], [EditedOn], [EditedBy], [isDeleted]) VALUES (3, N'Anibal1958', N'http://www.ouarealti.ae/terwa/iononis/terhenedou.p', 30, CAST(N'2023-01-29T00:00:00.0000000' AS DateTime2), 26, 0)
GO
INSERT [dbo].[TrainingMaterials] ([Id], [Name], [Url], [LectureId], [EditedOn], [EditedBy], [isDeleted]) VALUES (4, N'Sang2003', N'http://ioneveesed.nl/erate/hatoufor/entuldand/ntth', 17, CAST(N'2023-09-17T00:00:00.0000000' AS DateTime2), 14, 1)
GO
INSERT [dbo].[TrainingMaterials] ([Id], [Name], [Url], [LectureId], [EditedOn], [EditedBy], [isDeleted]) VALUES (5, N'Schultz339', N'http://www.hinthe.no/erasfor/se/ouhadti/ereallhino', 23, CAST(N'2023-09-11T00:00:00.0000000' AS DateTime2), 19, 0)
GO
INSERT [dbo].[TrainingMaterials] ([Id], [Name], [Url], [LectureId], [EditedOn], [EditedBy], [isDeleted]) VALUES (6, N'Virginia1968', N'https://www.wasmeera.de/eveentent/tithi/tededng/an', 21, CAST(N'2023-08-27T00:00:00.0000000' AS DateTime2), 2, 1)
GO
INSERT [dbo].[TrainingMaterials] ([Id], [Name], [Url], [LectureId], [EditedOn], [EditedBy], [isDeleted]) VALUES (7, N'Barbra1987', N'https://teronhised.ae/aretited/mehandsho.aspx', 13, CAST(N'2023-09-12T00:00:00.0000000' AS DateTime2), 6, 1)
GO
INSERT [dbo].[TrainingMaterials] ([Id], [Name], [Url], [LectureId], [EditedOn], [EditedBy], [isDeleted]) VALUES (8, N'Miner94', N'http://ingleoul.br/veallith/eaaland/se/alltoon.php', 24, CAST(N'2023-07-31T00:00:00.0000000' AS DateTime2), 27, 0)
GO
INSERT [dbo].[TrainingMaterials] ([Id], [Name], [Url], [LectureId], [EditedOn], [EditedBy], [isDeleted]) VALUES (9, N'Hye2010', N'https://www.uldithanhi.hk/enonhat/haeaand/terenthi', 6, CAST(N'2023-03-16T00:00:00.0000000' AS DateTime2), 1, 1)
GO
INSERT [dbo].[TrainingMaterials] ([Id], [Name], [Url], [LectureId], [EditedOn], [EditedBy], [isDeleted]) VALUES (10, N'Robbie2003', N'http://www.hinar.uk/evehaour/esall/foreait/edthi.p', 1, CAST(N'2023-10-11T00:00:00.0000000' AS DateTime2), 26, 0)
GO
INSERT [dbo].[TrainingMaterials] ([Id], [Name], [Url], [LectureId], [EditedOn], [EditedBy], [isDeleted]) VALUES (11, N'Bach2028', N'http://hateasein.ae/an/onthaera/shoouit/hebutente.', 22, CAST(N'2023-04-15T00:00:00.0000000' AS DateTime2), 26, 1)
GO
INSERT [dbo].[TrainingMaterials] ([Id], [Name], [Url], [LectureId], [EditedOn], [EditedBy], [isDeleted]) VALUES (12, N'Mariano2004', N'https://stouantha.ca/entteand/eranotha/ennotall/hi', 14, CAST(N'2023-10-13T00:00:00.0000000' AS DateTime2), 3, 0)
GO
INSERT [dbo].[TrainingMaterials] ([Id], [Name], [Url], [LectureId], [EditedOn], [EditedBy], [isDeleted]) VALUES (13, N'Cross39', N'http://www.waedionst.tw/enthaea/thaheen/ionesthein', 14, CAST(N'2023-02-17T00:00:00.0000000' AS DateTime2), 5, 1)
GO
INSERT [dbo].[TrainingMaterials] ([Id], [Name], [Url], [LectureId], [EditedOn], [EditedBy], [isDeleted]) VALUES (14, N'Hebert492', N'https://foruldithes.ge/ouingne/meeveerend.php', 13, CAST(N'2023-08-17T00:00:00.0000000' AS DateTime2), 13, 1)
GO
INSERT [dbo].[TrainingMaterials] ([Id], [Name], [Url], [LectureId], [EditedOn], [EditedBy], [isDeleted]) VALUES (15, N'Adrianne14', N'https://ithhaterean.fi/hileall/omeevethi/hitheer/a', 17, CAST(N'2023-07-22T00:00:00.0000000' AS DateTime2), 30, 0)
GO
INSERT [dbo].[TrainingMaterials] ([Id], [Name], [Url], [LectureId], [EditedOn], [EditedBy], [isDeleted]) VALUES (16, N'Seymore1963', N'https://www.hadionouhen.ar/ereithand/alhahe/terath', 1, CAST(N'2023-04-06T00:00:00.0000000' AS DateTime2), 17, 1)
GO
INSERT [dbo].[TrainingMaterials] ([Id], [Name], [Url], [LectureId], [EditedOn], [EditedBy], [isDeleted]) VALUES (17, N'Mcgowan1991', N'https://tioenttiohad.be/entin/alerent/ntverion/hin', 10, CAST(N'2023-05-14T00:00:00.0000000' AS DateTime2), 28, 0)
GO
INSERT [dbo].[TrainingMaterials] ([Id], [Name], [Url], [LectureId], [EditedOn], [EditedBy], [isDeleted]) VALUES (18, N'Kareen69', N'https://eralluldst.es/areahat/st/thall/tetedhi.php', 2, CAST(N'2023-12-01T00:00:00.0000000' AS DateTime2), 20, 0)
GO
INSERT [dbo].[TrainingMaterials] ([Id], [Name], [Url], [LectureId], [EditedOn], [EditedBy], [isDeleted]) VALUES (19, N'Locklear1965', N'https://wanottedha.hk/eratioent/anndit/ar/areanori', 2, CAST(N'2023-09-21T00:00:00.0000000' AS DateTime2), 15, 1)
GO
INSERT [dbo].[TrainingMaterials] ([Id], [Name], [Url], [LectureId], [EditedOn], [EditedBy], [isDeleted]) VALUES (20, N'Donny1986', N'https://www.entedle.be/buthisnot/thiingare/arebuto', 20, CAST(N'2023-04-26T00:00:00.0000000' AS DateTime2), 20, 0)
GO
INSERT [dbo].[TrainingMaterials] ([Id], [Name], [Url], [LectureId], [EditedOn], [EditedBy], [isDeleted]) VALUES (21, N'Gwenn1960', N'http://www.arehe.com/wa/thaare/ion/enesereent.html', 23, CAST(N'2023-02-17T00:00:00.0000000' AS DateTime2), 9, 1)
GO
INSERT [dbo].[TrainingMaterials] ([Id], [Name], [Url], [LectureId], [EditedOn], [EditedBy], [isDeleted]) VALUES (22, N'Shah2018', N'https://tenotorall.fr/le/erbutted.php', 13, CAST(N'2023-05-07T00:00:00.0000000' AS DateTime2), 28, 1)
GO
INSERT [dbo].[TrainingMaterials] ([Id], [Name], [Url], [LectureId], [EditedOn], [EditedBy], [isDeleted]) VALUES (23, N'Hwang7', N'http://www.ndinngion.eg/er/seereerin.asp', 22, CAST(N'2023-07-28T00:00:00.0000000' AS DateTime2), 7, 1)
GO
INSERT [dbo].[TrainingMaterials] ([Id], [Name], [Url], [LectureId], [EditedOn], [EditedBy], [isDeleted]) VALUES (24, N'Schell6', N'http://www.terithuldare.de/tioitse/hienthat/areanh', 9, CAST(N'2023-09-09T00:00:00.0000000' AS DateTime2), 26, 1)
GO
INSERT [dbo].[TrainingMaterials] ([Id], [Name], [Url], [LectureId], [EditedOn], [EditedBy], [isDeleted]) VALUES (25, N'Hank7', N'http://tohadarour.br/entth/ates/atin/heronesthe.as', 6, CAST(N'2023-04-28T00:00:00.0000000' AS DateTime2), 5, 0)
GO
INSERT [dbo].[TrainingMaterials] ([Id], [Name], [Url], [LectureId], [EditedOn], [EditedBy], [isDeleted]) VALUES (26, N'Ilene1984', N'https://shoithtiosho.fr/allithher/lelehe.htm', 28, CAST(N'2023-02-22T00:00:00.0000000' AS DateTime2), 16, 0)
GO
INSERT [dbo].[TrainingMaterials] ([Id], [Name], [Url], [LectureId], [EditedOn], [EditedBy], [isDeleted]) VALUES (27, N'Madsen2007', N'https://www.sewasedha.ae/towa/oulera/ishadth/inere', 22, CAST(N'2023-07-29T00:00:00.0000000' AS DateTime2), 7, 0)
GO
INSERT [dbo].[TrainingMaterials] ([Id], [Name], [Url], [LectureId], [EditedOn], [EditedBy], [isDeleted]) VALUES (28, N'Elayne1995', N'https://www.erathave.eg/ereome/notit/andthait/thee', 8, CAST(N'2023-02-27T00:00:00.0000000' AS DateTime2), 10, 0)
GO
INSERT [dbo].[TrainingMaterials] ([Id], [Name], [Url], [LectureId], [EditedOn], [EditedBy], [isDeleted]) VALUES (29, N'Jacques1976', N'https://www.shoeratioor.com/andwashi/athin/anioner', 5, CAST(N'2023-04-10T00:00:00.0000000' AS DateTime2), 20, 1)
GO
INSERT [dbo].[TrainingMaterials] ([Id], [Name], [Url], [LectureId], [EditedOn], [EditedBy], [isDeleted]) VALUES (30, N'Norman2015', N'https://waittese.se/entated   /not/omethour/ithhio', 26, CAST(N'2023-07-09T00:00:00.0000000' AS DateTime2), 10, 1)
GO
INSERT [dbo].[TrainingMaterials] ([Id], [Name], [Url], [LectureId], [EditedOn], [EditedBy], [isDeleted]) VALUES (31, N'download (1).jpeg', N'https://firebasestorage.googleapis.com/v0/b/fatms-679c1.appspot.com/o/%24training-materials%2F3%2Fdownload%20%281%29.jpeg?alt=media&token=4acfb525-8622-49d3-bd8f-c820ca54c3e9', 3, CAST(N'2023-03-31T02:39:00.4773139' AS DateTime2), 1, 0)
GO
INSERT [dbo].[TrainingMaterials] ([Id], [Name], [Url], [LectureId], [EditedOn], [EditedBy], [isDeleted]) VALUES (32, N'150013939_1326995134324154_3639039161057041566_n.jpg', N'https://firebasestorage.googleapis.com/v0/b/fatms-679c1.appspot.com/o/training-materials%2F5%2F150013939_1326995134324154_3639039161057041566_n.jpg?alt=media&token=a39a8e94-99da-4c7a-9e97-f605b265c3b2', 5, CAST(N'2023-03-31T02:41:07.6511032' AS DateTime2), 1, 0)
GO
SET IDENTITY_INSERT [dbo].[TrainingMaterials] OFF
GO
SET IDENTITY_INSERT [dbo].[ClassUsers] ON 
GO
INSERT [dbo].[ClassUsers] ([Id], [Role], [ClassId], [UserId]) VALUES (1, 3, 4, 8)
GO
INSERT [dbo].[ClassUsers] ([Id], [Role], [ClassId], [UserId]) VALUES (2, 4, 29, 2)
GO
INSERT [dbo].[ClassUsers] ([Id], [Role], [ClassId], [UserId]) VALUES (3, 3, 14, 7)
GO
INSERT [dbo].[ClassUsers] ([Id], [Role], [ClassId], [UserId]) VALUES (4, 4, 18, 1)
GO
INSERT [dbo].[ClassUsers] ([Id], [Role], [ClassId], [UserId]) VALUES (5, 5, 13, 13)
GO
INSERT [dbo].[ClassUsers] ([Id], [Role], [ClassId], [UserId]) VALUES (6, 5, 20, 17)
GO
INSERT [dbo].[ClassUsers] ([Id], [Role], [ClassId], [UserId]) VALUES (7, 3, 24, 3)
GO
INSERT [dbo].[ClassUsers] ([Id], [Role], [ClassId], [UserId]) VALUES (8, 4, 16, 7)
GO
INSERT [dbo].[ClassUsers] ([Id], [Role], [ClassId], [UserId]) VALUES (9, 4, 2, 1)
GO
INSERT [dbo].[ClassUsers] ([Id], [Role], [ClassId], [UserId]) VALUES (10, 4, 16, 12)
GO
INSERT [dbo].[ClassUsers] ([Id], [Role], [ClassId], [UserId]) VALUES (11, 5, 27, 1)
GO
INSERT [dbo].[ClassUsers] ([Id], [Role], [ClassId], [UserId]) VALUES (12, 5, 6, 8)
GO
INSERT [dbo].[ClassUsers] ([Id], [Role], [ClassId], [UserId]) VALUES (13, 4, 8, 15)
GO
INSERT [dbo].[ClassUsers] ([Id], [Role], [ClassId], [UserId]) VALUES (14, 3, 19, 19)
GO
INSERT [dbo].[ClassUsers] ([Id], [Role], [ClassId], [UserId]) VALUES (15, 5, 15, 29)
GO
INSERT [dbo].[ClassUsers] ([Id], [Role], [ClassId], [UserId]) VALUES (16, 3, 23, 20)
GO
INSERT [dbo].[ClassUsers] ([Id], [Role], [ClassId], [UserId]) VALUES (17, 3, 20, 22)
GO
INSERT [dbo].[ClassUsers] ([Id], [Role], [ClassId], [UserId]) VALUES (18, 3, 14, 2)
GO
INSERT [dbo].[ClassUsers] ([Id], [Role], [ClassId], [UserId]) VALUES (19, 4, 2, 1)
GO
INSERT [dbo].[ClassUsers] ([Id], [Role], [ClassId], [UserId]) VALUES (20, 3, 23, 17)
GO
INSERT [dbo].[ClassUsers] ([Id], [Role], [ClassId], [UserId]) VALUES (21, 4, 15, 17)
GO
INSERT [dbo].[ClassUsers] ([Id], [Role], [ClassId], [UserId]) VALUES (22, 4, 14, 14)
GO
INSERT [dbo].[ClassUsers] ([Id], [Role], [ClassId], [UserId]) VALUES (23, 3, 1, 16)
GO
INSERT [dbo].[ClassUsers] ([Id], [Role], [ClassId], [UserId]) VALUES (24, 4, 1, 4)
GO
INSERT [dbo].[ClassUsers] ([Id], [Role], [ClassId], [UserId]) VALUES (25, 5, 7, 4)
GO
INSERT [dbo].[ClassUsers] ([Id], [Role], [ClassId], [UserId]) VALUES (26, 4, 3, 4)
GO
INSERT [dbo].[ClassUsers] ([Id], [Role], [ClassId], [UserId]) VALUES (27, 3, 6, 21)
GO
INSERT [dbo].[ClassUsers] ([Id], [Role], [ClassId], [UserId]) VALUES (28, 4, 19, 26)
GO
INSERT [dbo].[ClassUsers] ([Id], [Role], [ClassId], [UserId]) VALUES (29, 3, 14, 11)
GO
INSERT [dbo].[ClassUsers] ([Id], [Role], [ClassId], [UserId]) VALUES (30, 4, 23, 11)
GO
SET IDENTITY_INSERT [dbo].[ClassUsers] OFF
GO
INSERT [dbo].[ClassSyllabus] ([ClassesId], [SyllabusesId]) VALUES (1, 1)
GO
INSERT [dbo].[ClassSyllabus] ([ClassesId], [SyllabusesId]) VALUES (2, 2)
GO
INSERT [dbo].[ClassSyllabus] ([ClassesId], [SyllabusesId]) VALUES (3, 3)
GO
INSERT [dbo].[ClassSyllabus] ([ClassesId], [SyllabusesId]) VALUES (4, 4)
GO
INSERT [dbo].[ClassSyllabus] ([ClassesId], [SyllabusesId]) VALUES (5, 5)
GO
INSERT [dbo].[ClassSyllabus] ([ClassesId], [SyllabusesId]) VALUES (6, 6)
GO
INSERT [dbo].[ClassSyllabus] ([ClassesId], [SyllabusesId]) VALUES (7, 7)
GO
INSERT [dbo].[ClassSyllabus] ([ClassesId], [SyllabusesId]) VALUES (8, 8)
GO
INSERT [dbo].[ClassSyllabus] ([ClassesId], [SyllabusesId]) VALUES (9, 9)
GO
INSERT [dbo].[ClassSyllabus] ([ClassesId], [SyllabusesId]) VALUES (10, 10)
GO
INSERT [dbo].[ClassSyllabus] ([ClassesId], [SyllabusesId]) VALUES (11, 11)
GO
INSERT [dbo].[ClassSyllabus] ([ClassesId], [SyllabusesId]) VALUES (12, 12)
GO
INSERT [dbo].[ClassSyllabus] ([ClassesId], [SyllabusesId]) VALUES (13, 13)
GO
INSERT [dbo].[ClassSyllabus] ([ClassesId], [SyllabusesId]) VALUES (14, 14)
GO
INSERT [dbo].[ClassSyllabus] ([ClassesId], [SyllabusesId]) VALUES (15, 15)
GO
INSERT [dbo].[ClassSyllabus] ([ClassesId], [SyllabusesId]) VALUES (16, 16)
GO
INSERT [dbo].[ClassSyllabus] ([ClassesId], [SyllabusesId]) VALUES (17, 17)
GO
INSERT [dbo].[ClassSyllabus] ([ClassesId], [SyllabusesId]) VALUES (18, 18)
GO
INSERT [dbo].[ClassSyllabus] ([ClassesId], [SyllabusesId]) VALUES (19, 19)
GO
INSERT [dbo].[ClassSyllabus] ([ClassesId], [SyllabusesId]) VALUES (20, 20)
GO
INSERT [dbo].[ClassSyllabus] ([ClassesId], [SyllabusesId]) VALUES (21, 21)
GO
INSERT [dbo].[ClassSyllabus] ([ClassesId], [SyllabusesId]) VALUES (22, 22)
GO
INSERT [dbo].[ClassSyllabus] ([ClassesId], [SyllabusesId]) VALUES (23, 23)
GO
INSERT [dbo].[ClassSyllabus] ([ClassesId], [SyllabusesId]) VALUES (24, 24)
GO
INSERT [dbo].[ClassSyllabus] ([ClassesId], [SyllabusesId]) VALUES (25, 25)
GO
INSERT [dbo].[ClassSyllabus] ([ClassesId], [SyllabusesId]) VALUES (26, 26)
GO
INSERT [dbo].[ClassSyllabus] ([ClassesId], [SyllabusesId]) VALUES (27, 27)
GO
INSERT [dbo].[ClassSyllabus] ([ClassesId], [SyllabusesId]) VALUES (28, 28)
GO
INSERT [dbo].[ClassSyllabus] ([ClassesId], [SyllabusesId]) VALUES (29, 29)
GO
INSERT [dbo].[ClassSyllabus] ([ClassesId], [SyllabusesId]) VALUES (30, 30)
GO
INSERT [dbo].[SyllabusTrainingProgram] ([SyllabusesId], [TrainingProgramsId]) VALUES (5, 1)
GO
INSERT [dbo].[SyllabusTrainingProgram] ([SyllabusesId], [TrainingProgramsId]) VALUES (6, 1)
GO
INSERT [dbo].[SyllabusTrainingProgram] ([SyllabusesId], [TrainingProgramsId]) VALUES (7, 1)
GO
INSERT [dbo].[SyllabusTrainingProgram] ([SyllabusesId], [TrainingProgramsId]) VALUES (8, 1)
GO
INSERT [dbo].[SyllabusTrainingProgram] ([SyllabusesId], [TrainingProgramsId]) VALUES (9, 1)
GO
INSERT [dbo].[SyllabusTrainingProgram] ([SyllabusesId], [TrainingProgramsId]) VALUES (14, 2)
GO
INSERT [dbo].[SyllabusTrainingProgram] ([SyllabusesId], [TrainingProgramsId]) VALUES (15, 2)
GO
INSERT [dbo].[SyllabusTrainingProgram] ([SyllabusesId], [TrainingProgramsId]) VALUES (16, 2)
GO
INSERT [dbo].[SyllabusTrainingProgram] ([SyllabusesId], [TrainingProgramsId]) VALUES (17, 2)
GO
INSERT [dbo].[SyllabusTrainingProgram] ([SyllabusesId], [TrainingProgramsId]) VALUES (10, 3)
GO
INSERT [dbo].[SyllabusTrainingProgram] ([SyllabusesId], [TrainingProgramsId]) VALUES (11, 3)
GO
INSERT [dbo].[SyllabusTrainingProgram] ([SyllabusesId], [TrainingProgramsId]) VALUES (12, 3)
GO
INSERT [dbo].[SyllabusTrainingProgram] ([SyllabusesId], [TrainingProgramsId]) VALUES (13, 3)
GO
INSERT [dbo].[SyllabusTrainingProgram] ([SyllabusesId], [TrainingProgramsId]) VALUES (23, 4)
GO
INSERT [dbo].[SyllabusTrainingProgram] ([SyllabusesId], [TrainingProgramsId]) VALUES (24, 4)
GO
INSERT [dbo].[SyllabusTrainingProgram] ([SyllabusesId], [TrainingProgramsId]) VALUES (25, 4)
GO
INSERT [dbo].[SyllabusTrainingProgram] ([SyllabusesId], [TrainingProgramsId]) VALUES (26, 4)
GO
INSERT [dbo].[SyllabusTrainingProgram] ([SyllabusesId], [TrainingProgramsId]) VALUES (27, 4)
GO
INSERT [dbo].[SyllabusTrainingProgram] ([SyllabusesId], [TrainingProgramsId]) VALUES (1, 5)
GO
INSERT [dbo].[SyllabusTrainingProgram] ([SyllabusesId], [TrainingProgramsId]) VALUES (2, 5)
GO
INSERT [dbo].[SyllabusTrainingProgram] ([SyllabusesId], [TrainingProgramsId]) VALUES (3, 5)
GO
INSERT [dbo].[SyllabusTrainingProgram] ([SyllabusesId], [TrainingProgramsId]) VALUES (4, 5)
GO
INSERT [dbo].[SyllabusTrainingProgram] ([SyllabusesId], [TrainingProgramsId]) VALUES (18, 6)
GO
INSERT [dbo].[SyllabusTrainingProgram] ([SyllabusesId], [TrainingProgramsId]) VALUES (19, 6)
GO
INSERT [dbo].[SyllabusTrainingProgram] ([SyllabusesId], [TrainingProgramsId]) VALUES (20, 6)
GO
INSERT [dbo].[SyllabusTrainingProgram] ([SyllabusesId], [TrainingProgramsId]) VALUES (21, 6)
GO
INSERT [dbo].[SyllabusTrainingProgram] ([SyllabusesId], [TrainingProgramsId]) VALUES (22, 6)
GO
INSERT [dbo].[SyllabusTrainingProgram] ([SyllabusesId], [TrainingProgramsId]) VALUES (28, 7)
GO
INSERT [dbo].[SyllabusTrainingProgram] ([SyllabusesId], [TrainingProgramsId]) VALUES (29, 7)
GO
INSERT [dbo].[SyllabusTrainingProgram] ([SyllabusesId], [TrainingProgramsId]) VALUES (30, 7)
GO
INSERT [dbo].[SyllabusTrainingProgram] ([SyllabusesId], [TrainingProgramsId]) VALUES (31, 7)
GO
INSERT [dbo].[SyllabusTrainingProgram] ([SyllabusesId], [TrainingProgramsId]) VALUES (32, 7)
GO
SET IDENTITY_INSERT [dbo].[Attendances] ON 
GO
INSERT [dbo].[Attendances] ([ClassUserId], [Day], [AttendanceStatus], [Reason], [AttendanceId]) VALUES (12, CAST(N'2023-03-02T00:00:00.0000000' AS DateTime2), 3, N'WCC04W', 1)
GO
INSERT [dbo].[Attendances] ([ClassUserId], [Day], [AttendanceStatus], [Reason], [AttendanceId]) VALUES (13, CAST(N'2023-02-24T00:00:00.0000000' AS DateTime2), 2, N'A7SL', 2)
GO
INSERT [dbo].[Attendances] ([ClassUserId], [Day], [AttendanceStatus], [Reason], [AttendanceId]) VALUES (1, CAST(N'2023-04-23T00:00:00.0000000' AS DateTime2), 0, N'5O5UC6K', 3)
GO
INSERT [dbo].[Attendances] ([ClassUserId], [Day], [AttendanceStatus], [Reason], [AttendanceId]) VALUES (11, CAST(N'2023-01-12T00:00:00.0000000' AS DateTime2), 0, N'US9JQU77823H9ANM99A911H38F6N', 4)
GO
INSERT [dbo].[Attendances] ([ClassUserId], [Day], [AttendanceStatus], [Reason], [AttendanceId]) VALUES (22, CAST(N'2023-02-02T00:00:00.0000000' AS DateTime2), 1, N'300O95CR03041K3M743UQHIWV62TA7W7', 5)
GO
INSERT [dbo].[Attendances] ([ClassUserId], [Day], [AttendanceStatus], [Reason], [AttendanceId]) VALUES (9, CAST(N'2023-01-31T00:00:00.0000000' AS DateTime2), 2, N'2787H7FD0S09XVIX27BCE56867GO893EXOV6NDI04J31929', 6)
GO
INSERT [dbo].[Attendances] ([ClassUserId], [Day], [AttendanceStatus], [Reason], [AttendanceId]) VALUES (8, CAST(N'2023-01-25T00:00:00.0000000' AS DateTime2), 0, N'31C5DQN9G', 7)
GO
INSERT [dbo].[Attendances] ([ClassUserId], [Day], [AttendanceStatus], [Reason], [AttendanceId]) VALUES (30, CAST(N'2023-07-17T00:00:00.0000000' AS DateTime2), 2, N'818DQ16QY1OU1GE6YL0K5B0', 8)
GO
INSERT [dbo].[Attendances] ([ClassUserId], [Day], [AttendanceStatus], [Reason], [AttendanceId]) VALUES (3, CAST(N'2023-10-10T00:00:00.0000000' AS DateTime2), 4, N'8C7', 9)
GO
INSERT [dbo].[Attendances] ([ClassUserId], [Day], [AttendanceStatus], [Reason], [AttendanceId]) VALUES (22, CAST(N'2023-11-25T00:00:00.0000000' AS DateTime2), 0, N'5Z79', 10)
GO
INSERT [dbo].[Attendances] ([ClassUserId], [Day], [AttendanceStatus], [Reason], [AttendanceId]) VALUES (18, CAST(N'2023-11-07T00:00:00.0000000' AS DateTime2), 0, N'03Q1P3RMQK', 11)
GO
INSERT [dbo].[Attendances] ([ClassUserId], [Day], [AttendanceStatus], [Reason], [AttendanceId]) VALUES (21, CAST(N'2023-04-14T00:00:00.0000000' AS DateTime2), 3, N'1N721N62VR', 12)
GO
INSERT [dbo].[Attendances] ([ClassUserId], [Day], [AttendanceStatus], [Reason], [AttendanceId]) VALUES (4, CAST(N'2023-11-15T00:00:00.0000000' AS DateTime2), 2, N'011HR88', 13)
GO
INSERT [dbo].[Attendances] ([ClassUserId], [Day], [AttendanceStatus], [Reason], [AttendanceId]) VALUES (26, CAST(N'2023-12-25T00:00:00.0000000' AS DateTime2), 4, N'1036T08Q7A', 14)
GO
INSERT [dbo].[Attendances] ([ClassUserId], [Day], [AttendanceStatus], [Reason], [AttendanceId]) VALUES (1, CAST(N'2023-04-26T00:00:00.0000000' AS DateTime2), 2, N'9', 15)
GO
INSERT [dbo].[Attendances] ([ClassUserId], [Day], [AttendanceStatus], [Reason], [AttendanceId]) VALUES (7, CAST(N'2023-04-12T00:00:00.0000000' AS DateTime2), 3, N'42NUFQ6TVQV3', 16)
GO
INSERT [dbo].[Attendances] ([ClassUserId], [Day], [AttendanceStatus], [Reason], [AttendanceId]) VALUES (10, CAST(N'2023-11-13T00:00:00.0000000' AS DateTime2), 4, N'ROW2DRZ2005J', 17)
GO
INSERT [dbo].[Attendances] ([ClassUserId], [Day], [AttendanceStatus], [Reason], [AttendanceId]) VALUES (2, CAST(N'2023-11-10T00:00:00.0000000' AS DateTime2), 4, N'0YK98', 18)
GO
INSERT [dbo].[Attendances] ([ClassUserId], [Day], [AttendanceStatus], [Reason], [AttendanceId]) VALUES (8, CAST(N'2023-09-26T00:00:00.0000000' AS DateTime2), 0, N'Y0T3D9S67', 19)
GO
INSERT [dbo].[Attendances] ([ClassUserId], [Day], [AttendanceStatus], [Reason], [AttendanceId]) VALUES (21, CAST(N'2023-01-16T00:00:00.0000000' AS DateTime2), 3, N'X89G0N4C5YM0Z4PE4C1U8056Q810VMJZY88098W937ISU648FJ9AGY0Y97351V', 20)
GO
INSERT [dbo].[Attendances] ([ClassUserId], [Day], [AttendanceStatus], [Reason], [AttendanceId]) VALUES (14, CAST(N'2023-10-28T00:00:00.0000000' AS DateTime2), 2, N'DH7', 21)
GO
INSERT [dbo].[Attendances] ([ClassUserId], [Day], [AttendanceStatus], [Reason], [AttendanceId]) VALUES (14, CAST(N'2023-06-01T00:00:00.0000000' AS DateTime2), 1, N'4HALI0WH943Q23790RM4F0AD66', 22)
GO
INSERT [dbo].[Attendances] ([ClassUserId], [Day], [AttendanceStatus], [Reason], [AttendanceId]) VALUES (26, CAST(N'2023-03-05T00:00:00.0000000' AS DateTime2), 2, N'B4U4GY8I8HU1W01D5529', 23)
GO
INSERT [dbo].[Attendances] ([ClassUserId], [Day], [AttendanceStatus], [Reason], [AttendanceId]) VALUES (8, CAST(N'2023-01-13T00:00:00.0000000' AS DateTime2), 0, N'5WNPNAS', 24)
GO
INSERT [dbo].[Attendances] ([ClassUserId], [Day], [AttendanceStatus], [Reason], [AttendanceId]) VALUES (16, CAST(N'2023-09-18T00:00:00.0000000' AS DateTime2), 3, N'16YMNI6O45', 25)
GO
INSERT [dbo].[Attendances] ([ClassUserId], [Day], [AttendanceStatus], [Reason], [AttendanceId]) VALUES (18, CAST(N'2023-07-13T00:00:00.0000000' AS DateTime2), 4, N'8M13L7XBTJ164NMT82A8UV7742UV3T3', 26)
GO
INSERT [dbo].[Attendances] ([ClassUserId], [Day], [AttendanceStatus], [Reason], [AttendanceId]) VALUES (11, CAST(N'2023-06-20T00:00:00.0000000' AS DateTime2), 4, N'W1M7R2E', 27)
GO
INSERT [dbo].[Attendances] ([ClassUserId], [Day], [AttendanceStatus], [Reason], [AttendanceId]) VALUES (12, CAST(N'2023-12-17T00:00:00.0000000' AS DateTime2), 2, N'9632PK88', 28)
GO
INSERT [dbo].[Attendances] ([ClassUserId], [Day], [AttendanceStatus], [Reason], [AttendanceId]) VALUES (20, CAST(N'2023-10-03T00:00:00.0000000' AS DateTime2), 2, N'IJ', 29)
GO
INSERT [dbo].[Attendances] ([ClassUserId], [Day], [AttendanceStatus], [Reason], [AttendanceId]) VALUES (28, CAST(N'2023-02-21T00:00:00.0000000' AS DateTime2), 2, N'364159Q1SU64WLA6385RVY6Z1W35J9U07NTNBR0DT', 30)
GO
INSERT [dbo].[Attendances] ([ClassUserId], [Day], [AttendanceStatus], [Reason], [AttendanceId]) VALUES (13, CAST(N'2023-03-11T00:00:00.0000000' AS DateTime2), 3, N'Y2BU14OD317TT5WHV8M', 31)
GO
INSERT [dbo].[Attendances] ([ClassUserId], [Day], [AttendanceStatus], [Reason], [AttendanceId]) VALUES (24, CAST(N'2023-05-30T00:00:00.0000000' AS DateTime2), 0, N'158VLMMMR9', 32)
GO
INSERT [dbo].[Attendances] ([ClassUserId], [Day], [AttendanceStatus], [Reason], [AttendanceId]) VALUES (18, CAST(N'2023-07-05T00:00:00.0000000' AS DateTime2), 0, N'CMQ', 33)
GO
INSERT [dbo].[Attendances] ([ClassUserId], [Day], [AttendanceStatus], [Reason], [AttendanceId]) VALUES (22, CAST(N'2023-09-17T00:00:00.0000000' AS DateTime2), 3, N'45V07C276386A8QFRMQWOV5EY95CU72', 34)
GO
INSERT [dbo].[Attendances] ([ClassUserId], [Day], [AttendanceStatus], [Reason], [AttendanceId]) VALUES (29, CAST(N'2023-06-15T00:00:00.0000000' AS DateTime2), 3, N'M3J68W4CGXAQ5KUB5', 35)
GO
INSERT [dbo].[Attendances] ([ClassUserId], [Day], [AttendanceStatus], [Reason], [AttendanceId]) VALUES (15, CAST(N'2023-02-10T00:00:00.0000000' AS DateTime2), 1, N'GU2G1UYM92L19A806', 36)
GO
INSERT [dbo].[Attendances] ([ClassUserId], [Day], [AttendanceStatus], [Reason], [AttendanceId]) VALUES (14, CAST(N'2023-09-21T00:00:00.0000000' AS DateTime2), 1, N'D01U554A851GIXUEV1Q7011E49', 37)
GO
INSERT [dbo].[Attendances] ([ClassUserId], [Day], [AttendanceStatus], [Reason], [AttendanceId]) VALUES (2, CAST(N'2023-11-23T00:00:00.0000000' AS DateTime2), 1, N'H581MTR8KH6U75E7269ADN', 38)
GO
INSERT [dbo].[Attendances] ([ClassUserId], [Day], [AttendanceStatus], [Reason], [AttendanceId]) VALUES (9, CAST(N'2023-01-11T00:00:00.0000000' AS DateTime2), 3, N'58R7BZZ2NT03SL228846JPNYKS99M', 39)
GO
INSERT [dbo].[Attendances] ([ClassUserId], [Day], [AttendanceStatus], [Reason], [AttendanceId]) VALUES (26, CAST(N'2023-03-06T00:00:00.0000000' AS DateTime2), 3, N'19', 40)
GO
INSERT [dbo].[Attendances] ([ClassUserId], [Day], [AttendanceStatus], [Reason], [AttendanceId]) VALUES (12, CAST(N'2023-04-06T00:00:00.0000000' AS DateTime2), 1, N'0T21F5PXP9WH22', 41)
GO
INSERT [dbo].[Attendances] ([ClassUserId], [Day], [AttendanceStatus], [Reason], [AttendanceId]) VALUES (10, CAST(N'2023-02-12T00:00:00.0000000' AS DateTime2), 0, N'SA0TB6A', 42)
GO
INSERT [dbo].[Attendances] ([ClassUserId], [Day], [AttendanceStatus], [Reason], [AttendanceId]) VALUES (4, CAST(N'2023-01-08T00:00:00.0000000' AS DateTime2), 0, N'1I1MS271B5E0BPBJ64B60DA392I6Q71RY2UCNY9URA0SZE', 43)
GO
INSERT [dbo].[Attendances] ([ClassUserId], [Day], [AttendanceStatus], [Reason], [AttendanceId]) VALUES (21, CAST(N'2023-07-05T00:00:00.0000000' AS DateTime2), 3, N'KA0Q', 44)
GO
INSERT [dbo].[Attendances] ([ClassUserId], [Day], [AttendanceStatus], [Reason], [AttendanceId]) VALUES (17, CAST(N'2023-03-25T00:00:00.0000000' AS DateTime2), 3, N'Y7M7', 45)
GO
INSERT [dbo].[Attendances] ([ClassUserId], [Day], [AttendanceStatus], [Reason], [AttendanceId]) VALUES (22, CAST(N'2023-08-23T00:00:00.0000000' AS DateTime2), 3, N'V2KANZ952E622N1WXI7GY2YLNKV99945ZT9D9JI31V74X71Z2L467X898LC463232', 46)
GO
INSERT [dbo].[Attendances] ([ClassUserId], [Day], [AttendanceStatus], [Reason], [AttendanceId]) VALUES (25, CAST(N'2023-02-25T00:00:00.0000000' AS DateTime2), 4, N'V393M2Z7Q95', 47)
GO
INSERT [dbo].[Attendances] ([ClassUserId], [Day], [AttendanceStatus], [Reason], [AttendanceId]) VALUES (6, CAST(N'2023-09-23T00:00:00.0000000' AS DateTime2), 1, N'ZVY91I7K63LEMA', 48)
GO
INSERT [dbo].[Attendances] ([ClassUserId], [Day], [AttendanceStatus], [Reason], [AttendanceId]) VALUES (16, CAST(N'2023-02-15T00:00:00.0000000' AS DateTime2), 1, N'5UB0', 49)
GO
INSERT [dbo].[Attendances] ([ClassUserId], [Day], [AttendanceStatus], [Reason], [AttendanceId]) VALUES (29, CAST(N'2023-04-23T00:00:00.0000000' AS DateTime2), 3, N'BN81', 50)
GO

