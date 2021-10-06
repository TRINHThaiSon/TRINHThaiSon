// var prenom = Array();
// var i = 0;
// prenom[i++] = prompt("Saisissez le prenom N°1");


// while (prenom[i-1] != null && prenom[i-1] != ""){

//   prenom[i++] = prompt(`Saisissez le prenom N${i} :\nou Clic sur Annuler pour arrêter le saisie.`);
//   console.log((i-1) + "prénom");
// i = -1;
// }

// while (prenom[++i] != null)
// console.log( prenom[i]);


/**************************début version 1********************************* */




// var nbre_prenom_saisi=1;

// var prenom = prompt(`Saisissez le prenom N°${nbre_prenom_saisi} :`); 







// while(prenom !=""  || prenom!=null ){

//     nbre_prenom_saisi++;

// prenom = prompt(`Saisissez le prenom N°${nbre_prenom_saisi} :`);
// console.log("prenom "+nbre_prenom_saisi+" :"+prenom);

// }


// alert("nombre de prénoms saisi vaut :"+ nbre_prenom_saisi);

/**************************fin******************************* */



/**************************début version 2********************************* */
var prenom;
var nbre_prenom_saisi=1;

do{

    prenom = prompt(`Saisissez le prenom N°${nbre_prenom_saisi}`);

    //alert("prenom = "+prenom);

if(prenom!="" && prenom!=null)
    
    nbre_prenom_saisi++;

    console.log("prenom "+nbre_prenom_saisi+" :"+prenom);
}
while(prenom!="" && prenom!=null)


if(prenom ==null)

nbre_prenom_saisi--;

alert("nombre de prénoms saisi vaut :"+ nbre_prenom_saisi);


/**************************fin******************************* */