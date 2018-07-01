
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 07/01/2018 13:35:27
-- Generated from EDMX file: D:\TeamServiseGit\InternetMarket\SERVERInternetMarket\InternetMarketEDMX.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [InternetMarket];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_CategoryBrend]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[BrendSet] DROP CONSTRAINT [FK_CategoryBrend];
GO
IF OBJECT_ID(N'[dbo].[FK_CategoryNameProdact]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[NameProdactSet] DROP CONSTRAINT [FK_CategoryNameProdact];
GO
IF OBJECT_ID(N'[dbo].[FK_BrendNameProdact]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[NameProdactSet] DROP CONSTRAINT [FK_BrendNameProdact];
GO
IF OBJECT_ID(N'[dbo].[FK_NameProdactCost]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CostSet] DROP CONSTRAINT [FK_NameProdactCost];
GO
IF OBJECT_ID(N'[dbo].[FK_UserBrend]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[BrendSet] DROP CONSTRAINT [FK_UserBrend];
GO
IF OBJECT_ID(N'[dbo].[FK_UserNameProdact]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[NameProdactSet] DROP CONSTRAINT [FK_UserNameProdact];
GO
IF OBJECT_ID(N'[dbo].[FK_UserCost]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CostSet] DROP CONSTRAINT [FK_UserCost];
GO
IF OBJECT_ID(N'[dbo].[FK_NameProdactBasket]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[BasketSet] DROP CONSTRAINT [FK_NameProdactBasket];
GO
IF OBJECT_ID(N'[dbo].[FK_CostBasket]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[BasketSet] DROP CONSTRAINT [FK_CostBasket];
GO
IF OBJECT_ID(N'[dbo].[FK_UserBasket]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[BasketSet] DROP CONSTRAINT [FK_UserBasket];
GO
IF OBJECT_ID(N'[dbo].[FK_AdminBasket]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[BasketSet] DROP CONSTRAINT [FK_AdminBasket];
GO
IF OBJECT_ID(N'[dbo].[FK_AdminUser]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[UserSet] DROP CONSTRAINT [FK_AdminUser];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[CategorySet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[CategorySet];
GO
IF OBJECT_ID(N'[dbo].[BrendSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[BrendSet];
GO
IF OBJECT_ID(N'[dbo].[NameProdactSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[NameProdactSet];
GO
IF OBJECT_ID(N'[dbo].[CostSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[CostSet];
GO
IF OBJECT_ID(N'[dbo].[UserSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[UserSet];
GO
IF OBJECT_ID(N'[dbo].[AdminSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[AdminSet];
GO
IF OBJECT_ID(N'[dbo].[BasketSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[BasketSet];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'CategorySet'
CREATE TABLE [dbo].[CategorySet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [NameCategory] nvarchar(max)  NOT NULL,
    [Admin_Id] int  NOT NULL
);
GO

-- Creating table 'BrendSet'
CREATE TABLE [dbo].[BrendSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [BrandName] nvarchar(max)  NOT NULL,
    [Admin_Id] int  NOT NULL,
    [Category_Id] int  NOT NULL,
    [User_Id] int  NOT NULL
);
GO

-- Creating table 'NameProdactSet'
CREATE TABLE [dbo].[NameProdactSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [NameProduct] nvarchar(max)  NOT NULL,
    [Admin_Id] int  NOT NULL,
    [Category_Id] int  NOT NULL,
    [Brend_Id] int  NOT NULL,
    [User_Id] int  NOT NULL
);
GO

-- Creating table 'CostSet'
CREATE TABLE [dbo].[CostSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Prise] nvarchar(max)  NOT NULL,
    [Admin_Id] int  NOT NULL,
    [NameProdact_Id] int  NOT NULL,
    [User_Id] int  NOT NULL
);
GO

-- Creating table 'UserSet'
CREATE TABLE [dbo].[UserSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [NameUser] nvarchar(max)  NOT NULL,
    [Pass] nvarchar(max)  NOT NULL,
    [Admin_Id] int  NOT NULL
);
GO

-- Creating table 'AdminSet'
CREATE TABLE [dbo].[AdminSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [NameAdmin] nvarchar(max)  NOT NULL,
    [PasswordAdmin] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'BasketSet'
CREATE TABLE [dbo].[BasketSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [NameProdact_Id] int  NOT NULL,
    [Cost_Id] int  NOT NULL,
    [User_Id] int  NOT NULL,
    [Admin_Id] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'CategorySet'
ALTER TABLE [dbo].[CategorySet]
ADD CONSTRAINT [PK_CategorySet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'BrendSet'
ALTER TABLE [dbo].[BrendSet]
ADD CONSTRAINT [PK_BrendSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'NameProdactSet'
ALTER TABLE [dbo].[NameProdactSet]
ADD CONSTRAINT [PK_NameProdactSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'CostSet'
ALTER TABLE [dbo].[CostSet]
ADD CONSTRAINT [PK_CostSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'UserSet'
ALTER TABLE [dbo].[UserSet]
ADD CONSTRAINT [PK_UserSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'AdminSet'
ALTER TABLE [dbo].[AdminSet]
ADD CONSTRAINT [PK_AdminSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'BasketSet'
ALTER TABLE [dbo].[BasketSet]
ADD CONSTRAINT [PK_BasketSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [Category_Id] in table 'BrendSet'
ALTER TABLE [dbo].[BrendSet]
ADD CONSTRAINT [FK_CategoryBrend]
    FOREIGN KEY ([Category_Id])
    REFERENCES [dbo].[CategorySet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CategoryBrend'
CREATE INDEX [IX_FK_CategoryBrend]
ON [dbo].[BrendSet]
    ([Category_Id]);
GO

-- Creating foreign key on [Category_Id] in table 'NameProdactSet'
ALTER TABLE [dbo].[NameProdactSet]
ADD CONSTRAINT [FK_CategoryNameProdact]
    FOREIGN KEY ([Category_Id])
    REFERENCES [dbo].[CategorySet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CategoryNameProdact'
CREATE INDEX [IX_FK_CategoryNameProdact]
ON [dbo].[NameProdactSet]
    ([Category_Id]);
GO

-- Creating foreign key on [Brend_Id] in table 'NameProdactSet'
ALTER TABLE [dbo].[NameProdactSet]
ADD CONSTRAINT [FK_BrendNameProdact]
    FOREIGN KEY ([Brend_Id])
    REFERENCES [dbo].[BrendSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_BrendNameProdact'
CREATE INDEX [IX_FK_BrendNameProdact]
ON [dbo].[NameProdactSet]
    ([Brend_Id]);
GO

-- Creating foreign key on [NameProdact_Id] in table 'CostSet'
ALTER TABLE [dbo].[CostSet]
ADD CONSTRAINT [FK_NameProdactCost]
    FOREIGN KEY ([NameProdact_Id])
    REFERENCES [dbo].[NameProdactSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_NameProdactCost'
CREATE INDEX [IX_FK_NameProdactCost]
ON [dbo].[CostSet]
    ([NameProdact_Id]);
GO

-- Creating foreign key on [User_Id] in table 'BrendSet'
ALTER TABLE [dbo].[BrendSet]
ADD CONSTRAINT [FK_UserBrend]
    FOREIGN KEY ([User_Id])
    REFERENCES [dbo].[UserSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_UserBrend'
CREATE INDEX [IX_FK_UserBrend]
ON [dbo].[BrendSet]
    ([User_Id]);
GO

-- Creating foreign key on [User_Id] in table 'NameProdactSet'
ALTER TABLE [dbo].[NameProdactSet]
ADD CONSTRAINT [FK_UserNameProdact]
    FOREIGN KEY ([User_Id])
    REFERENCES [dbo].[UserSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_UserNameProdact'
CREATE INDEX [IX_FK_UserNameProdact]
ON [dbo].[NameProdactSet]
    ([User_Id]);
GO

-- Creating foreign key on [User_Id] in table 'CostSet'
ALTER TABLE [dbo].[CostSet]
ADD CONSTRAINT [FK_UserCost]
    FOREIGN KEY ([User_Id])
    REFERENCES [dbo].[UserSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_UserCost'
CREATE INDEX [IX_FK_UserCost]
ON [dbo].[CostSet]
    ([User_Id]);
GO

-- Creating foreign key on [NameProdact_Id] in table 'BasketSet'
ALTER TABLE [dbo].[BasketSet]
ADD CONSTRAINT [FK_NameProdactBasket]
    FOREIGN KEY ([NameProdact_Id])
    REFERENCES [dbo].[NameProdactSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_NameProdactBasket'
CREATE INDEX [IX_FK_NameProdactBasket]
ON [dbo].[BasketSet]
    ([NameProdact_Id]);
GO

-- Creating foreign key on [Cost_Id] in table 'BasketSet'
ALTER TABLE [dbo].[BasketSet]
ADD CONSTRAINT [FK_CostBasket]
    FOREIGN KEY ([Cost_Id])
    REFERENCES [dbo].[CostSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CostBasket'
CREATE INDEX [IX_FK_CostBasket]
ON [dbo].[BasketSet]
    ([Cost_Id]);
GO

-- Creating foreign key on [User_Id] in table 'BasketSet'
ALTER TABLE [dbo].[BasketSet]
ADD CONSTRAINT [FK_UserBasket]
    FOREIGN KEY ([User_Id])
    REFERENCES [dbo].[UserSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_UserBasket'
CREATE INDEX [IX_FK_UserBasket]
ON [dbo].[BasketSet]
    ([User_Id]);
GO

-- Creating foreign key on [Admin_Id] in table 'BasketSet'
ALTER TABLE [dbo].[BasketSet]
ADD CONSTRAINT [FK_AdminBasket]
    FOREIGN KEY ([Admin_Id])
    REFERENCES [dbo].[AdminSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AdminBasket'
CREATE INDEX [IX_FK_AdminBasket]
ON [dbo].[BasketSet]
    ([Admin_Id]);
GO

-- Creating foreign key on [Admin_Id] in table 'UserSet'
ALTER TABLE [dbo].[UserSet]
ADD CONSTRAINT [FK_AdminUser]
    FOREIGN KEY ([Admin_Id])
    REFERENCES [dbo].[AdminSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AdminUser'
CREATE INDEX [IX_FK_AdminUser]
ON [dbo].[UserSet]
    ([Admin_Id]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------