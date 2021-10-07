var tab = ["Audrey", "Aurélien", "Flavien", "Jérémy", "Laurent", "Melik", "Nouara", "Salem", "Samuel", "Stéphane"];
var a = prompt("Saisissez un prénom :");
if (tab.indexOf(a) >=0)
{
 tab.splice(tab.indexOf(a),1);
 tab.push("");
}
  else
  {
      alert( a  + " : n'est pas un élément du array!");
  } 
  console.log(tab);