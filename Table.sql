CREATE TABLE Publications (
	publicationId INT IDENTITY PRIMARY KEY NOT NULL,
	publicationName NVARCHAR(50), 
)
GO

CREATE TABLE Author (
	authorId INT IDENTITY PRIMARY KEY NOT NULL,
	authorName NVARCHAR(50), 
	authorSurname NVARCHAR(50),
)
GO

CREATE TABLE Category (
	categoryId INT IDENTITY PRIMARY KEY NOT NULL,
	categoryName NVARCHAR(50), 
	publicationId INT NOT NULL,
	authorId INT NOT NULL,
	CONSTRAINT fk_publication FOREIGN KEY (publicationId) 
    REFERENCES Publications(publicationId),
	CONSTRAINT fk_author FOREIGN KEY (authorId) 
    REFERENCES Author(authorId)
)
GO

CREATE TABLE Member (
	memberId INT IDENTITY PRIMARY KEY NOT NULL,
	memberName NVARCHAR(50), 
	memberSurname NVARCHAR(50),
)
GO

CREATE TABLE Administrator (
	administratorId INT IDENTITY PRIMARY KEY NOT NULL,
	administratorName NVARCHAR(50), 
	administratorSurname NVARCHAR(50),
	administratorUsername NVARCHAR(50),
	administratorPassword NVARCHAR(50),
)
GO

CREATE TABLE Book (
	
	bookId INT IDENTITY PRIMARY KEY NOT NULL,
	bookName NVARCHAR(50),
	categoryId INT NOT NULL,
	publicationId INT NOT NULL,
	authorId INT NOT NULL,
	CONSTRAINT fk_publication1 FOREIGN KEY (publicationId) 
    REFERENCES Publications(publicationId),
	CONSTRAINT fk_author1 FOREIGN KEY (authorId) 
    REFERENCES Author(authorId),
	CONSTRAINT fk_category FOREIGN KEY (categoryId) 
    REFERENCES Category(categoryId)
)

GO


CREATE TABLE Logs (

	logId INT IDENTITY PRIMARY KEY NOT NULL,
	changeID INT NOT NULL,
	operation NVARCHAR(50) NOT NULL,
	tableName NVARCHAR(50) NOT NULL,
	uptadated_at DATETIME NOT NULL,
)
GO

CREATE TABLE Lend (

	lendId INT IDENTITY PRIMARY KEY NOT NULL,
	lendTime Datetime NOT NULL,
	lendLength INT NOT NULL,
	memberId INT NOT NULL,
	bookId INT NOT NULL
	CONSTRAINT fk_member FOREIGN KEY (memberId) 
    REFERENCES Member(memberId),
	CONSTRAINT fk_book FOREIGN KEY (bookId) 
    REFERENCES Book(bookId),
)
GO