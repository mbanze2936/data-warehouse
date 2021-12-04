--Q1 

SELECT c.name, CONCAT(c.addr1, " ", c.addr2) AS "Address",c.city,c.state,c.zip,hdr.invoiceID, hdr.saleDate, p.description, dtl.amt,dtl.qty
FROM CUSTOMER c
INNER JOIN invoicehdr hdr 
ON c.customerID = hdr.customerID
INNER JOIN invoicedtl dtl 
ON hdr.invoiceID = dtl.invoiceID
INNER JOIN product p 
ON dtl.prodID = p.prodID
WHERE c.customerID = 8;

--Q2

SELECT SUM(dtl.amt), YEAR(hdr.saleDate) AS 'YEAR', abbrev
FROM invoicedtl dtl
INNER JOIN invoicehdr hdr
ON hdr.invoiceID = dtl.invoiceID
INNER JOIN product p ON dtl.prodID = p.prodID
INNER JOIN prodtype pt ON p.prodtypeID = pt.prodtypeID
INNER JOIN businessunit b ON pt.BUID = b.BUID
GROUP BY YEAR(hdr.saleDate),b.BUID 
ORDER BY YEAR(hdr.saleDate) ASC;

