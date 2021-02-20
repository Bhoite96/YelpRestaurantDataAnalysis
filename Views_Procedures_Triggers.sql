
------------------------- Mutual Friends View ------------------
create view dbo.ViewMutualFriends 
as 
select u.FirstName as 'Friend1' , u1.FirstName as 'Mutual Friend' , u2.FirstName as 'Friend2' from dbo.User_Friends uf1
inner join dbo.User_Friends uf2 on uf1.FriendID = uf2.UserID
inner join dbo.[User] u on u.UserID = uf1.UserID
inner join dbo.[User] u1 on u1.UserID = uf1.FriendID
inner join dbo.[User] u2 on u2.UserID = uf2.FriendID
where uf1.UserID <> uf2.FriendID;

------------------ Ratings by Category ----------------------------
create view dbo.CategoryRatings
as 
Select c.Category, avg(b.Ratings) 'Average Ratings' from dbo.Category c
inner join dbo.Business_Category bc on c.ID = bc.CategoryID
inner join dbo.Business b on b.ID = bc.BusinessID
group by c.Category;

select * from dbo.CategoryRatings


Select * from dbo.ViewMutualFriends;


------------------------------ Stored Procedure to update review counts ------------------
CREATE PROC UpdateReviewCounts(@BusinessID_input varchar(50))
AS 
BEGIN
	DECLARE @ReviewCounts INT = 0;
	SELECT @ReviewCounts = COUNT(*) from  dbo.Review r where r.BusinessID = @BusinessID_input;
	Update dbo.Business set ReviewCount = @ReviewCounts where ID=@BusinessID_input;
END
GO


------------------------------ Trigger to call review counts update stored procedure ----------------------
CREATE TRIGGER ChangeReviewCountTrigger
ON dbo.Review
AFTER INSERT
AS
BEGIN
	DECLARE @BusinessID_input varchar(50);
	Select @BusinessID_input = i.BusinessID from inserted i;
	EXEC UpdateReviewCounts @BusinessID_input;
END


