CREATE TABLE [dbo].[staff]
(
	[staffId] INT NOT NULL PRIMARY KEY, 
    [FirstName] VARCHAR(50) NOT NULL, 
    [LastName] VARCHAR(50) NOT NULL, 
    [dNo] INT NOT NULL, 
    [Street] VARCHAR(50) NOT NULL, 
    [City] VARCHAR(50) NOT NULL, 
    [State] NCHAR(10) NOT NULL, 
    [ZipCode] NUMERIC NOT NULL
)
