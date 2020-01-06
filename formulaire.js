var myform = document.getElementById("myform");

myform.addEventListener("submit", function(e)
{ 
    
// Vérification du nom
 var input_name = document.getElementById("name");
 var RegExp = /^[A-Za-z]+$/;

 if (input_name.value.trim() == "")  // trim retire les espaces au debut et entre les mots
 {
     var erreur = document.getElementById("error");
     erreur.innerHTML = "Ce champs est requis";  //inner html permet d'afficher du texte dans la page html
     erreur.style.color = "red";
     e.preventDefault(); // permet de bloquer l'envoye du formulaire
 }else if (RegExp.test (input_name.value) == false) // .test permet de vérifier la valeur de la variable par rapport au regex 
 {
    erreur = document.getElementById("error");
    erreur.innerHTML = "Ce champs doit comporter des lettres uniquement";
    erreur.style.color = "red";
    e.preventDefault();




 // Vérification du prénom
var input_prenom = document.getElementById("prenom");

}else if (input_prenom.value.trim() == "")
 {
    var erreur1 = document.getElementById("error1");
    erreur1.innerHTML = "Ce champs est requis";
    erreur1.style.color = "red";
    e.preventDefault();
 }else if (RegExp.test (input_prenom.value) == false)
 {
    erreur1 = document.getElementById("error1");
    erreur1.innerHTML = "Ce champs doit comporter des lettres uniquement";
    erreur1.style.color = "red";
    e.preventDefault();



// Vérification du sexe (radio)
var male = document.getElementById("male").checked;
var female = document.getElementById("female").checked;

}else if ((!male ) && (!female))
{
   var erreur6 = document.getElementById("error6");
   erreur6.innerHTML = "Ce champs est requis";
   erreur6.style.color = "red";
   e.preventDefault();



   //Vérification de la date

var date = document.getElementById("date");
var RegExp3 = /^[0-9][0-9]?\/[0-9][0-9]?\/[0-9][0-9]([0-9][0-9])?$/ ;  //date

}else if (date.value.trim() == "")  
{
    var erreur7 = document.getElementById("error7");
    erreur7.innerHTML = "Ce champs est requis";
    erreur7.style.color = "red";
    e.preventDefault();
}else if (RegExp3.test (date.value) == false)
{
   erreur7 = document.getElementById("error7");
   erreur7.innerHTML = "Ce champs doit comporter des chiffres uniquement";
   erreur7.style.color = "red";
   e.preventDefault();



   //Vérification du code postal

var input_cp = document.getElementById("cp");
var RegExpcp = /^[0-9]{5,5}$/; //code postal

}else if (input_cp.value.trim() == "")  
 {
     var erreur2 = document.getElementById("error2");
     erreur2.innerHTML = "Ce champs est requis";
     erreur2.style.color = "red";
     e.preventDefault();
 }else if (RegExpcp.test (input_cp.value) == false)
 {
    erreur2 = document.getElementById("error2");
    erreur2.innerHTML = "Ce champs doit comporter des chiffres uniquement";
    erreur2.style.color = "red";
    e.preventDefault();
 

//Vérification de l'adresse

var input_adresse = document.getElementById("adresse");
var RegExp1 = /^[0-9]{1,3}(?:(?:[,. ]){1}[-a-zA-Zàâäéèêëïîôöùûüç]+)*$/;       //adresse

}else if (input_adresse.value.trim() == "")  
{
    var erreur3 = document.getElementById("error3");
    erreur3.innerHTML = "Ce champs est requis";
    erreur3.style.color = "red";
    e.preventDefault();
}else if (RegExp1.test (input_adresse.value) == false)
{
   erreur3 = document.getElementById("error3");
   erreur3.innerHTML = "Ce champs peut comporter des lettres et des chiffres";
   erreur3.style.color = "red";
   e.preventDefault();


// Vérification de l'email

var input_email = document.getElementById("email");
var RegExp2 =/^[a-zA-Z0-9_]+(\.[a-zA-Z0-9_]+)*\@[a-zA-Z0-9_]+(\.[a-zA-Z0-9_]+)*\.[a-zA-Z]{2,4}$/  ///email

}else if (input_email.value.trim() == "")  
{
    var erreur4 = document.getElementById("error4");
    erreur4.innerHTML = "Ce champs est requis";
    erreur4.style.color = "red";
    e.preventDefault();
}else if (RegExp2.test (input_email.value) == false)
{
   erreur4 = document.getElementById("error4");
   erreur4.innerHTML = "Entrez une adresse email valide";
   erreur4.style.color = "red";
   e.preventDefault();


// Vérification du checkbox (traitement informatique)
var checkbox = document.getElementById("checkbox").checked;

}else if (!checkbox)
{
    var erreur5 = document.getElementById("error5");
   erreur5.innerHTML = "Ce champs est requis";
   erreur5.style.color = "red";
   e.preventDefault();
}

   
} );







/*function verifNom()
{
    var filtre = new RegExp( /^[A-Za-z]+$/);
    var testnom = document.getElementById("name").value;
    var resultat = filtre.test(testnom);
    console.log(resultat);
    
}
function verifPrenom()
{
    var filtre = new RegExp( /^[A-Za-z]+$/);
    var testnom = document.getElementById("prenom").value;
    var resultat = filtre.test(testnom);
    console.log(resultat);
    
}*/