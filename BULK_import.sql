
--Table needs to exist before inserting data
  BULK INSERT dbo.SampleSuperstore
FROM 'C:\Users\DES\Downloads\archive1\SampleSuperstore_pizda.csv'
WITH (
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    FORMAT = 'CSV',
    CODEPAGE = '65001', -- UTF-8
    FIRSTROW = 2
)

--Creating table
CREATE TABLE YourTableName (
    Ship_Mode NVARCHAR(255),
    Segment NVARCHAR(255),
    Country NVARCHAR(255),
    City NVARCHAR(255),
    State NVARCHAR(255),
    Postal_Code FLOAT,
    Region NVARCHAR(255),
    Category NVARCHAR(255),
    Sub_Category NVARCHAR(255),
    Sales FLOAT,
    Quantity FLOAT,
    Discount FLOAT,
    Profit FLOAT
);