var question1 = window.prompt("entrez votre nom");
var question2 = window.prompt("entrez votre prénom");
if (window.confirm("êtes-vous un homme?") == true)
{
    window.alert(`Bonjour Monsieur ${question1} ${question2}\nWelcome to our site !`);
}
else
{
    window.alert(`Bonjour Madame ${question1} ${question2}\nWelcome to our site !`);
} 
