/* Exercice 1 - Saisie : 
On demande à l'utilisateur de saisir son prénom affiche le nb de fois qu'il l'a ecrit*/
  
        var myVar
        var total = 0

        do {
            myVar = prompt ("Saisissez votre prénom ou Cliquez sur annuler pour quitter : " );
            console.log( myVar);
            total ++;
        }
        while ((myVar != "") || ( myVar == "null"));          /// tant que le champs ne reste pas vide   

       console.log(total)
    
/* Exercice 2 - Entiers inférieur à N
Ecrire un programme qui affiche les nombres inférieurs à N.*/

var n = prompt("saisissez un nombre: ");

    while (n > 0 ){
        console.log(n = n-1);

    }

    //--------------------------------------------------------------------------------------------------------------------------///

    /* Exercice 3 - Somme d'un intervalle
Ecrire un programme qui saisit deux nombres n1 et n2 et qui calcul ensuite la somme des entiers de n1 à n2.*/


        // le prg ne fonctionnera que si l'on saisie le plus grand nb de l'intervalle en premier
    
        var n1 = prompt("Saisissez un premier nombre pour débuter l'intervalle :" );
    var n2 = prompt("Saisissez un deuxieme nombre pour la fin de l'intervalle :" );
    var total = 0
    
        n1 = parseInt(n1)       // modification des chaines de caractère en nb
        n2 = parseInt(n2)
        for (var i = n1; i<=n2; i++)
        {
         total= total + i  ;   // somme des entiers de l'intervalle n1 à n2
        }
    console.log(total);



    //------------------------------------------------------------------------------------------------------------------//




    /* Exercice 4 - Moyenne
Ecrire un programme qui saisit des entiers et en affiche la somme et la moyenne */

var i=0;
var somme=0;
var moyenne=0;
var nb_notes=prompt("Saisissez le nombre de notes pour les quels vous voulez faire la moyenne ?");
   
    nb_notes=parseInt(nb_notes);   //modif chaine de caractere en nb
    notes = new Array(nb_notes);
    
    for(i=1;i<=nb_notes;i++)
    {
        note_i=prompt("Entrez la note");
        notes[i-1]=parseInt(note_i);  // sauvegarde de la valeur saisie 
        somme+=notes[i-1];          //somme d'un intervalle
    }
    moyenne=(somme/nb_notes);
    console.log("La moyenne des notes est : "+moyenne);

    //------------------------------------------------------------------------------------------------------------------//

/*Exercice 5 - Multiples
Ecrire un programme qui calcule les N premiers multiples d'un nombre entier */

    var n = prompt("Saisissez le nombre de ligne souhaités :");
    var m = prompt("Saisissez le nombre de la table souhaité : ");
    var total

    n=parseInt(n);
    m=parseInt(m);

    for(i=1;i<=n;i++) 
    {
        total = i*m
        console.log(i + " x " + m +" = " + total)
    }
    
    //----------------------------------------------------------------------------------////
/*Exercice 6 - Nombre de voyelles.
Ecrire le programme qui compte le nombre de voyelles d’un mot saisi au clavier */


var mot = prompt(" Saisissez un mot : ").toLowerCase();
var voyelle = "aeiouy" ; // je met les voyelles dans une variable
var cpt = 0; /// j'initialise  le nombre de voyelles


for (var i=0; i < mot.length; i++){                   /// j'attribue chaque lettre du mot un chiffre
    if(mot.indexOf(voyelle[i]) !== -1) { /// je verifie dans le tableau des voyelles,si elle correspond
      cpt++;                                             // j'ajoute +1
    }
    else {
        alert ("Ce mot n'a pas de voyelle");
    }
}
alert("Ce mot compte " +  cpt + " voyelles." );

////------------------------------------------------------------------------------------------------///

/*Exercice 7 - Un nombre est-il premier
Ecrivez un programme qui permet de tester si un nombre est premier.*/

var n = prompt("Saisissez un nombre :");
    n = parseInt(n);
    
    if (n === 1)
    {
        alert("Ce nombre n'est pas un nombre premier.");
    }
    else
    {
        for(var i = 2; i < n; i++)
        {
        if(n % i === 0)
        {
            alert("Ce nombre n'est pas un nombre premier");
        }
        }
        alert("Ce nombre est un nombre premier.");
     }

     //-------------autre façon de faire-----------------------------------------------------------------------------------------------------------------
     var n = prompt("Saisissez un nombre :");
     n = parseInt(n);
     
     if (n%2 ==0 || n%3 ==0)
     {
     alert ("Ce nombre n'est pas un nombre premier.")
         
      }
     else if  (n%n == 0 && n%1 == 0)
   {
     
     alert ("Ce nombre est un nombre premier.");
   }










     /*Exercice 8 - Nombre magique*/


var magic = parseInt(Math.random()*100);  // nb alétoire choisi par la machine
var cpt = 0;    // nb de coups
var saisie;
var msg = 'Le nombre à deviner est compris entre 1 et 100.';

do
{
 saisie = prompt(msg);
 cpt++;
 // message a afficher au prochain tour :
 if(saisie > magic)
      msg = "C'est moins";
 else
      msg = "C'est plus";
}
while(saisie != magic);


alert("Félicitation vous avez trouver ce nombre en " + cpt + " coups !");