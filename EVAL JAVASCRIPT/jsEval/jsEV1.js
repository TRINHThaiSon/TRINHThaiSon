var moins20 = 0;
var entre2040 = 0;
var plus40 = 0;
var age = 0;
while (age<=100)
{
    age = parseInt(prompt("Quel âge avez-vous ?"));
    if (age <=20)
    {
        moins20++;
    }
    else if (age>20 && age<=40)
    {
        entre2040++;
    }
    else if (age>40)
    {
        plus40++;
    }
}
alert(`Le nombre de personne de moins de 20 ans : ${moins20}\nLe nombre de personne d'entre 20 ans et 40 ans : ${entre2040}\nLe nombre de personne de plus de 40 ans :${plus40 - 1}`);