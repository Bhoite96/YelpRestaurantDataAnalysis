USE INFO_6210_DB;
-- Create tables section -------------------------------------------------

-- Table Attribute

CREATE TABLE [Attribute]
(
 [ID] Varchar(50) NOT NULL,
 [Name] Varchar(255) NULL
)
go

-- Add keys for table Attribute

ALTER TABLE [Attribute] ADD CONSTRAINT [PK_Attribute] PRIMARY KEY ([ID])
go

-- Table Category

CREATE TABLE [Category]
(
 [ID] Varchar(50) NOT NULL,
 [Category] Varchar(255) DEFAULT 255 NOT NULL
)
go

-- Add keys for table Category

ALTER TABLE [Category] ADD CONSTRAINT [PK_Category] PRIMARY KEY ([ID])
go

-- Table Business_Attributes

CREATE TABLE [Business_Attributes]
(
 [Business_ID] Varchar(50) NOT NULL,
 [AttributeID] Varchar(50) NOT NULL,
 [Value] Text NULL
)
go

-- Create indexes for table Business_Attributes

CREATE INDEX [IX_Relationship1] ON [Business_Attributes] ([Business_ID])
go

CREATE INDEX [IX_Relationship3] ON [Business_Attributes] ([AttributeID])
go

-- Add keys for table Business_Attributes

ALTER TABLE [Business_Attributes] ADD CONSTRAINT [PK_Business_Attributes] PRIMARY KEY ([Business_ID],[AttributeID])
go

-- Table Business_Category

CREATE TABLE [Business_Category]
(
 [BusinessID] Varchar(50) NULL,
 [CategoryID] Varchar(50) NULL
)
go

-- Create indexes for table Business_Category

CREATE INDEX [IX_Relationship4] ON [Business_Category] ([BusinessID])
go

CREATE INDEX [IX_Relationship6] ON [Business_Category] ([CategoryID])
go

-- Table Elite_Years

CREATE TABLE [Elite_Years]
(
 [UserID] Varchar(50) NOT NULL,
 [Year] Varchar(10) NOT NULL
)
go

-- Create indexes for table Elite_Years

CREATE INDEX [IX_Relationship21] ON [Elite_Years] ([UserID])
go

-- Add keys for table Elite_Years

ALTER TABLE [Elite_Years] ADD CONSTRAINT [PK_Elite_Years] PRIMARY KEY ([UserID],[Year])
go

-- Table Parking_Attributes

CREATE TABLE [Parking_Attributes]
(
 [Garage] Tinyint NULL,
 [Street] Tinyint NULL,
 [Validated] Tinyint NULL,
 [Lot] Tinyint NULL,
 [Valet] Tinyint NULL,
 [BusinessID] Varchar(50) NOT NULL
)
go

-- Add keys for table Parking_Attributes

ALTER TABLE [Parking_Attributes] ADD CONSTRAINT [PK_Parking_Attributes] PRIMARY KEY ([BusinessID])
go

-- Table Business_Address

CREATE TABLE [Business_Address]
(
 [BusinessID] Varchar(50) NOT NULL,
 [City] Varchar(50) NOT NULL,
 [State] Varchar(50) NOT NULL,
 [PostalCode] Varchar(50) NOT NULL,
 [Latitude] Decimal(12,9) NULL,
 [Longitude] Decimal(12,9) NULL,
 [AddressID] Varchar(50) NOT NULL,
 [Address] Varchar(50) NULL
)
go

-- Add keys for table Business_Address

ALTER TABLE [Business_Address] ADD CONSTRAINT [PK_Business_Address] PRIMARY KEY ([BusinessID],[AddressID])
go

-- Table Time_Dimension

CREATE TABLE [Time_Dimension]
(
 [TimeKey] Int NOT NULL,
 [Hour24] Int NULL,
 [Hour24ShortString] Varchar(10) NULL,
 [Hour24MinString] Varchar(10) NULL,
 [Hour24FullString] Varchar(10) NULL,
 [Hour12] Int NULL,
 [Hour12ShortString] Varchar(10) NULL,
 [Hour12MinString] Varchar(10) NULL,
 [Hour12FullString] Varchar(10) NULL,
 [AmPmCode] Int NULL,
 [Minute] Int NULL,
 [MinuteShortString] Varchar(10) NULL,
 [MinuteFullString24] Varchar(10) NULL,
 [MinuteFullString12] Varchar(10) NULL,
 [HalfHour] Varchar(10) NULL,
 [HalfHourCode] Int NULL,
 [HalfHourShortString] Varchar(10) NULL,
 [HalfHourFullString24] Varchar(10) NULL,
 [HalfHourFullString12] Varchar(10) NULL,
 [Second] Int NULL,
 [SecondShortString] Varchar(10) NULL,
 [FullTimeString24] Varchar(10) NULL,
 [FullTimeString12] Varchar(10) NULL,
 [FullTime] Time NULL,
 [MinuteCode] Int NULL
)
go

-- Add keys for table Time_Dimension

ALTER TABLE [Time_Dimension] ADD CONSTRAINT [PK_Time_Dimension] PRIMARY KEY ([TimeKey])
go

-- Table User

CREATE TABLE [User]
(
 [UserID] Varchar(50) NOT NULL,
 [FirstName] Varchar(20) NOT NULL,
 [MiddleName] Varchar(20) NULL,
 [LastName] Varchar(25) NULL,
 [ReviewCount] Int NULL,
 [Useful] Int NULL,
 [Cool] Int NULL,
 [AverageStars] Float NULL,
 [Funny] Varchar(50) NULL,
 [YelpingSince] Int NOT NULL
)
go

-- Add keys for table User

ALTER TABLE [User] ADD CONSTRAINT [PK_User] PRIMARY KEY ([UserID])
go

-- Table Tip

CREATE TABLE [Tip]
(
 [BusinessID] Varchar(50) NOT NULL,
 [User_ID] Varchar(50) NOT NULL,
 [Text] Text NULL,
 [DateID] Int NOT NULL,
 [Compliment_Count] Int NULL
)
go

-- Create indexes for table Tip

CREATE INDEX [IX_Relationship19] ON [Tip] ([User_ID])
go

CREATE INDEX [IX_Relationship20] ON [Tip] ([BusinessID])
go

-- Add keys for table Tip

ALTER TABLE [Tip] ADD CONSTRAINT [PK_Tip] PRIMARY KEY ([BusinessID],[User_ID],[DateID])
go

-- Table User_Friends

CREATE TABLE [User_Friends]
(
 [UserID] Varchar(50) NOT NULL,
 [FriendID] Varchar(50) NOT NULL
)
go

-- Add keys for table User_Friends

ALTER TABLE [User_Friends] ADD CONSTRAINT [PK_User_Friends] PRIMARY KEY ([UserID],[FriendID])
go

-- Table Business

CREATE TABLE [Business]
(
 [ID] Varchar(50) NOT NULL,
 [Name] Varchar(50) NOT NULL,
 [Ratings] Float NULL,
 [IsOpen] Tinyint NULL,
 [ReviewCount] Int NULL
)
go

-- Add keys for table Business

ALTER TABLE [Business] ADD CONSTRAINT [PK_Business] PRIMARY KEY ([ID])
go

-- Table CheckIn

CREATE TABLE [CheckIn]
(
 [BusinessID] Varchar(50) NOT NULL,
 [Date_Dim_DateID] Int NOT NULL,
 [Time_Dim_TimeKey] Int NOT NULL
)
go

-- Create indexes for table CheckIn

CREATE INDEX [IX_Relationship10] ON [CheckIn] ([BusinessID])
go

-- Add keys for table CheckIn

ALTER TABLE [CheckIn] ADD CONSTRAINT [PK_CheckIn] PRIMARY KEY ([BusinessID],[Date_Dim_DateID],[Time_Dim_TimeKey])
go

-- Table Review

CREATE TABLE [Review]
(
 [ID] Varchar(50) NOT NULL,
 [BusinessID] Varchar(50) NOT NULL,
 [Ratings] Float NULL,
 [Date] Date NULL,
 [Text] Text NULL,
 [Useful] Int NULL,
 [Funny] Int NULL,
 [UserID] Varchar(50) NOT NULL
)
go

-- Create indexes for table Review

CREATE INDEX [IX_Relationship16] ON [Review] ([BusinessID])
go

-- Add keys for table Review

ALTER TABLE [Review] ADD CONSTRAINT [PK_Review] PRIMARY KEY ([ID],[BusinessID],[UserID])
go

-- Table Date_Dimension

CREATE TABLE [Date_Dimension]
(
 [DateID] Int NOT NULL,
 [Date] Datetime NULL,
 [FullDate] Varchar(50) NULL,
 [DayOfMonth] Varchar(10) NULL,
 [DaySuffix] Varchar(10) NULL,
 [DayName] Varchar(25) NULL,
 [DayOfWeek] Varchar(50) NULL,
 [DayOfWeekInMonth] Varchar(10) NULL,
 [DayOfWeekInYear] Varchar(10) NULL,
 [DayOfQuarter] Varchar(10) NULL,
 [DayOfYear] Varchar(10) NULL,
 [WeekOfMonth] Varchar(10) NULL,
 [WeekOfQuarter] Varchar(10) NULL,
 [WeekOfYear] Varchar(10) NULL,
 [Month] Varchar(10) NULL,
 [MonthName] Varchar(10) NULL,
 [MonthOfQuarter] Varchar(10) NULL,
 [Quarter] Varchar(10) NULL,
 [QuarterName] Varchar(10) NULL,
 [Year] Varchar(10) NULL,
 [YearName] Varchar(10) NULL,
 [MMYYYY] Varchar(10) NULL,
 [FirstDayOfMonth] Varchar(50) NULL,
 [LastDayOfMonth] Varchar(50) NULL,
 [FirstDayOfQuarter] Varchar(50) NULL,
 [LastDayOfQuarter] Varchar(50) NULL,
 [FirstDayOfYear] Varchar(50) NULL,
 [LastDayOfYear] Varchar(50) NULL,
 [IsHoliday] Varchar(50) NULL,
 [IsWeekday] Varchar(50) NULL,
 [HolidayName] Varchar(50) NULL,
 [MonthYear] Varchar(50) NULL
)
go

-- Add keys for table Date_Dimension

ALTER TABLE [Date_Dimension] ADD CONSTRAINT [PK_Date_Dimension] PRIMARY KEY ([DateID])
go

-- Table BusinessHours

CREATE TABLE [BusinessHours]
(
 [BusinessID] Varchar(50) NOT NULL,
 [OpeningHours] Int NOT NULL,
 [ClosingHours] Int NOT NULL, -- table check constraint
 [WeekDay_ID] Varchar(50) NOT NULL,
 CONSTRAINT ck_closing_hours CHECK ([ClosingHours]>[OpeningHours]) /*--------- Table Check Constraint--------*/
)
go

-- Add keys for table BusinessHours

ALTER TABLE [BusinessHours] ADD CONSTRAINT [PK_BusinessHours] PRIMARY KEY ([BusinessID],[OpeningHours],[ClosingHours],[WeekDay_ID])
go

-- Table WeekDay_Dimension

CREATE TABLE [WeekDay_Dimension]
(
 [WeekDay_ID] Varchar(50) NOT NULL,
 [WeekDay_Name] Varchar(50) NOT NULL
)
go

-- Add keys for table WeekDay_Dimension

ALTER TABLE [WeekDay_Dimension] ADD CONSTRAINT [PK_WeekDay_Dimension] PRIMARY KEY ([WeekDay_ID])
go

-- Create foreign keys (relationships) section ------------------------------------------------- 


ALTER TABLE [Business_Attributes] ADD CONSTRAINT [BusToAtt] FOREIGN KEY ([Business_ID]) REFERENCES [Business] ([ID]) ON UPDATE NO ACTION ON DELETE NO ACTION
go



ALTER TABLE [Business_Attributes] ADD CONSTRAINT [AttToBus] FOREIGN KEY ([AttributeID]) REFERENCES [Attribute] ([ID]) ON UPDATE NO ACTION ON DELETE NO ACTION
go



ALTER TABLE [Business_Category] ADD CONSTRAINT [BusToCat] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]) ON UPDATE NO ACTION ON DELETE NO ACTION
go



ALTER TABLE [Business_Category] ADD CONSTRAINT [CatToBus] FOREIGN KEY ([CategoryID]) REFERENCES [Category] ([ID]) ON UPDATE NO ACTION ON DELETE NO ACTION
go



ALTER TABLE [Parking_Attributes] ADD CONSTRAINT [BusToPark] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]) ON UPDATE NO ACTION ON DELETE NO ACTION
go



ALTER TABLE [Business_Address] ADD CONSTRAINT [BusToAdd] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]) ON UPDATE NO ACTION ON DELETE NO ACTION
go



ALTER TABLE [CheckIn] ADD CONSTRAINT [BusToChk] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]) ON UPDATE NO ACTION ON DELETE NO ACTION
go



ALTER TABLE [CheckIn] ADD CONSTRAINT [TimeChkIn] FOREIGN KEY ([Time_Dim_TimeKey]) REFERENCES [Time_Dimension] ([TimeKey]) ON UPDATE NO ACTION ON DELETE NO ACTION
go



ALTER TABLE [User_Friends] ADD CONSTRAINT [UserToFrnd] FOREIGN KEY ([UserID]) REFERENCES [User] ([UserID]) ON UPDATE NO ACTION ON DELETE NO ACTION
go



ALTER TABLE [Review] ADD CONSTRAINT [BusToRev] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]) ON UPDATE NO ACTION ON DELETE NO ACTION
go



ALTER TABLE [Tip] ADD CONSTRAINT [UsrToTip] FOREIGN KEY ([User_ID]) REFERENCES [User] ([UserID]) ON UPDATE NO ACTION ON DELETE NO ACTION
go



ALTER TABLE [Tip] ADD CONSTRAINT [BusToTip] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]) ON UPDATE NO ACTION ON DELETE NO ACTION
go



ALTER TABLE [Elite_Years] ADD CONSTRAINT [UserToEYears] FOREIGN KEY ([UserID]) REFERENCES [User] ([UserID]) ON UPDATE NO ACTION ON DELETE NO ACTION
go



ALTER TABLE [CheckIn] ADD CONSTRAINT [DateChkIn] FOREIGN KEY ([Date_Dim_DateID]) REFERENCES [Date_Dimension] ([DateID]) ON UPDATE NO ACTION ON DELETE NO ACTION
go



ALTER TABLE [BusinessHours] ADD CONSTRAINT [Business_to_BusinessHours_Relationship] FOREIGN KEY ([BusinessID]) REFERENCES [Business] ([ID]) ON UPDATE NO ACTION ON DELETE NO ACTION
go



ALTER TABLE [BusinessHours] ADD CONSTRAINT [OpeningHours_Relationship] FOREIGN KEY ([OpeningHours]) REFERENCES [Time_Dimension] ([TimeKey]) ON UPDATE NO ACTION ON DELETE NO ACTION
go



ALTER TABLE [BusinessHours] ADD CONSTRAINT [ClosingHours_Relationship] FOREIGN KEY ([ClosingHours]) REFERENCES [Time_Dimension] ([TimeKey]) ON UPDATE NO ACTION ON DELETE NO ACTION
go



ALTER TABLE [BusinessHours] ADD CONSTRAINT [WeekDay_Relationship] FOREIGN KEY ([WeekDay_ID]) REFERENCES [WeekDay_Dimension] ([WeekDay_ID]) ON UPDATE NO ACTION ON DELETE NO ACTION
go



ALTER TABLE [User] ADD CONSTRAINT [YelpingSince_Relationship] FOREIGN KEY ([YelpingSince]) REFERENCES [Date_Dimension] ([DateID]) ON UPDATE NO ACTION ON DELETE NO ACTION
go



ALTER TABLE [Review] ADD CONSTRAINT [UserReview_Relationship] FOREIGN KEY ([UserID]) REFERENCES [User] ([UserID]) ON UPDATE NO ACTION ON DELETE NO ACTION
go



ALTER TABLE [Tip] ADD CONSTRAINT [DateTip_Relationship] FOREIGN KEY ([DateID]) REFERENCES [Date_Dimension] ([DateID]) ON UPDATE NO ACTION ON DELETE NO ACTION
go



ALTER TABLE [User_Friends] ADD CONSTRAINT [Usertof2] FOREIGN KEY ([FriendID]) REFERENCES [User] ([UserID]) ON UPDATE NO ACTION ON DELETE NO ACTION
go

ALTER TABLE Review
ADD CONSTRAINT CHK_Rating CHECK (Ratings >=0 AND Ratings <= 5)
go


