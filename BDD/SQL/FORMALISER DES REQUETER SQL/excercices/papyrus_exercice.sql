-- 1.Quelles sont les commandes du fournisseur 09120?
SELECT numfou, numcom FROM entcom
WHERE numfou = 09120
ORDER BY numcom ASC

-- 2.Afficher le code des fournisseurs pour lesquels des commandes ont été passées.
SELECT ligcom.numcom, entcom.numfou AS "LES fournisseurs avec commandes passées." FROM ligcom
JOIN entcom ON ligcom.numcom= entcom.numcom

-- 3.Afficher le nombre de commandes fournisseurs passées, et le nombre de fournisseur concernés.
SELECT COUNT(DISTINCT ligcom.numcom) AS 'le nombre de commandes passées',COUNT(DISTINCT entcom.numfou) AS 'le nombre de fournisseurs concernés' FROM ligcom
JOIN entcom ON ligcom.numcom= entcom.numcom


-- 4.Editer les produits ayant un stock inférieur ou égal au stock d'alerte et dont la quantité annuelle est inférieur est inférieure à1000 (informations à fournir : n° produit, libelléproduit, stock, stockactuel d'alerte, quantitéannuelle)
SELECT codart, libart, stkale, stkphy, qteann FROM produit
WHERE stkale >= stkphy AND qteann < 1000

-- 5.Quels sont les fournisseurs situés dans les départements 75 78 92 77 ? L’affichage (département, nom fournisseur) sera effectué par département décroissant, puis par ordre alphabétique

SELECT nomfou, posfou FROM fournis
WHERE posfou LIKE  '75___' OR posfou LIKE '92___' or posfou LIKE '78___' or posfou LIKE '77___'
ORDER BY posfou desc 
-- (par département décroissant)

SELECT nomfou, posfou FROM fournis
WHERE posfou LIKE  '75___' OR posfou LIKE '92___' or posfou LIKE '78___' or posfou LIKE '77___'
ORDER BY nomfou ASC
-- (puis par ordre alphabétique)

-- 6.Quelles sont les commandes passées au mois de mars et avril?
SELECT numcom,derliv FROM ligcom
WHERE derliv BETWEEN '2007-03-01' AND '2007-04-31'

-- 7.Quelles sont les commandes du jourqui ont des observations particulières ?(Affichage numéro de commande, date de commande)
SELECT numcom, datcom FROM entcom
WHERE length(obscom ) >0

-- 8.Listerle total de chaque commande par total décroissant (Affichage numéro de commande et total)
SELECT numcom, COUNT(numcom) FROM ligcom
GROUP BY numcom
ORDER BY COUNT(numcom) desc

-- 9.Lister les commandesdont le total est supérieur à 10000€; on exclura dans le calcul du total les articles commandés en quantité supérieure ou égale à 1000.(Affichage numéro de commande et total)
SELECT numcom, SUM(qteliv*priuni) FROM ligcom
WHERE qtecde > 1000
GROUP BY numcom
HAVING SUM(qteliv*priuni)>10000

-- 10.Lister les commandes par nom fournisseur (Afficher le nom du fournisseur, le numéro de commande et la date)
SELECT nomfou, numcom, datcom FROM entcom
INNER JOIN fournis
ON entcom.numfou = fournis.numfou
ORDER BY fournis.nomfou asc

-- 11.Sortir les produits des commandes ayant le mot "urgent' en observation?(Afficher le numéro de commande, le nom du fournisseur, le libellé du produit et le sous total= quantité commandée * Prix unitaire)

SELECT entcom.numcom, nomfou,codart,(qtecde*priuni) AS 'Le prix total' FROM entcom
JOIN ligcom ON ligcom.numcom = entcom.numcom
JOIN fournis ON entcom.numfou = fournis.numfou
WHERE entcom.obscom LIKE '%urgente%'

-- 12.Coder de 2manières différentes la requête suivante:Lister lenom desfournisseurs susceptibles de livrer au moins un article

-- (1ème manière)***************************************************************************************************************

SELECT nomfou, qteliv AS 'le nombre des articles livrées' FROM fournis
JOIN entcom ON fournis.numfou = entcom.numfou
JOIN ligcom ON entcom.numcom = ligcom.numcom
where qteliv >1
ORDER BY qteliv desc

-- (2ème manière)****************************************************************************************************************

SSELECT nomfou FROM ligcom
JOIN entcom ON entcom.numcom = ligcom.numcom
JOIN fournis ON entcom.numfou = fournis.numfou
WHERE qteliv >1

-- 13.Coder de 2 manières différentes la requête suivanteLister les commandes (Numéro et date) dont le fournisseur est celui de la commande 70210
SELECT ligcom.numcom, derliv FROM ligcom
JOIN entcom ON entcom.numcom = ligcom.numcom
WHERE numfou IN (SELECT numfou FROM entcom
WHERE numcom = 70210)

-- 14.Dans les articles susceptibles d’être vendus, lister les articles moins chers (basés sur Prix1) que le moins cher des rubans (article dont le premier caractère commence par R). On affichera le libellé de l’article et prix1
SELECT produit.codart, libart, prix1 FROM vente
JOIN produit ON vente.codart = produit.codart
WHERE prix1 <(SELECT MIN(prix1) FROM vente
WHERE codart LIKE 'R%')

-- 15.Editer la liste des fournisseurs susceptibles de livrer les produits dont le stock est inférieur ou égal à 150 % du stock d'alerte. La liste est triée par produit puis fournisseur
SELECT vente.numfou, produit.codart, stkale, stkphy FROM produit
JOIN vente on vente.codart = produit.codart
JOIN fournis ON fournis.numfou = vente.numfou
WHERE stkphy <= 1.5*stkale
ORDER BY codart DESC, nomfou asc

-- 16.Éditer la liste des fournisseurs susceptibles de livrer les produit dont le stock est inférieur ou égal à 150 % du stock d'alerte et un délai de livraison d'au plus 30 jours. La liste est triée par fournisseur puis produit
SELECT vente.numfou, produit.codart, stkale, stkphy FROM produit
JOIN vente on vente.codart = produit.codart
JOIN fournis ON fournis.numfou = vente.numfou
WHERE stkphy <= 1.5*stkale AND delliv > 30
ORDER BY numfou ASC, codart asc

-- 17.Avec le même type de sélection que ci-dessus, sortir un total des stocks par fournisseur trié par total décroissant
SELECT vente.numfou, SUM(stkale), SUM(stkphy) FROM produit
JOIN vente ON vente.codart = produit.codart
GROUP BY numfou
having vente.numfou IN (SELECT vente.numfou FROM produit
JOIN vente on vente.codart = produit.codart
JOIN fournis ON fournis.numfou = vente.numfou
WHERE stkphy <= 1.5*stkale)
ORDER BY SUM(stkphy) desc

-- 18.En fin d'année, sortir la liste des produits dontla quantité réellement commandée dépasse 90% de la quantité annuelleprévue.
SELECT produit.codart, SUM(qteliv), qteann FROM produit
JOIN ligcom ON produit.codart = ligcom.codart
GROUP BY codart
HAVING SUM(qteliv) > 0.9*qteann

-- 19.Calculer le chiffre d'affaire par fournisseur pour l'année 93 sachant que les prix indiqués sont hors taxes et que le taux de TVA est 20%.
SELECT numfou, SUM(priuni*qteliv*1.2) AS "Chiffre d'affaire" FROM ligcom
JOIN entcom ON entcom.numcom = ligcom.numcom
GROUP BY numfou

-- **************************************LES BESOINS DE MISE A JOUR******************************************************************************************************************

-- 1.Application d'une augmentation de tarif de 4% pour le prix 1, 2% pour le prix2 pour le fournisseur 9180



-- 3.Mettre à jour le champ obscom en positionnant '*****' pour toutes les commandes dont le fournisseur a un indice de satisfaction <5
UPDATE entcom
SET obscom = '******'
WHERE entcom.numfou IN (SELECT numfou FROM fournis
WHERE satisf < 5)

-- 4.Suppression du produit I110
DELETE FROM produit
WHERE codart = 'I110'