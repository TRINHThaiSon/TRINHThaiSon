function verifier()
{
    var a = document.getElementById("nom").value;
    var _nom = new RegExp("^[0-9A-Za-z]+$");
    var b = document.getElementById("prénom").value;
    var d = document.getElementById("Date").value;
    var e = document.getElementById("Code").value;
    var _codepostal = new RegExp("^[0-9]$");
    var _mail = new RegExp("^[a-z0-9.-]+@[a-z0-9.-]{2,}.[a-z]{2,4}$");
    var f=document.getElementById("Email").value;
    var _quest = document.getElementById("question").value;
    var _sujet = document.getElementById("sujet").value;
    var acc = document.getElementById("accept").checked;
    var s1 = document.getElementById("sexe").checked;
    var s2 = document.getElementById("sexe1").checked;
    var s3 = document.getElementById("sexe2").checked;
    
    if (_nom.test(a) == false)
    {
        alert("Veuillez saisir votre nom en forme correcte s.v.p !");
    }
    if (_nom.test(b) == false)
    {
        alert("Veuillez saisir votre prénom en forme correcte s.v.p !");
    }
    if (s1 == false && s2 == false && s3 == false)
    {
        alert("Veuillez choisir votre sexe s.v.p !");
    }
    if (d == "")
    {
        alert("Veuillez choisir votre date de naissance s.v.p !");
    }    if (_codepostal.test(e) == false && e.length != 5)
    {
        alert("Le code postal ne comporte que 5 caractères numériques\nVeuillez saisir la forme correcte du code postal s.v.p!");
    }
    if (_mail.test(f) == false || e == "")
    {
        alert("Le Email doit comporter au moins le caractère '@'\nEntrez la forme correcte de Email s.v.p!");
    }
    if(_sujet == "")
    {
        alert("Veuillez entrer votre sujet s.v.p !");
    }
    if (_quest == "")
    {
        alert("Veuillez entrer votre question s.v.p !");
    }
    
    if( acc == false)
    {
        alert("Veuillez cocher votre acceptation s.v.p !");
    }
    return false; // do not submit the form
}
