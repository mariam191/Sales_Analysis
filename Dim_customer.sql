/****** Cleansed dim customer  ******/
SELECT 
	[CustomerKey]
      --,[GeographyKey]
      --,[CustomerAlternateKey]
      --,[Title]
      ,[FirstName] as [First name]
      --,[MiddleName]
      ,[LastName] as [Last name]
	  ,FirstName + ' ' + LastName as [Full name],
      --,[NameStyle]
      --,[BirthDate]
      --,[MaritalStatus]
      --,[Suffix]
	  case gender 
	  when 'M' then 'Male'
	  when 'F' then 'Female'
	  end as gender
      --,[EmailAddress]
      --,[YearlyIncome]
      --,[TotalChildren]
      --,[NumberChildrenAtHome]
      --,[EnglishEducation]
      --,[SpanishEducation]
      --,[FrenchEducation]
      --,[EnglishOccupation]
      --,[SpanishOccupation]
      --,[FrenchOccupation]
      --,[HouseOwnerFlag]
      --,[NumberCarsOwned]
      --,[AddressLine1]
      --,[AddressLine2]
      --,[Phone]
      ,[DateFirstPurchase] as [DateFirstPurchase],
      --,[CommuteDistance]
	  city as city from DimGeography 
	  join DimCustomer
	  on DimCustomer.GeographyKey = DimGeography.GeographyKey 
	  order by CustomerAlternateKey
--FROM [AdventureWorksDW2019].[dbo].[DimCustomer]