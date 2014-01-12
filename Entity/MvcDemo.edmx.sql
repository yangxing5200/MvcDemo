
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, and Azure
-- --------------------------------------------------
-- Date Created: 01/09/2014 21:31:55
-- Generated from EDMX file: D:\资料\资料\mvc\ASP.NET MVC+EF+LINQ+Spring.Net 用户增删除改查简单Demo\MvcDemo\Entity\MvcDemo.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [MvcDemo];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_School_inherits_BaseModel]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[BaseModel_School] DROP CONSTRAINT [FK_School_inherits_BaseModel];
GO
IF OBJECT_ID(N'[dbo].[FK_Student_inherits_BaseModel]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[BaseModel_Student] DROP CONSTRAINT [FK_Student_inherits_BaseModel];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[t_Users]', 'U') IS NOT NULL
    DROP TABLE [dbo].[t_Users];
GO
IF OBJECT_ID(N'[dbo].[BaseModel]', 'U') IS NOT NULL
    DROP TABLE [dbo].[BaseModel];
GO
IF OBJECT_ID(N'[dbo].[BaseModel_School]', 'U') IS NOT NULL
    DROP TABLE [dbo].[BaseModel_School];
GO
IF OBJECT_ID(N'[dbo].[BaseModel_Student]', 'U') IS NOT NULL
    DROP TABLE [dbo].[BaseModel_Student];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 't_Users'
CREATE TABLE [dbo].[t_Users] (
    [UserID] int IDENTITY(1,1) NOT NULL,
    [Account] varchar(20)  NOT NULL,
    [Password] varchar(20)  NOT NULL,
    [Name] varchar(20)  NOT NULL,
    [Sex] int  NOT NULL,
    [Email] varchar(50)  NULL,
    [Telephone] varchar(15)  NULL,
    [Remark] varchar(100)  NULL
);
GO

-- Creating table 'BaseModel'
CREATE TABLE [dbo].[BaseModel] (
    [ID] nvarchar(max)  NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Creator] nvarchar(max)  NOT NULL,
    [CreateDate] nvarchar(max)  NOT NULL,
    [Modify] nvarchar(max)  NOT NULL,
    [ModifyDate] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'BaseModel_School'
CREATE TABLE [dbo].[BaseModel_School] (
    [Loacation] nvarchar(max)  NOT NULL,
    [Remark] nvarchar(max)  NOT NULL,
    [WebSite] nvarchar(max)  NOT NULL,
    [Tel] nvarchar(max)  NOT NULL,
    [Manager] nvarchar(max)  NOT NULL,
    [ID] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'BaseModel_Student'
CREATE TABLE [dbo].[BaseModel_Student] (
    [Sex] bit  NOT NULL,
    [JoinDate] nvarchar(max)  NOT NULL,
    [Status] nvarchar(max)  NOT NULL,
    [PassDate] nvarchar(max)  NOT NULL,
    [ID] nvarchar(max)  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [UserID] in table 't_Users'
ALTER TABLE [dbo].[t_Users]
ADD CONSTRAINT [PK_t_Users]
    PRIMARY KEY CLUSTERED ([UserID] ASC);
GO

-- Creating primary key on [ID] in table 'BaseModel'
ALTER TABLE [dbo].[BaseModel]
ADD CONSTRAINT [PK_BaseModel]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'BaseModel_School'
ALTER TABLE [dbo].[BaseModel_School]
ADD CONSTRAINT [PK_BaseModel_School]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'BaseModel_Student'
ALTER TABLE [dbo].[BaseModel_Student]
ADD CONSTRAINT [PK_BaseModel_Student]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [ID] in table 'BaseModel_School'
ALTER TABLE [dbo].[BaseModel_School]
ADD CONSTRAINT [FK_School_inherits_BaseModel]
    FOREIGN KEY ([ID])
    REFERENCES [dbo].[BaseModel]
        ([ID])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating foreign key on [ID] in table 'BaseModel_Student'
ALTER TABLE [dbo].[BaseModel_Student]
ADD CONSTRAINT [FK_Student_inherits_BaseModel]
    FOREIGN KEY ([ID])
    REFERENCES [dbo].[BaseModel]
        ([ID])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------