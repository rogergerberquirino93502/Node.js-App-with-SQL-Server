USE CALENDAR;
DROP TABLE IF EXISTS EVENTS;

CREATE TABLE EVENTS(
    id int IDENTITY(1,2) PRIMARY KEY CLUSTERED NOT NULL,
    userId nvarchar(50) NOT NULL,
    title nvarchar(200) NOT NULL,
    [description] nvarchar(1000) NULL,
    startDate date NOT NULL,
    startTime time(0) NULL,
    endDate date NULL,
    endTime time(0) NULL
    INDEX idx_events_userId(userId)
);

INSERT INTO EVENTS (userId, title, [description], startDate, startTime, endDate, endTime)
VALUES ('user1234', N'appointment', N'description stuff', '2021-06-29', '12:40',null, null ),
('user12345', N'online conference', N'', '2021-06-29', '12:40',null, null )