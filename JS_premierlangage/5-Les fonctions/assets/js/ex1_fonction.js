/*Exercice 1


Créer les 3 fonctions suivantes :*/
        
//produit(x, y) qui retourne le produit des 2 variables x, y passées en paramètre.
    

var n1, n2;
var image = ""; // variable undefined
       
function produit(n1,n2)// n1 et n2 passée en paramètre
    {
        var resultat = n1 * n2 ;
        console.log ("le produit de " + n1 +" et "+ n2+" est "+resultat);
          
    }

//afficher le cube d'un nombre

function cube(n1)
{
    var resultat = n1*n1*n1;
    console.log("le cube de " +n1 +" est "+ resultat)
}
    
//*afficheImg(image) qui affiche l’image passée en paramètre

    
function afficheImg(image) 
{

    document.getElementById("image").src = String(image);
      
      
}
   
        
afficheImg("assets/img/papillon.jpg");