SELECT NAMEBUSINESS AS MANUFACTORY, 
	   PRODUCT_STYLE,
	   COLOR,
	   COLOR_NAME,
	   PRODUCT_STYLE_NAME,
	   [PRODUCT TYPE],
	   [PRODUCT STYLE],
	   [SECTION],
	   [POSITION],
	   [100% FLOOR OF C SHOWROOM] , [100% FULLER SHOWROOM], [95% FULLER WAREHOUSE], TOTALAREA
FROM (
		SELECT  A.NAME AS PRICETABLE, PRICE_FINAL, B.ID_PRODUCT, C.PRODUCT_STYLE_NAME, ISNULL(SUM(D.TOTALAREA),0) as TOTALAREA,
		E.NAMEBUSINESS, 
		C.PRODUCT_STYLE,
	    C.COLOR,
	    C.COLOR_NAME,
		F.DESCRIPTION AS [PRODUCT TYPE],
		G.DESCRIPTION AS [PRODUCT STYLE],
		C.LOC_SECTION AS [SECTION],
		C.LOC_POSITION AS [POSITION]
		FROM TBPRICELIST A
		INNER JOIN TBPRICEITEM B ON B.ID_PRICELIST = A.ID_PRICELIST 
		INNER JOIN TBPRODUCT C ON C.ID_PRODUCT = B.ID_PRODUCT 
		INNER JOIN TBINVENTORY D ON D.ID_PRODUCT = B.ID_PRODUCT 
		INNER JOIN TBSUPPLIER E ON E.ID_SUPPLIER = C.ID_SUPPLIER
	    LEFT OUTER JOIN TBTYPEBRAND F ON F.ID_TYPEBRAND = C.ID_TYPE 
        LEFT OUTER JOIN TBTYPEBRAND G ON G.ID_TYPEBRAND = C.STYLE 

		WHERE C.ACTIVE = 'Y' AND A.ID_COMPANY = 1
		GROUP BY C.LOC_SECTION,	C.LOC_POSITION,	F.DESCRIPTION,
		G.DESCRIPTION,		C.PRODUCT_STYLE,
	    C.COLOR,
	    C.COLOR_NAME, E.NAMEBUSINESS, D.ID_PRODUCT, A.NAME , PRICE_FINAL, B.ID_PRODUCT, C.PRODUCT_STYLE_NAME
) SQ

 PIVOT  
  (
   SUM(PRICE_FINAL)  
   FOR PRICETABLE IN ([100% FLOOR OF C SHOWROOM] , [100% FULLER SHOWROOM], [95% FULLER WAREHOUSE])
  ) AS PIVOTTABLE


  SELECT * FROM TBPRICELIST WHERE ACTIVE = 'Y' AND EXPIREDDATE  > GETDATE()


  select convert(varchar, getdate(),103)




