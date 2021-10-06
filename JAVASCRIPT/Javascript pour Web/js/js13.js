var tab = new Array();
var i = 0;
var nbr_valeur = 0 ;
var sumtab = 0;
while (tab[i] != 0)
{
    nbr_valeur++;
    tab[i] = prompt("Entrez la valeur N°" + nbr_valeur + "" + ":");    
    console.log("La valeur N°" + nbr_valeur  + "=" + tab[i]);
    sumtab += parseFloat(tab[i]);
}
console.log("Le nombre de valeurs saisies :" + nbr_valeur++);
console.log("La somme de valeurs saisies :" + sumtab);
console.log("La moyenne de valeurs saisies :" + sumtab/(nbr_valeur++ - 2));