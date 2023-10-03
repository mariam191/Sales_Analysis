/****** cleansed dim.date table  ******/
SELECT 
	[DateKey]
      ,[FullDateAlternateKey] as date
      --,[DayNumberOfWeek]
      ,[EnglishDayNameOfWeek] as day
      --,[SpanishDayNameOfWeek]
      --,[FrenchDayNameOfWeek]
      --,[DayNumberOfMonth]
      --,[DayNumberOfYear]
      ,[WeekNumberOfYear] as weekNo
      ,[EnglishMonthName] as month
	  ,left([EnglishMonthName], 3) as short_month    -- useful for front end date navigation and fron graphs
      --,[SpanishMonthName]
      --,[FrenchMonthName]
      ,[MonthNumberOfYear] as monthNo 
      ,[CalendarQuarter] as quarter 
      ,[CalendarYear] as year
      --,[CalendarSemester]
      --,[FiscalQuarter]
      --,[FiscalYear]
      --,[FiscalSemester]
  FROM [AdventureWorksDW2019].[dbo].[DimDate]
  where [CalendarYear] >= 2021
