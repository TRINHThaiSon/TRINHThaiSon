function verif1()
{
    var a= document.getElementById("nom").value;
    var societe = new RegExp("^[0-9A-Za-z]+$");
    var b=document.getElementById("personne").value;
    var c = document.getElementById("Code").value;
    var _codepostal = new RegExp("^[0-9]$");
    var v = document.getElementById("Ville").value;
    var _mail = new RegExp("^[a-z0-9.-]+@[a-z0-9.-]{2,}.[a-z]{2,4}$");
    var e = document.getElementById("Email").value;
    if (societe.test(a) == false)
    {
        alert("Entrez la forme correcte du nom de la société s.v.p!");
    }
    if (societe.test(b) == false)
    {
        alert("Entrez la forme correcte du nom de la personne à contacter s.v.p!");
    }
    if (_codepostal.test(c) == false && c.length != 5)
    {
        alert("Le code postal ne comporte que 5 caractères numériques\nEntrez la forme correcte du code postal s.v.p!");
    }
    if (societe.test(v) == false)
    {
        alert("Entrez la forme correcte du nom de la ville s.v.p!");
    }
    if(_mail.test(e) == false)
    {
        alert("Le Email doit comporter au moins le caractère '@'\nEntrez la forme correcte de Email s.v.p!");
    }
    return false;// do not submit the form
}