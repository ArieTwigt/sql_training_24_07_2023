DECLARE @RC int
DECLARE @TopAmount int = 5
DECLARE @MinPrice int = 500000
DECLARE @MaxPrice int = 1500000

EXECUTE @RC = [dbo].[get_top_models] 
   @TopAmount
  ,@MinPrice
  ,@MaxPrice
GO