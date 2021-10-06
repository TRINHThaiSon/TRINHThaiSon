// produit(x, y) qui retourne le produit des 2 variables x, y passées en paramètre.
function produit(x,y)
{
    var mm = x*y;    
    return mm;   
}
// var mm1 = produit(15,21);
// console.log(mm1);
// **********************affiche l'image passée en paramètre*****************************************
var _image = new Image();
  _image.scr   = "images/papillon.jpg";
function _cube(c)
{
    var cc = c*c*c;
    return cc;
}
var a = parseFloat(prompt("Entrez un nombre :"));
var b = parseFloat(prompt("Entrez un multiplicateur :"));
var mm2 = produit(a,b);
var cc1 = _cube(a);
document.write(`Le produit de ${a}*${b} égale à ${mm2} <br> Le cube de ${a} égale à ${cc1}`);
