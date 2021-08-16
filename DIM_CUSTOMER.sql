--Cleanised Dim_CustomerTable
SELECT 
c.[CustomerKey] AS CustomerKey,
      --[GeographyKey]
      --[CustomerAlternateKey]
      --[Title]
c.FirstName AS [First Name],
      --[MiddleName]
c.LastName AS [Last Name],
c.FirstName + ' ' + c.LastName AS [Full Name],  --Using concatenation to have both f & l together
      --[NameStyle]
      --[BirthDate]
      --[MaritalStatus]
      --[Suffix]
CASE c.Gender WHEN 'M' THEN 'Male' WHEN 'F' THEN 'FEMALE' END AS Gender,
      --[EmailAddress]
      --[YearlyIncome]
      --[TotalChildren]
      --[NumberChildrenAtHome]
      --[EnglishEducation]
      --[SpanishEducation]
      --[FrenchEducation]
      --[EnglishOccupation]
      --[SpanishOccupation]
      --[FrenchOccupation]
      --[HouseOwnerFlag]
      --[NumberCarsOwned]
      --[AddressLine1]
      --[AddressLine2]
      --[Phone]
      c.[DateFirstPurchase],
      --[CommuteDistance]
g.City AS [Customer City]     --joined customer city from geography table
FROM
dbo.DimCustomer AS c
LEFT JOIN dbo.DimGeography AS g ON c.GeographyKey = g.GeographyKey
ORDER BY
CustomerKey ASC                 --ordered list by ascending customerkey
 