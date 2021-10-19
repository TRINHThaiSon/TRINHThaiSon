DROP DATABASE IF EXISTS Inform_hotel;
CREATE DATABASE Inform_hotel;
USE Inform_hotel;

CREATE TABLE Station(
    num_station          Int NOT NULL ,
    nom_station          Varchar (50) NOT NULL ,      
  CONSTRAINT station_PK PRIMARY KEY (num_station)  
);
CREATE TABLE Hotel(
    num_hotel          Int NOT NULL ,
    nom_hotel          Varchar (50) NOT NULL ,
    adresse_hotel      Varchar (50) NOT NULL ,
    capacite_hotel     Varchar (50) NOT NULL ,
    num_station        Int NOT NULL ,
    categorie_hotel    Varchar (50) NOT NULL ,
  CONSTRAINT hotel_PK PRIMARY KEY (num_hotel) ,
  CONSTRAINT hotel_station_FK FOREIGN KEY (num_station) REFERENCES Station(num_station) 
);
CREATE TABLE Chambre(
    num_chambre          Int NOT NULL ,
    type_chambre         Varchar (50) NOT NULL ,
    capacite_chambre     Varchar (50) NOT NULL ,
    degre_confort        Varchar (50) NOT NULL ,
    exposition           Varchar (50) NOT NULL ,
    num_hotel            Int NOT NULL ,
  CONSTRAINT chambre_PK PRIMARY KEY (num_chambre) ,
  CONSTRAINT chambre_hotel_FK FOREIGN KEY (num_hotel) REFERENCES Hotel(num_hotel)
);
CREATE TABLE Client(
    num_client          Int NOT NULL ,
    nom_client          Varchar (50) NOT NULL ,
    prenom_client       Varchar (50) NOT NULL ,
    adresse_client      Varchar (50) NOT NULL ,    
  CONSTRAINT client_PK PRIMARY KEY (num_client)  
);
CREATE TABLE Reservation(
    num_chambre          Int NOT NULL ,
    num_client           Int NOT NULL ,
    date_reservation     DATETIME ,
    date_debut           DATE ,
    date_fin             DATE,
    montant_arrhes       Int NOT NULL ,
    prix_total           Int NOT NULL ,
  CONSTRAINT reservation_PK PRIMARY KEY (num_chambre, num_client) ,
  CONSTRAINT reservation_chambre_FK FOREIGN KEY (num_chambre) REFERENCES Chambre(num_chambre) , 
  CONSTRAINT reservation_client_FK FOREIGN KEY (num_client) REFERENCES Client(num_client) 
);