/*Exercice 1 - Parité
Ecrivez un programme qui demande un nombre à l'utilisateur puis qui teste si ce nombre est pair.*/

var n = window.prompt("Donner un nombre :")
        
        if (n%2 == 0) {         // si le nb est divisible par 2 et que le reste de la division vaut 0 
        alert("nombre pair " );  // alors exécuter alert
        }
        else  {
        alert("nombre impair " );
        }

/*Exercice 2 - Age
afficher l'âge de l'utilisateur et indiquer si l'utilisateur est majeur ou mineur.*/

    var annee = prompt("Saisissez votre Année de naissance :");
    annee = 2019 - annee

    alert(" Vous avez " + annee + " ans");
    if (annee < 18) 
    { 
    alert("Vous êtes mineur "  );
    } else {
    alert("Vous êtes majeur "  );
    }

/*Exercice 3 - Calculette
*Faire la saisie de 2 nombres entiers, puis la saisie d'un opérateur 
*Si l'utilisateur entre un opérateur erroné, le programme affichera un message d'erreur.
*le programme effectuera l'opération demandée (en prévoyant le cas d'erreur division par 0)*/

    var n1 = prompt("Donner un nombre :");
    var operateur = prompt("Saisissez un opérateur (+, -, *, /):");
    var n2 = prompt("Donner un autre nombre :");
    var resultat = 0;

    n1 = parseInt(n1);// obligatoire pour faire l'addition sinon ajout des 2 nb 
    n2 = parseInt(n2);//transformer chaîne caractere

        switch (operateur)
        {
            case "+":
            
            console.log(resultat = n1 + n2);
            break;

            case "-":
            console.log(resultat = n1 - n2);
            break;
            
            case "*":
            console.log(resultat = n1 * n2);
            break;
            
            case "/":
            if (n1 == 0 || n2 == 0) {
                console.log("Erreur division par 0");
            }    
            else {
                console.log(resultat = n1 / n2);
                }
            break;
            
            default :
            console.log("Vous avez entré un opérateur erroné.");
        }

        console.log(n1 + operateur + n2 +" = "+ resultat);


/*Exercice 4 - Participation
Un patron décide de calculer le montant de sa participation au prix du repas de ses employés de la façon suivante :

*si il est célibataire : participation de 20%
*si il est marié : participation de 25%
*si il a des enfants : participation de 10% supplémentaires par enfant
*la participation est plafonnée à 50%
*si le salaire mensuel est inférieur à 1200 €, la participation est majorée de 10%.
Ecrire le programme qui lit les informations au clavier et affiche pour chaque salarié, la participation à laquelle il a droit.*/

        var statut = confirm("Vous êtes marié ? ");
        var salaire = parseInt(prompt("Quel est votre salaire ? "));// parseInt transformer une chaine de caractere en nb
        var nbenf = parseInt(prompt("Combien d'enfants avez-vous ?"));
        var par = 0

        if (salaire < 1200){
            if ( statut == true){
            par = 25 + (10*nbenf) + 10;
            }
            else
            {
                par = 20 + (10*nbenf) + 10;
        }
        }
        else // cas ou le salaire est >1200   
        if (salaire > 1200){
            if ( statut == true){
            par = 25 + (10*nbenf) ;
            }
            else
            {
                par = 20 + (10*nbenf) ;
        }
        }

        if (pc > 50)
         {
        pc = 50;
        }
    alert ("la participation est de "+ par +" %" );
            