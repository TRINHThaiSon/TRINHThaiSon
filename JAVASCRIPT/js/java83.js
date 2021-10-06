// ************avec la boucle WHILE*********************************************
var a ;
var b = 1;
var _somme = 0;
while ( a != 0 )
{   
    
    a = prompt("Saisissez le numbre N°" + b +  ":");
    console.log("N°"+b + "= :" + a);
    _somme += parseFloat(a);    
    _somme/(b++ - 2); 
     
}
console.log("la somme =" + _somme);
console.log("la moyenne =" +  _somme/(b++ - 2));
console.log("Fin de la boucle");

