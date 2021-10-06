var myVar = prompt("Entrez un mot : ");
console.log("le mot entré =" + myVar);
var v_nombre = 0;
for(i=0; i<myVar.length; i++)
{
    ch = myVar.charAt(i);
    if (ch == "a" || ch == "e" || ch == "i" || ch == "o" || ch == "u")
    {
        v_nombre++;
    }
}
console.log("le nombre de voyelles =" + v_nombre++ );
