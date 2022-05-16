IF OBJECT_ID(N'[__EFMigrationsHistory]') IS NULL
BEGIN
    CREATE TABLE [__EFMigrationsHistory] (
        [MigrationId] nvarchar(150) NOT NULL,
        [ProductVersion] nvarchar(32) NOT NULL,
        CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY ([MigrationId])
    );
END;
GO

BEGIN TRANSACTION;
GO

CREATE TABLE [User] (
    [Id] int NOT NULL IDENTITY,
    [Name] nvarchar(max) NULL,
    [Password] nvarchar(max) NULL,
    [Email] nvarchar(max) NULL,
    CONSTRAINT [PK_User] PRIMARY KEY ([Id])
);
GO

CREATE TABLE [Comments] (
    [Id] int NOT NULL IDENTITY,
    [Date] datetime2 NOT NULL,
    [Comment] nvarchar(max) NULL,
    [UserId] int NULL,
    CONSTRAINT [PK_Comments] PRIMARY KEY ([Id]),
    CONSTRAINT [FK_Comments_User_UserId] FOREIGN KEY ([UserId]) REFERENCES [User] ([Id]) ON DELETE NO ACTION
);
GO

CREATE TABLE [Posts] (
    [Title] nvarchar(450) NOT NULL,
    [Date] datetime2 NOT NULL,
    [Content] nvarchar(max) NULL,
    [UserId] int NULL,
    CONSTRAINT [PK_Posts] PRIMARY KEY ([Title]),
    CONSTRAINT [FK_Posts_User_UserId] FOREIGN KEY ([UserId]) REFERENCES [User] ([Id]) ON DELETE NO ACTION
);
GO

CREATE INDEX [IX_Comments_UserId] ON [Comments] ([UserId]);
GO

CREATE INDEX [IX_Posts_UserId] ON [Posts] ([UserId]);
GO

INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
VALUES (N'20220516215624_Migra', N'5.0.0');
GO

COMMIT;
GO

