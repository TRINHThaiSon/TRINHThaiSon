var PU = parseInt(prompt("Saisissez le prix unitaire :"));
var QTECOM = parseInt(prompt("Saisissez la quantité commandée :"));
var TOT = PU*QTECOM;
var PORT = 0;
var REM = 0;
var PAP;
if (TOT<=100)
{
    PORT = 6;
    REM = 0;
    PAP = (TOT - REM) + PORT;
    alert("Le prix d'achat serait :" + TOT + "$");
    alert("Frais de livraison :" + PORT + "$" );
    alert( " Le prix à payer serait :" + TOT + "+" + PORT + "=" + PAP + "$");
}
else if ( TOT>100 && TOT <= 200)
{
    PORT = 6;
    REM = 0.05*TOT;
    PAP = (TOT - REM) + PORT;
    alert("Le prix d'achat serait :" + TOT + "$");
    alert("La somme de remise serait 5% :" + REM +"$")
    alert("Frais de livraison :" + PORT + "$" );
    alert( " Le prix à payer serait : (" + TOT + "-" + REM +") +"+ PORT + "=" + PAP + "$");
}
 else if ( TOT > 200 && TOT <=333 )
{
    PORT = 6;
    REM = 0.1*TOT;
    PAP = (TOT - REM) + PORT;
    alert("Le prix d'achat serait :" + TOT + "$");
    alert("La somme de remise serait 10% :" + REM +"$")
    alert("Frais de livraison :" + PORT + "$" );
    alert( " Le prix à payer serait : (" + TOT + "-" + REM +") +"+ PORT + "=" + PAP + "$");
 }
 else if ( TOT > 333 && TOT <=555)
 {
    REM = 0.1*TOT;
    PORT = (TOT - REM)*0.02;
    PAP = (TOT - REM) + PORT;
    alert("Le prix d'achat serait :" + TOT + "$");
    alert("La somme de remise serait 10% :" + REM +"$")
    alert("Frais de livraison serait 2% du total remisé :" + PORT + "$" );
    alert( " Le prix à payer serait : (" + TOT + "-" + REM +") +"+ PORT + "=" + PAP + "$");
 }
 else if (TOT>555)
 {
    REM = 0.1*TOT;
    PORT = 0;
    PAP = (TOT - REM) + PORT;
    alert("Le prix d'achat serait :" + TOT + "$");
    alert("La somme de remise serait 10% :" + REM +"$")
    alert("Frais de livraison serait gratuite" );
    alert( " Le prix à payer serait : (" + TOT + "-" + REM +") +"+ PORT + "=" + PAP + "$");
 }
 
    