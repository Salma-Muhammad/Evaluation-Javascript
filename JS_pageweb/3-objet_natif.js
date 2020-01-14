/*Exercice
Ecrivez un programme permettant de saisir différentes valeurs numérique (avec l'instruction window.prompt), 
ces valeurs seront rangées dans un tableau. La saisie s'arrête quand l'utilisateur entre
la valeur 0.
A la fin de la saisie, votre programme doit afficher le nombre de valeurs saisies, la somme et la
moyenne.*/


var tab = []; 
var element ;
var somme = 0 ; 
var moyenne = 0 ;
 

  while (element != 0) //saisie différent de 0
  {
      element = parseInt(prompt("Saisissez l'élement à mettre dans le tableau "));
      tab.push(element) ; // on ajoute les elements dans le tableau
     
   }
tab.pop(); // on retie le dernier element car il affiche 0
console.log(tab);
somme =somme + tab[element]; // somme des element du tableau
moyenne = somme/tab.length ;

console.log( "Vous avez saisie " +tab.length+" de valeurs");
console.log("la somme des entiers de ce tableau est "+ somme);
console.log("la moyenne vaut " + moyenne);



 