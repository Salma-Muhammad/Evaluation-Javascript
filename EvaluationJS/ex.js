/*Evaluation Javascript

Exercice 1 : total d'une commande
A partir de la saisie du prix unitaire noté PU d'un produit et de la quantité commandée QTECOM,
afficher le prix à payer PAP, en détaillant le port PORT et la remise REM, sachant que :

    *le port est gratuit si le prix des produits TOT est supérieur à 500 €.
        Dans le cas contraire, le port est de 2% de TOT
    *la valeur minimale du port à payer est de 6 €
    *la remise est de 5% si TOT est compris entre 100 et 200 € et de 10% au-delà

Testez tous les cas possibles afin de vous assurez que votre script fonctionne. 
*/

var pu = parseInt(prompt("Donner le prix unitaire d'un produit :")) ;
var qtecom = parseInt(prompt("Donner le nombre de produit :")) ;
var pap;// prix à payer
var port ;   // les frais de port
var rem;// remise
var tot; // prix total sans frais

tot = pu*qtecom
console.log("Le prix total sans les frais et les remise : "+tot);
if (tot>500)      // boucle pour frais de port
{
  port = 0;
}
else (tot<500)
{
  port = 6 + tot * 0.02;    // 2% de la valeur de tot
}
if(tot>100 && tot<200)    // boucle pour remise
{
  rem = tot - tot*0.05;
}else if(tot>200)
{
  rem = tot - tot*0.10;
}
console.log("les frais de port sont de : " +port);
console.log("La remise est de : " +rem);
pap = tot + port + rem;
console.log("le prix à payer est de : "+pap);




/*Exercice 2 : Somme des entiers inférieurs à N
Ecrivez un programme qui affiche la somme des nombres inférieurs à N.*/

var nb = parseInt(prompt("Donner un nombre : ")); //modif chaine de caractere en nb
var somme = 0;

for(var i = nb; i!=0; i--)// on s'arréte à 0
{
  somme = somme + i ; 
}
console.log("la somme des entiers inférieurs à "+nb +" est : " +somme);




/*Exercice 3 - Mini et maxi
Modifiez le programme de la moyenne pour afficher le minimum et le maximum.*/

var number = parseInt(prompt("Combien de valeur voulez-vous saisir ?\n (en prenant en compte 0)"))  ; 
var tab = [];
var somme=0;
var moyenne=0;

for (var i=0; i<number; i++)
{
  var nb = parseInt(prompt("Entrer un nombre :\n ou cliquer sur Annuler "));
  tab.push(nb);
  somme+=nb
}

moyenne=(somme/number);
console.log(tab);
console.log ("La somme des valeur de ce tableau est de "+somme);
console.log( "la moyenne est de "+moyenne );
console.log("La valeur minimun saisie est " +Math.min(...tab));// trois point : permet la decomposition du tableu
console.log("La valeur maximale saisie est " +Math.max(...tab));





/*Exercice 4 - Calcul du nombre de jeunes, de moyens et de vieux
  Il s'agit de dénombrer les personnes d'âge strictement inférieur à 20 ans, 
  les personnes d'âge strictement supérieur à 40 ans et celles dont 
  l'âge est compris entre 20 ans et 40 ans (20 ans et 40 ans y compris).

  *Le programme doit demander les âges successifs.
  *Le comptage est arrêté dès la saisie d'un centenaire. Le centenaire est compté.
  *Donnez le programme Javascript correspondant qui affiche les résultats.*/

var nb_personnes ;
var jeunes=0 ;
var moyens=0 ;
var vieux=0 ;
var tab = [];

do
{
  nb_personnes = parseInt(prompt("Entrez votre âge\n la saisie s'arrête à 100"));
  tab.push(nb_personnes);
}
while (nb_personnes< 100);


for(var i = 0; i<tab.length; i++)
{
  if (tab[i] < 20) 
  {
    jeunes ++;
  } else if (tab[i] >=20 && tab[i] <= 40 )
    {
      moyens ++;
    } else if(tab[i] >= 40)
      {
        vieux ++ ;
      }
}
console.log(tab);
console.log("Votre saisie compte : "+jeunes+" jeune(s), "+ moyens+" moyen(s) et "+vieux +" vieux");




/*Exercice 5 : Table de multiplication
Ecrivez une fonction qui affiche une table de multiplication.
Votre fonction doit prendre un paramètre qui permet d'indiquer quelle table afficher.*/

function Multiplication(n)
{
  var n;
  var total;
  for(i=1;i<=10;i++) 
  {
    total = i*n;
    console.log(i + " x " + n +" = " + total);
  }
}
Multiplication(4)




/*Exercice 6 : recherche d'un prénom
Un prénom est saisi au clavier. On le recherche dans le tableau tab donné ci-après
Si le prénom est trouvé, on l'élimine du tableau en décalant les cases qui le suivent, et en mettant à blanc la dernière case.*/

var tab = ["Audrey", "Aurélien", "Flavien", "Jérémy", "Laurent", "Melik", "Nouara", "Salem", "Samuel", "Stéphane"];
var saisie = prompt("Saisissez un prénom :");

for (var i=0; i < tab.length; i++)
{  
  if (saisie == tab[i]) 
  {
  tab.splice(i,1);  //permet de remplacer les elements d'un tableau
  tab.push("");
  console.log(tab);
  break;
  }else
  {
    console.log("La saisie ne se trouve pas dans le tableau !");
  }
}




