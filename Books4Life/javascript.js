function backHome()
{
    location.href = "Default.aspx";
}

function time()
{
    document.write("<p align='right'><i>" + Date() + "<\/i><\/p>")
}

function loginToggle()
{
    var loginDiv = document.getElementById("divLogin");    

    if (loginDiv.style.display == "block")
    {
        loginDiv.style.display = "none";
    }
    else
    {
        loginDiv.style.display = "block";
        document.getElementById("txtLoginUsername").focus();
    }
}

function hideLoginRegister() {
    var listItemRegister = document.getElementById("liRegister");
    var listItemLogin = document.getElementById("liLogin");

    listItemRegister.style.visibility = 'hidden';
    listItemLogin.style.visibility = 'hidden';
}

function showLoginRegister() {
    var listItemRegister = document.getElementById("liRegister");
    var listItemLogin = document.getElementById("liLogin");

    listItemRegister.style.visibility = 'visible';
    listItemLogin.style.visibility = 'visible';
}