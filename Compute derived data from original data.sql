Create function [dbo].[DBO2Age](@PDOB varchar(20))
returns varchar(4)
begin --b
    declare @LAge varchar(4), @Lday DATETIME
    if isdate(@PDOB) = 1
        set @Lday = '日期錯誤'
    SET @LAge = (0 + Convert(Char(8), getdate(),112)) - 
Convert(Char(8), @PDOB, 112)) / 10000
    return @LAge
end 