/*Exercice 7 : vérification d'un formulaire
Effectuez le contrôle de saisie de votre formulaire Jarditou en Javascript.
Lorsqu'une erreur est détectée, l'utilisateur doit en être informé grâce à l'affichage d'un message sous le champ concerné.
Le formulaire ne peut être envoyé que lorsque tout est bon.*/


var myform = document.getElementById("myform");



myform.addEventListener("submit", function(event)
{ 
    
    var name = document.getElementById("name");
    var RegExpName = /^[A-Za-z]+$/;
    
    var prenom = document.getElementById("prenom");
    
    var male = document.getElementById("male").checked;
    var female = document.getElementById("female").checked;
    
    var date = document.getElementById("date");
    var RegExpDate = /^[0-9][0-9]?\/[0-9][0-9]?\/[0-9][0-9]([0-9][0-9])?$/ ;  
    
    var cp = document.getElementById("cp");
    var RegExpCp = /^[0-9]{5,5}$/; 
    
    var adresse = document.getElementById("adresse");
    var RegExpAdresse = /^[0-9]{1,3}(?:(?:[,. ]){1}[-a-zA-Zàâäéèêëïîôöùûüç]+)*$/;      
    
    var email = document.getElementById("email");
    var RegExpEmail =/^[a-zA-Z0-9_]+(\.[a-zA-Z0-9_]+)*\@[a-zA-Z0-9_]+(\.[a-zA-Z0-9_]+)*\.[a-zA-Z]{2,4}$/  
    
    var demande = document.getElementById("demande");

    var message = document.getElementById("message");    
    
    var checkbox = document.getElementById("checkbox"); // traitement des données informatique



    // Vérification du nom

    if (name.value.trim() == "")  // le champs est vide
    {
        var errorName = document.getElementById("errorName");
        errorName.innerHTML = "Ce champs est requis";  
        errorName.style.color = "red";
        event.preventDefault(); // permet de bloquer l'envoye du formulaire
    }else if (RegExpName.test (name.value) == false) // la regex n'est respecté
    {
        errorName = document.getElementById("errorName");
        errorName.innerHTML = "Ce champs doit comporter des lettres uniquement";
        errorName.style.color = "orange";
        event.preventDefault();
    }else                       // la saisie est accepté
    {
        errorName = document.getElementById("errorName");
        errorName.innerHTML = "C'est bon !";
        errorName.style.color = "green";
    }




    // Vérification du prénom

    if (prenom.value.trim() == "")  // trim retire les espaces au debut et entre les mots
    {
        var errorPrenom = document.getElementById("errorPrenom");
        errorPrenom.innerHTML = "Ce champs est requis";  //inner html permet d'afficher du texte dans la page html
        errorPrenom.style.color = "red";
        event.preventDefault(); 
    }else if (RegExpName.test (prenom.value) == false) // .test permet de vérifier la valeur de la variable par rapport au regex 
    {
        errorPrenom = document.getElementById("errorPrenom");
        errorPrenom.innerHTML = "Ce champs doit comporter des lettres uniquement";
        errorPrenom.style.color = "orange";
        event.preventDefault();
    }else
    {
        errorPrenom = document.getElementById("errorPrenom");
        errorPrenom.innerHTML = "C'est bon !";
        errorPrenom.style.color = "green";
    }



    // Vérification du sexe (radio)

    if ((!male ) && (!female))
    {
        var error = document.getElementById("error");
        error.innerHTML = "Ce champs est requis";
        error.style.color = "red";
        event.preventDefault();
    }else
    {
        error = document.getElementById("error");
        error.innerHTML = "C'est bon !";
        error.style.color = "green"; 
    }


    //Vérification de la date

    if (date.value.trim() == "")  
    {
        var errorDate = document.getElementById("errorDate");
        errorDate.innerHTML = "Ce champs est requis";
        errorDate.style.color = "red";
        event.preventDefault();
    }else if (RegExpDate.test (date.value) == false)
    {
        errorDate = document.getElementById("errorDate");
        errorDate.innerHTML = "Ce champs doit être de la forme jj/mm/aa";
        errorDate.style.color = "orange";
        event.preventDefault();
    }else
    {
        errorDate = document.getElementById("errorDate");
        errorDate.innerHTML = "C'est bon !";
        errorDate.style.color = "green"; 
    }


    /*//Vérification du code postal

    if (cp.value.trim() == "")  
    {
        var errorCode = document.getElementById("errorCode");
        errorCode.innerHTML = "Ce champs est requis";
        errorCode.style.color = "red";
        event.preventDefault();
    }else if (RegExpCp.test (cp.value) == false)
    {
        errorCode = document.getElementById("errorCode");
        errorCode.innerHTML = "Ce champs peut comporter 5 chiffres uniquement";
        errorCode.style.color = "orange";
        event.preventDefault();
    }else
    {
        errorCode = document.getElementById("errorCode");
        errorCode.innerHTML = "C'est bon !";
        errorCode.style.color = "green"; 
    }
    

    //Vérification de l'adresse

    if (adresse.value.trim() == "")  
    {
        var errorAdresse = document.getElementById("errorAdresse");
        errorAdresse.innerHTML = "Ce champs est requis";
        errorAdresse.style.color = "red";
        event.preventDefault();
    }else if (RegExpAdresse.test (adresse.value) == false)
    {
    errorAdresse = document.getElementById("errorAdresse");
    errorAdresse.innerHTML = "Ce champs peut comporter des lettres et des chiffres";
    errorAdresse.style.color = "orange";
    event.preventDefault();
    }else
    {
        errorAdresse = document.getElementById("errorAdresse");
        errorAdresse.innerHTML = "C'est bon !";
        errorAdresse.style.color = "green"; 
    }*/


    // Vérification de l'email

    if (email.value.trim() == "")  
    {
        var errorEmail = document.getElementById("errorEmail");
        errorEmail.innerHTML = "Ce champs est requis";
        errorEmail.style.color = "red";
        event.preventDefault();
    }else if (RegExpMail.test (email.value) == false)
    {
    errorEmail = document.getElementById("errorEmail");
    errorEmail.innerHTML = "Entrez une adresse email valide";
    errorEmail.style.color = "orange";
    event.preventDefault();
    }else
    {
        errorEmail = document.getElementById("errorEmail");
        errorEmail.innerHTML = "C'est bon !";
        errorEmail.style.color = "green"; 
    }


    // Vérification du sujet selectionner
    if (demande.value == "Sélectionnez une option")
    {
        var errorDemande = document.getElementById("errorDemande");
        errorDemande.innerHTML = "Vous devez sélectionner une option!";
        errorDemande.style.color = "red";
        event.preventDefault();
    }else
    {
        errorDemande = document.getElementById("errorDemande");
        errorDemande.innerHTML = "ok!";
        errorDemande.style.color = "green";

    }

    //Vérification du message
    if (message.value.trim() == "") { 
        var errorMessage = document.getElementById("errorMessage");
        errorMessage.innerHTML = "Ce champs est requis.";
        errorMessage.style.color = "red";
        e.preventDefault(); 
    }else{
        var errorMessage = document.getElementById("errorMessage");
        errorMessage.innerHTML = "ok!";
        errorMessage.style.color = "green";
    }

    // Vérification du checkbox (traitement informatique)

    if (checkbox.checked == false )
    {
        var errorCheckbox = document.getElementById("errorCheckbox");
        errorCheckbox.innerHTML = "Vous devez cocher cette case !";
        errorCheckbox.style.color = "red";
        event.preventDefault();
    } 
} );






