var nom = prompt( "Saisissez votre nom");
var prenom = prompt( "Saisissez votre prénom");

if (confirm("Etes vous un homme ?"))
    var sexe = "Monsieur";

else 
    var sexe = "Madame";

alert(`Bonjour ${sexe} ${nom} ${prenom}\nBienvenue sur notre site`);
