
/*Nombre Magique (the Magic Number)
Reprenez l'exercice du nombre magique

Votre programme doit générer un nombre aléatoire à l'aide de la fonction Math.random.
Ecrivez la fonction verif qui doit vérifier si la saisie de l'utilisateur (dans textBox1) correspond au
nombre magique, elle affiche des informations (trop grand, trop petit dans le label1.
Quand votre programme fonctionne, modifiez-le pour rendre le javascript non intrusif.*/


var magic = parseInt(Math.random()*100);  // nb alétoire choisi par la machine jusqu'à 100
var cpt = 0;    // nb de coups
var saisie;
var msg = 'Le nombre à deviner est compris entre 1 et 100.';

function verif()
{
do
{
 saisie = prompt(msg);
 cpt++;
 // message a afficher au prochain tour :
 if(saisie > magic){
      msg = "C'est moins";
 }else{
      msg = "C'est plus";
}}
while(saisie != magic);

console.log("Félicitation vous avez trouver ce nombre en " + cpt + " coups !");
}
verif()