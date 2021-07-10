INSERT INTO [dbo].[events]
(
    [id]
        ,[title]
        ,[description]
        ,[startDate]
        ,[startTime]
        ,[endDate]
        ,[endTime]
)
VALUES(
    @userId
    ,@title
    ,@description
    ,@startDate
    ,@endDate
    ,@endTime
);
SELECT SCOPE_IDENTITY() AS id;