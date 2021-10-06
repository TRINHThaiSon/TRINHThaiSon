var a = window.prompt("Entrez le premier nombre:");
var b = window.prompt("Entrez le deuxième nombre:");
var c = window.prompt("Choississez un opérateur:");

d1 = parseInt(a)+parseInt(b);
d2 = parseInt(a)-parseInt(b);
d3 = parseInt(a)*parseInt(b);
d4 = parseInt(a)/parseInt(b);
if (c == "+")
{
        alert(`${a} + ${b} = ${d1}`);

}
if (c == "-")
{
        alert(`${a} - ${b} = ${d2}`);

}
if (c == "*")
{
        alert(`${a} * ${b} = ${d3}`);

}
if (c == "/" && b != 0)
{
        alert(`${a} / ${b} = ${d4}`);

}
if (c != "+" &&  c != "-" && c != "*" && c != "/")
{
    alert("Vous avez trompé.Choississez un bon opérateur");
}