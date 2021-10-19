-- 1.Liste de contacts français
SELECT * FROM suppliers
WHERE country = 'France'

-- List de Customers francais
SELECT CompanyName AS Société, ContactName AS Contact, ContactTitle AS Fonction, Phone AS Téléphone FROM customers
WHERE country = 'France'

-- ****************************************2.PRODUITS VENDUS PAR LE FOURNISSEUR "EXOTIC LIQUIDS"*************************************************************************************************
SELECT ProductName AS Produit, UnitPrice AS Prix FROM products
JOIN suppliers ON suppliers.SupplierID = products.SupplierID
WHERE CompanyName = 'Exotic Liquids'

-- ****************************************3.NOMBRE DE PRODUITS VENDUS PAR LES FOURNISSEURS FRANCAIS DANS L'ORDRE DECROISSANT*********************************************************************
SELECT CompanyName AS 'Fournisseur', COUNT(ProductName) AS 'Nbre produit' FROM products
JOIN suppliers ON products.SupplierID = suppliers.SupplierID
WHERE Country = 'France'
GROUP BY CompanyName
ORDER BY COUNT(ProductName) desc

-- ****************************************4.LISTE DES CLIENTS FRANCAIS AYANT PLUS DE 10 COMMANDES************************************************************************************************
SELECT customers.CompanyName AS 'Client', COUNT(OrderID) AS 'Nbre commandes' FROM customers
JOIN orders ON customers.CustomerID = orders.CustomerID
WHERE Country = 'France'
GROUP BY CompanyName
HAVING COUNT(OrderID) >10

-- ****************************************5.LISTE DES CLIENTS  AYANT UN CHIFFRE D'AFFAIRES > 30000************************************************************************************************

SELECT CompanyName AS 'Clients', SUM(UnitPrice*Quantity) AS 'CA', Country AS 'Pays' FROM customers
JOIN orders ON customers.CustomerID = orders.CustomerID
JOIN `order details` ON `order details`.OrderID = orders.OrderID
GROUP BY customers.CustomerID
HAVING SUM(UnitPrice*Quantity) > 30000
ORDER BY SUM(UnitPrice*Quantity) desc

-- ****************************************6 – Liste des pays dont les clients ont passé commande de produits fournis par "Exotic Liquids"**********************************************************

SELECT DISTINCT (customers.Country) AS 'Pays' FROM customers
JOIN orders ON customers.CustomerID = orders.CustomerID
JOIN `order details` ON `order details`.OrderID = orders.OrderID
JOIN products ON products.ProductID = `order details`.ProductID
JOIN suppliers ON suppliers.SupplierID = products.SupplierID
WHERE suppliers.CompanyName LIKE 'Exotic Liquids'
ORDER BY customers.Country asc

-- ****************************************7 – MONTANT DE VENTS DE 1997******************************************************************************************************************************

SELECT SUM(UnitPrice*Quantity) AS 'Montant des ventes 1997' FROM `order details`
JOIN orders ON `order details`.OrderID = orders.OrderID
WHERE YEAR(OrderDate) = 1997

-- ****************************************8 – MONTANT DE VENTS DE 1997 MOIS PAR MOIS****************************************************************************************************************

SELECT MONTH(OrderDate) AS "MOIS", SUM(UnitPrice*Quantity) AS 'Montant des ventes 1997' FROM `order details`
JOIN orders ON `order details`.OrderID = orders.OrderID
WHERE YEAR(OrderDate) = 1997
GROUP BY MONTH(OrderDate);

-- ****************************************9 – Depuis quelle date le client « Du monde entier » n’a plus commandé ?**********************************************************************************

SELECT  OrderDate AS 'Date de dernière commande' FROM orders
JOIN customers ON customers.CustomerID = orders.CustomerID
WHERE customers.CompanyName LIKE 'Du monde entier'
ORDER BY OrderDate DESC LIMIT 1;

-- ****************************************10 – Quel est le délai moyen de livraison en jours ? ?*****************************************************************************************************

SELECT ROUND(AVG(DATEDIFF(ShippedDate, OrderDate)),0) AS 'Délai moyen de livraison en jours' FROM orders