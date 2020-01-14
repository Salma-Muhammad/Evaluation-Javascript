/*Exercice 2
    Ecrivez une fonction qui prend deux paramètres :
         * phrase de type string
        * lettre de type string
    La fonction compte le nombre de fois ou lettre apparaît dans phrase.*/

    var phrase = prompt("Donner une phrase : "); 
    var lettre = prompt("Saisissez la lettre rechercher : ");
    var compteur = 0;
    
    function nb_de_fois(phrase,lettre)
    {
        for (var i=0; i< phrase.length; i++)
        {
            if (phrase[i] == lettre)
            {
                compteur++ ;
            }
        }
    console.log("Votre phrase contient "+compteur+" fois la lettre "+lettre );
    }
    





/* fonction qui cherche le mot lettre dans une phrase
function nb_de_fois(phrase,lettre)
{
    var phrase = phrase.toLowerCase();// Converts all alphabetic characters to lowercase
    var compteur = 0
        
    for (var i=0; i< phrase.length; i++)
    {
        if (phrase.charAt(i) == lettre.toLowerCase()) 
        { 
        // charAt permet de chercher grace a un index (position de la lettre ou mot) ds une phrase donner
        compteur ++;    
        }       
    }
    return (compteur);                
}*/
        

//----------------------------------------------------------------------------------------------------------------//

    /* Exercice 3*/

//prg tables de multiplication


function multiple(m)
{
    var m, i
    for(i=0;i<=10;i++) 
    {
        total = i*m;
        console.log(i + " x " + m +" = " + total);
    }
 }


//prg Somme + Moyenne


function moyenne(nombre) { //renvoie la moyenne des nombres fournis en paramètre
    var somme=0;
    var nombre=arguments.length;//fournit le nombre d'arguments qui ont été passés à la fonction.
    
    for (var i=0; i<nombre; i++) 
      somme+=arguments[i];
    console.log(somme);
    return somme/nombre;
  }



// prg recherche nb de voyelles


function voyelle(mot){

    var mot;
    var voyelle = "aeiouy".toLowerCase() ; // je met les voyelles dans une variable *search term*
    var cpt = 0; /// j'initialise  le nombre de voyelles
    
    
    for (var i=0; i < mot.length; i++){                   /// j'attribue chaque lettre du mot un chiffre
        if(mot.indexOf(voyelle[i]) !== -1) { /// je verifie dans le tableau des voyelles,si elle correspond
            cpt++;                                           // j'ajoute +1
        
    
    console.log("Ce mot compte " +  cpt + " voyelles." );
    
    }
    }}

///---------------------------------------------------------------------------------------------------------------------------//


 /*Exercice 4 - String Token 

 Concevez la fonction strtok qui prend 3 paramètres str1, str2, n en entrée et renvoie une
chaîne de caractères : str1 est composée d’une liste de mots séparés par le caractère str2.
strtok sert à extraire le nième mot de str1.*/


function strtok(str1, str2, n)
{


    var test = str1.split(str2); /// !!! le premier element commence à 0 //split sépare les mots
    console.log(test[n]);   
}
