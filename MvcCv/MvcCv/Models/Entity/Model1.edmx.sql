
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 01/09/2024 18:44:14
-- Generated from EDMX file: C:\Users\Umut\source\repos\MvcCv\MvcCv\Models\Entity\Model1.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [cvDatabase];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Admin]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Admin];
GO
IF OBJECT_ID(N'[dbo].[Deneyimler]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Deneyimler];
GO
IF OBJECT_ID(N'[dbo].[Egitim]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Egitim];
GO
IF OBJECT_ID(N'[dbo].[Hakkimda]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Hakkimda];
GO
IF OBJECT_ID(N'[dbo].[Hobilerim]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Hobilerim];
GO
IF OBJECT_ID(N'[dbo].[Iletisim]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Iletisim];
GO
IF OBJECT_ID(N'[dbo].[Sertifikalarim]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Sertifikalarim];
GO
IF OBJECT_ID(N'[dbo].[Yeteneklerim]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Yeteneklerim];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Admin'
CREATE TABLE [dbo].[Admin] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [KullaniciAdi] varchar(20)  NULL,
    [Sifre] varchar(20)  NULL
);
GO

-- Creating table 'Deneyimler'
CREATE TABLE [dbo].[Deneyimler] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Baslik] varchar(100)  NULL,
    [AltBaslik] varchar(100)  NULL,
    [Aciklama] varchar(max)  NULL,
    [Tarih] varchar(100)  NULL
);
GO

-- Creating table 'Egitim'
CREATE TABLE [dbo].[Egitim] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Baslik] varchar(100)  NULL,
    [AltBaslik1] varchar(100)  NULL,
    [AltBaslik2] varchar(100)  NULL,
    [GNO] varchar(10)  NULL,
    [Tarih] varchar(100)  NULL,
    [Resim] varchar(100)  NULL
);
GO

-- Creating table 'Hakkimda'
CREATE TABLE [dbo].[Hakkimda] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Ad] varchar(30)  NULL,
    [Soyad] varchar(30)  NULL,
    [Adres] varchar(100)  NULL,
    [Telefon] varchar(20)  NULL,
    [Mail] varchar(50)  NULL,
    [Aciklama] varchar(max)  NULL
);
GO

-- Creating table 'Hobilerim'
CREATE TABLE [dbo].[Hobilerim] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Aciklama1] varchar(500)  NULL,
    [Aciklama2] varchar(500)  NULL
);
GO

-- Creating table 'Iletisim'
CREATE TABLE [dbo].[Iletisim] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [AdSoyad] varchar(100)  NULL,
    [Mail] varchar(50)  NULL,
    [Konu] varchar(100)  NULL,
    [Mesaj] varchar(1000)  NULL,
    [Tarih] datetime  NULL
);
GO

-- Creating table 'Sertifikalarim'
CREATE TABLE [dbo].[Sertifikalarim] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Aciklama] varchar(250)  NULL,
    [Tarih] varchar(30)  NULL
);
GO

-- Creating table 'Yeteneklerim'
CREATE TABLE [dbo].[Yeteneklerim] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Yetenek] varchar(100)  NULL,
    [Oran] tinyint  NULL
);
GO

-- Creating table 'Sertifikalarim1Set'
CREATE TABLE [dbo].[Sertifikalarim1Set] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Tarih] varchar(30)  NULL,
    [Aciklama] varchar(250)  NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'Admin'
ALTER TABLE [dbo].[Admin]
ADD CONSTRAINT [PK_Admin]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Deneyimler'
ALTER TABLE [dbo].[Deneyimler]
ADD CONSTRAINT [PK_Deneyimler]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Egitim'
ALTER TABLE [dbo].[Egitim]
ADD CONSTRAINT [PK_Egitim]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Hakkimda'
ALTER TABLE [dbo].[Hakkimda]
ADD CONSTRAINT [PK_Hakkimda]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Hobilerim'
ALTER TABLE [dbo].[Hobilerim]
ADD CONSTRAINT [PK_Hobilerim]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Iletisim'
ALTER TABLE [dbo].[Iletisim]
ADD CONSTRAINT [PK_Iletisim]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Sertifikalarim'
ALTER TABLE [dbo].[Sertifikalarim]
ADD CONSTRAINT [PK_Sertifikalarim]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Yeteneklerim'
ALTER TABLE [dbo].[Yeteneklerim]
ADD CONSTRAINT [PK_Yeteneklerim]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Sertifikalarim1Set'
ALTER TABLE [dbo].[Sertifikalarim1Set]
ADD CONSTRAINT [PK_Sertifikalarim1Set]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------