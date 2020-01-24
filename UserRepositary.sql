CREATE TABLE REPOSITARY(
UserId VARCHAR(18) NOT NULL PRIMARY KEY,
password VARCHAR(18) NOT NULL,
MailId VARCHAR(20) NOT NULL UNIQUE,
PhoneNumber VARCHAR(13) NOT NULL,
RoleOfMemeber VARCHAR(5) NOT NULL
)
CREATE TABLE ProductCatogery(
productName VARCHAR(18) NOT NULL PRIMARY KEY,
productRate NUMERIC(10) NOT NULL
)



CREATE PROCEDURE AdminProcedure
@UserId VARCHAR(18),
@password VARCHAR(18),
@MailId VARCHAR(20),
@PhoneNumber VARCHAR(13),
@RoleOfMemeber VARCHAR(5),
@Action numeric(2)
AS
	BEGIN
		IF @Action=1 AND @RoleOfMemeber='Admin'
			BEGIN
				INSERT INTO REPOSITARY(UserId,password,MailId,PhoneNumber,RoleOfMemeber)VALUES (@UserId,@password,@MailId,@PhoneNumber,@RoleOfMemeber) 
			END
		IF @Action=1 AND @RoleOfMemeber='User'
			BEGIN
				INSERT INTO REPOSITARY(UserId,password,MailId,PhoneNumber,RoleOfMemeber)VALUES (@UserId,@password,@MailId,@PhoneNumber,@RoleOfMemeber) 
			END
	END
CREATE PROCEDURE UserProcedure
@UserId VARCHAR(18),
@password VARCHAR(18),
@MailId VARCHAR(20),
@PhoneNumber VARCHAR(13),
@RoleOfMemeber VARCHAR(5),
@Action numeric(2)
AS
	BEGIN
		IF @Action=1 AND @RoleOfMemeber='User'
			BEGIN
				INSERT INTO REPOSITARY(UserId,password,MailId,PhoneNumber,RoleOfMemeber)VALUES (@UserId,@password,@MailId,@PhoneNumber,@RoleOfMemeber) 
			END

End
CREATE PROCEDURE Select_AdminProcedure
@UserId VARCHAR(18),
@password VARCHAR(18),
@Action numeric(2),
@RoleOfMemeber VARCHAR(5)
AS
	BEGIN
		IF @Action=2 AND @RoleOfMemeber='Admin'
			BEGIN
				SELECT UserId,password FROM REPOSITARY WHERE UserId=@UserId AND password=@password
			END
	END

CREATE PROCEDURE Select_UserProcedures
@UserId VARCHAR(18),
@password VARCHAR(18),
@Action numeric(2),
@RoleOfMemeber VARCHAR(5)
AS
	BEGIN
		IF @Action=2 AND @RoleOfMemeber='User'
			BEGIN
				SELECT UserId,password FROM REPOSITARY WHERE UserId=@UserId AND password=@password
			END
	END

DROP TABLE REPOSITARY
DROP PROCEDURE AdminProcedure
DROP PROCEDURE Select_UserProcedures
SELECT UserId,password,RoleOfMemeber FROM REPOSITARY
-------------------------------------------------------------------------------------------------------------------
CREATE PROCEDURE PRODUCTS
@productName VARCHAR(18),
@productRate NUMERIC(10),
@Action NUMERIC(1)
AS
	BEGIN
		IF @Action=1
			BEGIN
				INSERT INTO ProductCatogery(productName,productRate) VALUES(@productName,@productRate)
			END
	END
 
	
