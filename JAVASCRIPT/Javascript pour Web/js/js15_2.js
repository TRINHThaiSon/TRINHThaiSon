var a = Math.random();
alert("Le nombre magic est :" + a);
function verif()
{
    b = document.getElementById("textBox1").value;
    if (b>a)
    {
        alert(b + "est trop grand");
    }
    else
    {
        alert(b + "est trop petit"); 
    }
}