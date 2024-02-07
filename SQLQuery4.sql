-- 1) Numero totale degli ordini
-- SELECT Count(*) AS NumeroTotaleOrdini FROM Orders

-- 2) Numero totale di clienti
-- SELECT Count(*) AS NumeroTotaleClienti FROM Employees

-- 3) Numero totale di clienti che abitano a Londra
-- SELECT COUNT(*) AS ClientiLondra FROM Employees WHERE City = 'London'

-- 4) La media aritmetica del costo del trasporto di tutti gli ordini effettuati
-- SELECT AVG(Freight) AS MediaCostiTrasportoOrdiniEffettuati FROM Orders

-- 5) La media aritmetica del costo del trasporto dei soli ordini effettuati dal cliente "BOTTM"
-- SELECT AVG(Freight) AS MediaCostiTrasportoOrdiniEffettuatiBOTTM FROM Orders WHERE CustomerID = 'BOTTM'

-- 6) Totale delle spese di trasporto effettuate raggruppate per id cliente
-- SELECT EmployeeID, Count(*) AS TotaleSpeseTrasportoEffettuate FROM Orders GROUP BY EmployeeID ORDER BY TotaleSpeseTrasportoEffettuate

-- 7) Numero totale di clienti raggruppati per città di appartenenza
-- SELECT City, COUNT(*) AS ClientiCittaAppartenenza FROM Employees GROUP BY City ORDER BY ClientiCittaAppartenenza 

-- 8) Totale di UnitPrice * Quantity raggruppato per ogni ordine
-- SELECT OrderID, ProductID, UnitPrice, Quantity, (UnitPrice * Quantity) AS PrezzoUnitaXQuantita FROM OrderDetails GROUP BY OrderID, ProductID, UnitPrice, Quantity

-- 9) Totale di UnitPrice * Quantity solo dell'ordine con id=10248
-- SELECT ProductID, UnitPrice, Quantity, (UnitPrice * Quantity) AS PrezzoUnitaXQuantita FROM OrderDetails WHERE OrderID = 10248

-- 10) Numero di prodotti censiti per ogni categoria
-- SELECT CategoryID, COUNT(*) AS NumeroProdottiPerCategoria FROM Products GROUP BY CategoryID ORDER BY NumeroProdottiPerCategoria DESC

-- 11) Numero totale di ordini raggruppati per paese di spedizione (ShipCountry)
-- SELECT ShipCountry, COUNT(*) AS OrdiniTotaliPerPaese FROM Orders GROUP BY ShipCountry ORDER BY OrdiniTotaliPerPaese DESC

-- 12) La media del costo del trasporto raggruppati per paese di spedizione (ShipCountry)
-- SELECT ShipCountry, AVG(Freight) AS MediaCostoTrasportoPerPaese FROM Orders GROUP BY ShipCountry ORDER BY MediaCostoTrasportoPerPaese DESC
