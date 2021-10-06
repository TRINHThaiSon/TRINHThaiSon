// ************************Vérifier un nombre est pair ou impair**********************************************************
var x = window.prompt("Choississez votre nombre: ");
if (x%2 == 0)
{
    alert(`le nombre ${x} est pair`);
}

else
{
    alert(`le nombre ${x} est impair`);
}
// ************************Vérifier une personne est majeur ou pas**********************************************************
var y = window.prompt("Entrez votre l'année de naissance:")
if (2021 - y >= 18)
{
    alert("Vous êtes MAJEUR!");
}
else
{
    alert("Vous êtes MINEUR!");
}
