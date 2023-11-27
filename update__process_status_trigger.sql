USE [FLOORDB]
GO

/****** Object:  Trigger [dbo].[update__process_status_trigger]    Script Date: 11/27/2023 6:21:32 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO









CREATE TRIGGER [dbo].[update__process_status_trigger] ON [dbo].[TBPROCESS]
AFTER UPDATE
AS
BEGIN
SET NOCOUNT ON;
 DECLARE @STATUS VARCHAR(10);
 DECLARE @TABLENAME VARCHAR(30);
 DECLARE @ID_PROCESS INT;
 DECLARE @NEW_ID_ORDER INT;
 DECLARE @NEW_ID_ORDER_ITEM INT;
 DECLARE @CREATED BIT;

 SET @CREATED = 0;

 SET @STATUS = '';
 SET @TABLENAME = '';
 SET @ID_PROCESS = 0;
 SET @NEW_ID_ORDER = 0;
 SET @NEW_ID_ORDER_ITEM = 0;
 
 -- TBPROCESS_ITEM FOR CURSOR
 DECLARE @ID_PROCESS_ITEM INT;
 DECLARE @TABLENAMEITEM VARCHAR(30);
 DECLARE @ID_PROCESSITEM INT;
 DECLARE @ID_PRICELIST INT;
 DECLARE @ID_PRODUCT INT;
 DECLARE @ROOM VARCHAR(50);
 DECLARE @QTY NUMERIC(15,2);
 DECLARE @RATE NUMERIC(15,2);
 DECLARE @AMOUT NUMERIC(15,2);
 DECLARE @ID_USER INT;
 DECLARE @ADD_DATE DATETIME; 
 DECLARE @DATE_PROCESS DATETIME;
 DECLARE @WIDTH FLOAT;
 DECLARE @HEIGHT FLOAT;
 DECLARE @TOTALAREA FLOAT;
 DECLARE @COST_VALUE FLOAT;
 DECLARE @REQ_PURCHASE_ORDER CHAR(1); 
 DECLARE @DIF_TOTALAREA FLOAT;

 SET @DATE_PROCESS = GETDATE()

 SET @ID_PROCESS_ITEM = 0;
 SET @ID_PROCESSITEM = 0;

 
---- TERMS ----
													
DECLARE @NUM_DAYS INT;
DECLARE @DATE_DUE DATETIME;
DECLARE @VALUE NUMERIC(15,2);
DECLARE @NEW_ID_TERM INT;
DECLARE @TABLEORDER VARCHAR(30);

 
 SET @STATUS = (select status from inserted)
 SET @TABLENAME = (SELECT TABLENAME FROM inserted)
 SET @ID_PROCESS = (SELECT ID_PROCESS FROM inserted)

                             SET @CREATED = (SELECT COUNT(1) AS TOTAL FROM TBPROCESS WHERE TABLENAME = 'TBORDER' AND ID_ORIGEN = @ID_PROCESS)
 
                             --------------------- ESTIMATE -> ORDER ------------------------------

							 IF ((@TABLENAME = 'TBESTIMATE') AND (@CREATED = 0))
							 BEGIN
								
									 IF UPPER(@STATUS) =  'ACCEPTED' 
									 BEGIN

									 	 SET @NEW_ID_ORDER = (SELECT VALUE+1 FROM TBKEYS WHERE TABLENAME = 'TBORDER')

										 UPDATE TBKEYS
										 SET VALUE = @NEW_ID_ORDER
										 WHERE TABLENAME = 'TBORDER'

   
										INSERT INTO TBPROCESS (
										[ID_PROCESS],
										[TABLENAME],
										[ID_COMPANY],
										[DT_PROCESS] ,
										[DT_PROCESS_VALID],
										[DT_SHIPPING],
										[ID_CONTRACTORS],
										[CUSTOMER_NAME],
										[CUSTOMER_PHONE],
										[CUSTOMER_EMAIL],
										[ADDRESS1],
										[ZIPCODE],
										[ST] ,
										[CITY] ,
										[COUNTY],
										[PONUMBER],
										[COMMENTS],
										[SUBTOTAL],
										[PERCENT_DISCOUNT],
										[DISCOUNT] ,
										[TAX] ,
										[SHIPPING],
										[TOTAL] ,
										[ID_USER] ,
										[ADD_DATE] ,
										[ID_CUSTOMER] ,
										[ID_ORIGEN],
										STATUS )
										SELECT @NEW_ID_ORDER,
										'TBORDER',
										ID_COMPANY,
										@DATE_PROCESS ,
										GETDATE(),
										DT_SHIPPING,
										ID_CONTRACTORS,
										CUSTOMER_NAME,
										CUSTOMER_PHONE,
										CUSTOMER_EMAIL,
										ADDRESS1,
										ZIPCODE,
										ST ,
										CITY ,
										COUNTY,
										PONUMBER,
										COMMENTS,
										SUBTOTAL,
										PERCENT_DISCOUNT,
										DISCOUNT ,
										TAX ,
										SHIPPING,
										TOTAL ,
										ID_USER ,
										GETDATE() ,
										ID_CUSTOMER ,
										@ID_PROCESS,
										'Pending'
										FROM TBPROCESS 
										WHERE ID_PROCESS = @ID_PROCESS and TABLENAME = 'TBESTIMATE'


											-- PROCESS_ITEM
											SET @TABLENAMEITEM = 'TBORDER_ITEM';
											

   											DECLARE CR_TBPROCESS_ITEM CURSOR FOR 
											SELECT  ID_PRICELIST,
													ID_PRODUCT,
													ROOM,
													QTY,
													RATE,
													AMOUT,
													ID_USER,
													WIDTH,
													HEIGHT,
													TOTALAREA,
                                                    REQ_PURCHASE_ORDER,
													DIF_TOTALAREA
								
											FROM TBPROCESS_ITEM
											WHERE ID_PROCESS = @ID_PROCESS AND TABLENAME = 'TBESTIMATE_ITEM'

											OPEN CR_TBPROCESS_ITEM;
			  
											FETCH NEXT FROM CR_TBPROCESS_ITEM INTO  @ID_PRICELIST, @ID_PRODUCT, @ROOM, @QTY, @RATE, @AMOUT, @ID_USER, @WIDTH, @HEIGHT, @TOTALAREA, @REQ_PURCHASE_ORDER, @DIF_TOTALAREA
			
											WHILE @@FETCH_STATUS = 0  
											BEGIN  
				

												 SET @NEW_ID_ORDER_ITEM = (SELECT VALUE+1 FROM TBKEYS WHERE TABLENAME = 'TBORDER_ITEM')

												 UPDATE TBKEYS
												 SET VALUE = @NEW_ID_ORDER_ITEM
												 WHERE TABLENAME = 'TBORDER_ITEM'

						
													INSERT INTO TBPROCESS_ITEM (
															ID_PROCESS,
															ID_PROCESS_ITEM,
															TABLENAME,
															ID_PRICELIST,
															ID_PRODUCT,
															ROOM,
															QTY,
															RATE,
															AMOUT,
															ID_USER,
															WIDTH,
															HEIGHT,
															TOTALAREA,
														    REQ_PURCHASE_ORDER, 
															DIF_TOTALAREA,
															ADD_DATE)
													VALUES ( @NEW_ID_ORDER, @NEW_ID_ORDER_ITEM, @TABLENAMEITEM , @ID_PRICELIST, @ID_PRODUCT, @ROOM, @QTY, @RATE,@AMOUT, @ID_USER,  @WIDTH, @HEIGHT, @TOTALAREA, @REQ_PURCHASE_ORDER, @DIF_TOTALAREA, GETDATE() )
				

												  FETCH NEXT FROM CR_TBPROCESS_ITEM INTO @ID_PRICELIST, @ID_PRODUCT, @ROOM, @QTY, @RATE,@AMOUT, @ID_USER, @WIDTH, @HEIGHT, @TOTALAREA, @REQ_PURCHASE_ORDER, @DIF_TOTALAREA
											END 

											CLOSE CR_TBPROCESS_ITEM  
											DEALLOCATE CR_TBPROCESS_ITEM




											---- TERMS ----

																
											SET @TABLEORDER = 'TBORDER'

   											DECLARE CR_TERM CURSOR FOR 
											SELECT  NUM_DAYS,
													DATE_DUE,
													VALUE,
													ID_USER
											FROM TBTERMS
											WHERE ID_PROCESS = @ID_PROCESS AND TABLENAME = 'TBESTIMATE'

											OPEN CR_TERM;
			  
											FETCH NEXT FROM CR_TERM INTO  @NUM_DAYS, @DATE_DUE, @VALUE, @ID_USER
			
											WHILE @@FETCH_STATUS = 0  
											BEGIN  
				

													INSERT INTO TBTERMS(
															TABLENAME,
															ID_PROCESS,
															DT_PROCESS,
															NUM_DAYS,
															DATE_DUE,
															VALUE,
															ADD_DATE,
															ID_USER)
													VALUES ( @TABLEORDER, @NEW_ID_ORDER , @DATE_PROCESS, @NUM_DAYS, @DATE_DUE, @VALUE, GETDATE(), @ID_USER )
				

												  FETCH NEXT FROM CR_TERM INTO @NUM_DAYS, @DATE_DUE, @VALUE, @ID_USER
											END 

											CLOSE CR_TERM  
											DEALLOCATE CR_TERM


									 END -- ACCEPETED

                             END -- TBESTIMATE

							 ----------------------  ORDER -> INVOICE --------------------------

                             SET @CREATED = (SELECT COUNT(1) AS TOTAL FROM TBPROCESS WHERE TABLENAME = 'TBINVOICE' AND ID_ORIGEN = @ID_PROCESS)
 
							 IF ((@TABLENAME = 'TBORDER') AND (@CREATED = 0))
							 BEGIN
		
									 IF UPPER(@STATUS) =  'ACCEPTED' 
									 BEGIN
  	 							        
										SET @NEW_ID_ORDER = (SELECT VALUE+1 FROM TBKEYS WHERE TABLENAME = 'TBINVOICE')

									    UPDATE TBKEYS
									    SET VALUE = @NEW_ID_ORDER
									    WHERE TABLENAME = 'TBINVOICE'

   
										INSERT INTO TBPROCESS (
										[ID_PROCESS],
										[TABLENAME],
										[ID_COMPANY],
										[DT_PROCESS] ,
										[DT_PROCESS_VALID],
										[DT_SHIPPING],
										[ID_CONTRACTORS],
										[CUSTOMER_NAME],
										[CUSTOMER_PHONE],
										[CUSTOMER_EMAIL],
										[ADDRESS1],
										[ZIPCODE],
										[ST] ,
										[CITY] ,
										[COUNTY],
										[PONUMBER],
										[COMMENTS],
										[SUBTOTAL],
										[PERCENT_DISCOUNT],
										[DISCOUNT] ,
										[TAX] ,
										[SHIPPING],
										[TOTAL] ,
										[ID_USER] ,
										[ADD_DATE] ,
										[ID_CUSTOMER] ,
										[ID_ORIGEN],
										STATUS )
										SELECT @NEW_ID_ORDER,
										'TBINVOICE',
										ID_COMPANY,
										@DATE_PROCESS ,
										GETDATE(),
										DT_SHIPPING,
										ID_CONTRACTORS,
										CUSTOMER_NAME,
										CUSTOMER_PHONE,
										CUSTOMER_EMAIL,
										ADDRESS1,
										ZIPCODE,
										ST ,
										CITY ,
										COUNTY,
										PONUMBER,
										COMMENTS,
										SUBTOTAL,
										PERCENT_DISCOUNT,
										DISCOUNT ,
										TAX ,
										SHIPPING,
										TOTAL ,
										ID_USER ,
										GETDATE() ,
										ID_CUSTOMER ,
										@ID_PROCESS,
										'Pending'
										FROM TBPROCESS 
										WHERE ID_PROCESS = @ID_PROCESS and TABLENAME = 'TBORDER'


											-- PROCESS_ITEM TBINVOICE
											SET @TABLENAMEITEM = 'TBINVOICE_ITEM';

   											DECLARE CR_TBPROCESS_ITEM CURSOR FOR 
											SELECT  ID_PRICELIST,
													ID_PRODUCT,
													ROOM,
													QTY,
													RATE,
													AMOUT,
													ID_USER,
													WIDTH,
													HEIGHT,
													TOTALAREA
											FROM TBPROCESS_ITEM
											WHERE ID_PROCESS = @ID_PROCESS AND TABLENAME = 'TBORDER_ITEM'

											OPEN CR_TBPROCESS_ITEM;
			  
											FETCH NEXT FROM CR_TBPROCESS_ITEM INTO  @ID_PRICELIST, @ID_PRODUCT, @ROOM, @QTY, @RATE, @AMOUT, @ID_USER, @WIDTH, @HEIGHT, @TOTALAREA
			
											WHILE @@FETCH_STATUS = 0  
											BEGIN  
				

												 SET @NEW_ID_ORDER_ITEM = (SELECT VALUE+1 FROM TBKEYS WHERE TABLENAME = 'TBINVOICE_ITEM')

												 UPDATE TBKEYS
												 SET VALUE = @NEW_ID_ORDER_ITEM
												 WHERE TABLENAME = 'TBINVOICE_ITEM'

													INSERT INTO TBPROCESS_ITEM (
															ID_PROCESS,
															ID_PROCESS_ITEM,
															TABLENAME,
															ID_PRICELIST,
															ID_PRODUCT,
															ROOM,
															QTY,
															RATE,
															AMOUT,
															ID_USER,
															WIDTH,
															HEIGHT,
															TOTALAREA,
															ADD_DATE)
													VALUES ( @NEW_ID_ORDER, @NEW_ID_ORDER_ITEM, @TABLENAMEITEM , @ID_PRICELIST, @ID_PRODUCT, @ROOM, @QTY, @RATE,@AMOUT, @ID_USER,  @WIDTH, @HEIGHT, @TOTALAREA, GETDATE() )
				
				                                     SET @COST_VALUE = (SELECT COST_VALUE FROM TBPRODUCT WHERE ID_PRODUCT = @ID_PRODUCT)
				
											         INSERT INTO TBINVENTORY ( ID_PRODUCT,         QTY,  WIDTH,  HEIGHT,           TOTALAREA,        PRICE,                 TOTALPRICE, DT_MOVIMENT, ID_USER)
											         VALUES                 ( @ID_PRODUCT, (@QTY * -1), @WIDTH,  @HEIGHT,  (@TOTALAREA * -1),  @COST_VALUE, (@TOTALAREA * @COST_VALUE),   GETDATE(), @ID_USER)


												  FETCH NEXT FROM CR_TBPROCESS_ITEM INTO @ID_PRICELIST, @ID_PRODUCT, @ROOM, @QTY, @RATE,@AMOUT, @ID_USER, @WIDTH, @HEIGHT, @TOTALAREA
											END 

											CLOSE CR_TBPROCESS_ITEM  
											DEALLOCATE CR_TBPROCESS_ITEM




											---- TERMS ----

																
											SET @TABLEORDER = 'TBINVOICE'

   											DECLARE CR_TERM CURSOR FOR 
											SELECT  NUM_DAYS,
													DATE_DUE,
													VALUE,
													ID_USER
											FROM TBTERMS
											WHERE ID_PROCESS = @ID_PROCESS AND TABLENAME = 'TBORDER'

											OPEN CR_TERM;
			  
											FETCH NEXT FROM CR_TERM INTO  @NUM_DAYS, @DATE_DUE, @VALUE, @ID_USER
			
											WHILE @@FETCH_STATUS = 0  
											BEGIN  
													INSERT INTO TBTERMS(
															TABLENAME,
															ID_PROCESS,
															DT_PROCESS,
															NUM_DAYS,
															DATE_DUE,
															VALUE,
															ADD_DATE,
															ID_USER)
													VALUES ( @TABLEORDER, @NEW_ID_ORDER , @DATE_PROCESS, @NUM_DAYS, @DATE_DUE, @VALUE, GETDATE(), @ID_USER )


												  FETCH NEXT FROM CR_TERM INTO @NUM_DAYS, @DATE_DUE, @VALUE, @ID_USER
											END 

											CLOSE CR_TERM  
											DEALLOCATE CR_TERM


									 END -- ACCEPETED

                             END -- TBEORDER


END







GO


