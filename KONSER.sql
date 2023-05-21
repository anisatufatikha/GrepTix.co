CREATE DATABASE Konser;
USE Konser;

CREATE TABLE Ticket (
    TicketID INT PRIMARY KEY IDENTITY,
    TicketType VARCHAR(50) NOT NULL,
    Price DECIMAL(18,2) NOT NULL,
	Tax DECIMAL(5,2) NOT NULL DEFAULT 0,
	QuantityAvailable INT NOT NULL DEFAULT 0
);

CREATE TABLE Purchase (
    PurchaseID INT PRIMARY KEY IDENTITY(1,1),
	BuyerName VARCHAR(200) NOT NULL,
    TicketID INT NOT NULL,
    Quantity INT NOT NULL,
    TotalPrice DECIMAL(18,2) NOT NULL,
    PurchaseDate DATETIME NOT NULL DEFAULT GETDATE(),
    CONSTRAINT FK_Purchase_Ticket FOREIGN KEY (TicketID)
        REFERENCES Ticket(TicketID)
);

drop table Purchase
drop table Ticket
select*from Ticket
select*from Purchase