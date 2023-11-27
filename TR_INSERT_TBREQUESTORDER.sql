USE [FLOORDB]
GO

/****** Object:  Trigger [dbo].[TR_INSERT_TBREQUESTORDER]    Script Date: 11/27/2023 6:21:16 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO






CREATE TRIGGER [dbo].[TR_INSERT_TBREQUESTORDER] ON [dbo].[TBPROCESS_ITEM]
AFTER INSERT, UPDATE
AS
BEGIN
 DECLARE @TABLENAME VARCHAR(30);
 DECLARE @ID_PROCESS INT;
 DECLARE @ID_PRODUCT INT;
 DECLARE @REQ_PURCHASE_ORDER CHAR(1);
 DECLARE @ID_USER INT;
 DECLARE @ID_COMPANY INT;
 DECLARE @ID_SUPPLIER INT;
 DECLARE @ID_CONTRACTOR INT;
 DECLARE @ESTIMATEDCOST FLOAT;
 DECLARE @QTY FLOAT;
 DECLARE @ID_PROCESS_ITEM INT;
 DECLARE @DIF_TOTALAREA FLOAT;

 DECLARE @EXIST INT;

 SET @TABLENAME  = (SELECT TABLENAME from inserted)
 SET @ID_PROCESS = (SELECT ID_PROCESS FROM inserted)
 SET @ID_PROCESS_ITEM = ( SELECT ID_PROCESS_ITEM FROM inserted)
 SET @ID_PRODUCT = (SELECT ID_PRODUCT FROM inserted)
 SET @DIF_TOTALAREA = (SELECT DIF_TOTALAREA  FROM inserted)
 SET @REQ_PURCHASE_ORDER = (SELECT REQ_PURCHASE_ORDER FROM inserted)
 SET @ID_USER = (SELECT ID_USER FROM inserted)
 SET @ID_COMPANY = (SELECT H.ID_COMPANY FROM  inserted i 
                    INNER JOIN  TBPROCESS H ON H.ID_PROCESS = I.ID_PROCESS 
					                       AND H.TABLENAME  = I.TABLENAME 
					WHERE H.TABLENAME = i.tablename 
					  AND H.ID_PROCESS = I.ID_PROCESS) 

 SET @ID_CONTRACTOR = (SELECT H.ID_CONTRACTORS FROM  inserted i 
                    INNER JOIN  TBPROCESS H ON H.ID_PROCESS = i.ID_PROCESS 
					                       AND H.TABLENAME  = i.TABLENAME 
					WHERE H.TABLENAME = i.tablename 
					  AND H.ID_PROCESS = i.ID_PROCESS) 

SET @ID_SUPPLIER = (SELECT P.ID_SUPPLIER FROM inserted I INNER JOIN TBPRODUCT P ON P.ID_PRODUCT = I.ID_PRODUCT)

SET @ESTIMATEDCOST = (SELECT ISNULL(IV.PRICE,0) AS PRICE
						FROM
						  inserted I
						  INNER JOIN TBINVENTORY  IV ON IV.ID_PRODUCT = I.ID_PRODUCT
						  INNER JOIN (SELECT ID_PRODUCT,  MAX(DT_MOVIMENT) AS MAIOR_DATA FROM TBINVENTORY GROUP BY ID_PRODUCT ) RECENTES
						        ON IV.ID_PRODUCT = RECENTES.ID_PRODUCT AND IV.DT_MOVIMENT = RECENTES.MAIOR_DATA)

SET @QTY = (SELECT TOTALAREA FROM inserted)


SET @EXIST = 0

    IF @REQ_PURCHASE_ORDER = 'Y'
	BEGIN
	
		SET @EXIST = (SELECT COUNT(1) FROM TBREQUESTORDER WHERE TABLENAME = @TABLENAME
					AND ID_PROCESS = @ID_PROCESS 
					AND ID_PROCESS_ITEM = @ID_PROCESS_ITEM  
					AND ID_PRODUCT = @ID_PRODUCT
					AND COUNTNEED <> @DIF_TOTALAREA )

        IF @EXIST <> 0
		BEGIN
   	           
			     DELETE FROM TBREQUESTORDER WHERE TABLENAME = @TABLENAME
					AND ID_PROCESS = @ID_PROCESS 
					AND ID_PROCESS_ITEM = @ID_PROCESS_ITEM  
					AND ID_PRODUCT = @ID_PRODUCT
					AND COUNTNEED <> @DIF_TOTALAREA;

				 INSERT INTO TBREQUESTORDER
						   ([id_company]
						   ,[id_contractor]
						   ,[req_date]
						   ,[tablename]
						   ,[id_process]
						   ,[id_process_item]
						   ,[id_user]
						   ,[id_supplier]
						   ,[id_product]
						   ,[countneed]
						   ,[estimatedcost]
						   ,[add_date]
						   ,[status])
					 VALUES
						   (@ID_COMPANY
						   ,@ID_CONTRACTOR
						   ,GETDATE()
						   ,@TABLENAME
						   ,@ID_PROCESS
						   ,@ID_PROCESS_ITEM
						   ,@ID_USER
						   ,@ID_SUPPLIER
						   ,@ID_PRODUCT
						   ,@DIF_TOTALAREA
						   ,@ESTIMATEDCOST
						   ,GETDATE()
						   ,'PENDING')
		

        END
		ELSE
		IF @EXIST = 0
		BEGIN

	     INSERT INTO TBREQUESTORDER
           ([id_company]
           ,[id_contractor]
           ,[req_date]
           ,[tablename]
           ,[id_process]
		   ,[id_process_item]
           ,[id_user]
           ,[id_supplier]
           ,[id_product]
           ,[countneed]
           ,[estimatedcost]
           ,[add_date]
           ,[status])
     VALUES
           (@ID_COMPANY
           ,@ID_CONTRACTOR
           ,GETDATE()
           ,@TABLENAME
           ,@ID_PROCESS
		   ,@ID_PROCESS_ITEM
           ,@ID_USER
           ,@ID_SUPPLIER
           ,@ID_PRODUCT
           ,@DIF_TOTALAREA
           ,@ESTIMATEDCOST
           ,GETDATE()
           ,'PENDING')



		END

	END
END


	








GO


