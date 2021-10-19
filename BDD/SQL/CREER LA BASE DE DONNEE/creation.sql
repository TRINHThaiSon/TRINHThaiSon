CREATE USER 'util1'@'194.153.88.142' IDENTIFIED BY 'ThaiSon$';
CREATE USER 'util2'@'194.153.88.142' IDENTIFIED BY 'ThaiSon$';
CREATE USER 'util3'@'194.153.88.142' IDENTIFIED BY 'ThaiSon$';
-- **************************grant privileges*********************************************
-- util1 doit pouvoir effectuer toutes les actions
GRANT ALL PRIVILEGES ON Inform_hotel.* TO 'util1'@'%'
IDENTIFIED BY 'ThaiSon$';

-- util2 ne peut que sélectionner les informations dans la base
GRANT select
ON Inform_hotel.*
TO util2
IDENTIFIED BY 'ThaiSon$';

-- util3 n'a aucun droit sur la base de données, sauf d'afficher la table station
GRANT select
ON Inform_hotel.Station
TO util3
IDENTIFIED BY 'ThaiSon$';

--supprime les trois users
DROP USER 'util1'@'123.45.67.89' ;
DROP USER 'util2'@'123.45.67.89' ;
DROP USER 'util3'@'123.45.67.89' ;
