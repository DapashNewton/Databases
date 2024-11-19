
CREATE DATABASE Supplynet;

USE Supplynet;

CREATE TABLE Supplier (
    ID VARCHAR(100) PRIMARY KEY,
    Name VARCHAR(100),
    City VARCHAR(100)
);






CREATE TABLE Item (
    ID VARCHAR(100) PRIMARY KEY,
    Name VARCHAR(100)
);








CREATE TABLE Supplied (
    SupplierID VARCHAR(100),
    ItemID VARCHAR(100),
    Quantity INT,
    DeliveryTimestamp TIMESTAMP,
    PRIMARY KEY (SupplierID, ItemID),
    FOREIGN KEY (SupplierID) REFERENCES Supplier(ID),
    FOREIGN KEY (ItemID) REFERENCES Item(ID)
);



INSERT INTO Supplier (ID, Name, City) VALUES 
('S1', 'Walmart Inc.', 'Bentonville'),
('S2', 'Amazon', 'Seattle'),
('S3', 'Apple Inc.', 'Cupertino'),
('S4', 'Costco Wholesale', 'Issaquah');





INSERT INTO Item (ID, Name) VALUES
('I1', 'Bolt'),
('I2', 'Nut'),
('I3', 'Washer'),
('I4', 'Screw');





INSERT INTO Supplied (SupplierID, ItemID, Quantity, DeliveryTimestamp) VALUES
('S1', 'I1', 100, '2024-10-21 10:00:00'),
('S2', 'I2', 200, '2024-10-21 11:00:00'),
('S2', 'I3', 300, '2024-10-21 12:00:00'),
('S3', 'I1', 400, '2024-10-21 13:00:00'),
('S4', 'I1', 500, '2024-10-21 14:00:00'),
('S4', 'I3', 600, '2024-10-21 15:00:00'),
('S1', 'I4', 150, '2024-10-21 16:00:00'),
('S2', 'I4', 250, '2024-10-21 17:00:00'),
('S3', 'I2', 350, '2024-10-21 18:00:00'),
('S4', 'I4', 450, '2024-10-21 19:00:00');


SELECT Supplier.ID, Supplier.Name
FROM Supplier
JOIN Supplied ON Supplier.ID = Supplied.SupplierID
JOIN Item ON Supplied.ItemID = Item.ID
WHERE Item.Name = 'Bolt';


SELECT Item.ID, Item.Name
FROM Item
WHERE Item.ID IN (
    SELECT Supplied.ItemID FROM Supplied WHERE Supplied.SupplierID = 'S2'
    INTERSECT
    SELECT Supplied.ItemID FROM Supplied WHERE Supplied.SupplierID = 'S4'



SELECT Supplier.ID, Supplier.Name, SUM(Supplied.Quantity) AS TotalQuantity
FROM Supplier
JOIN Supplied ON Supplier.ID = Supplied.SupplierID
GROUP BY Supplier.ID, Supplier.Name
HAVING COUNT(Supplied.ItemID) > 0;



