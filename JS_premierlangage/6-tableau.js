/* Exercice 1
    Ecrivez un programme permettant de créer un tableau, dont la taille est saisie au clavier.
    Ensuite l'utilisateur doit rentrer les différentes valeurs du tableau.
    Puis votre programme doit afficher le contenu du tableau.*/
       
    
    var long = parseInt(prompt("Donner le nombre d'élément à insérer dans le tableau : "));
    var tab = new Array(long); 

    for (var i = 0; i< tab.length; i++) {
 
    var element = prompt("Saisissez l'élement à mettre dans le tableau n° " +i );
    tab[i] = element ;                    // on met les elements dans le tableau
       
  }  console.log(tab); 
 
 
 
 
    /*   Exercice 2
Créer le programme qui fournira un menu permettant d’obtenir les fonctionnalités suivantes à partir
d’un tableau à une dimension :
        - Affichage du contenu de tous les postes du tableau,
        - Affichage du contenu d’un poste dont l’index est saisi au clavier,
        - Affichage du maximum et de la moyenne des postes du tableau
    Ce programme sera structuré de la manière suivante :
        - une fonction GetInteger pour lire un entier au clavier,
        - une fonction InitTab pour créer et initialiser l’instance de tableau : le nombre de postes souhaité sera entré au clavier,
        - une fonction SaisieTab pour permettre la saisie des différents postes du tableau,
        - une fonction AfficheTab pour afficher tous les postes du tableau,
        - une fonction RechercheTab pour afficher le contenu d’un poste de tableau dont le rang est saisi au clavier
        - une fonction InfoTab qui affichera le maximum et la moyenne des postes.
    Les fonctions seront appelées successivement. */
   
    var tab = []; 
    
    function GetInteger()
    {
      var entier = prompt("Saisir un entier : ");
      console.log("Vous avez saisie " +entier)  ;
    }
    
    function InitTab()
    {
      var longueur= parseInt(prompt(" Saisissez la longueur du tableau : "));
      tab = new Array(longueur); // définition de la longueur du tableau
            
    }
             
    function SaisieTab()  //saisir le contenu du tableau
    {   
      for (var i=0 ; i<tab.length; i++) // premier element du tableau vaut 0
      { 
      var element = prompt("Saisissez l'élement à mettre dans le tableau n° " +i );
      tab[i]= element ;
                 
      }
    }
         
    function AfficheTab ()  
    { 
      console.log(tab); // Affichage du tableau
                     
    }
            
    function RechercheTab()  
    {
      var m = parseInt(prompt("Saisissez le rang du poste souhaités : "));
      console.log("Vous souhaitez le rang " + m+ " dont la valeur est " + tab[m]);// rechercher par index m la valeur dans le tableau
    }
         
         
    function InfoTab ()  {
             
      console.log(Math.max(...tab)) ;// trois point : permet la decomposition du tableu
      console.log("le valeur minimun est " + Math.min(tab[i])) ;
      return (max+min)/tab.length ;
    }
         
    GetInteger()
    InitTab()
    SaisieTab()
    AfficheTab()
    RechercheTab()
    InfoTab()
        




   /*Exercice 3 : Tri d’un tableau
Ecrire le programme qui réalise le tri à bulles.*/    



//fonnction qui permet le tri

/*function Tri(tab){
  var poste ;
  do {
    poste = false;
    for(var i=0; i < tab.length-1; i++) {
      if(tab[i] > tab[i+1]) {
        var temporaire = tab[i];
        tab[i] = tab[i+1];
        tab[i+1] = temporaire;
        poste = true;
      }
    }
} while(poste);
} cosole.log(tab);*/
     

var long = parseInt(prompt("Donner le nombre d'élément à insérer dans le tableau : "));
var tab = new Array(long); 

for (var i = 0; i< tab.length; i++) 
{
  var element = prompt("Saisissez l'élement à mettre dans le tableau n° " +i );
  tab[i] = element ;                    
  do 
  {
    poste = false;
    for(var i=0; i < tab.length-1; i++) 
    {
      if(tab[i] > tab[i+1]) 
      {
        var temporaire = tab[i];
        tab[i] = tab[i+1];
        tab[i+1] = temporaire;
        poste = true;
      }
    }
  } while(poste);
}
 console.log(tab);
