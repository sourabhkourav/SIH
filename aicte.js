function myfun() {
    // var x = document.getElementById("menu");
     if (x.style.display === "block") {
         x.style.display = "none";
     } else {
         x.style.display = "block";
     }
 }
 
 
 function login(){
    var login=document.getElementById("login");
    login.style.display="block"
    var close_login=document.getElementById("login_c");
    close_login.style.display="none";
 }
 function login_close(){
    var close_login=document.getElementById("login");
    close_login.style.display="none";
 }
 function register(){
    var register=document.getElementById("register");
    register.style.display="block";
 }
 function login_c(){
    var login_open_c=document.getElementById("login_c");
    login_open_c.style.display="block";
    var close_login=document.getElementById("login");
    close_login.style.display="none";
 }
 function login_close_c(){
   var close_login=document.getElementById("login_c");
   close_login.style.display="none";
}
function register_c(){
   var register_c=document.getElementById("register_c");
   register_c.style.display="block";
   var register=document.getElementById("register");
    register.style.display="none";
}
function register_close_c(){
   var register_c=document.getElementById("register_c");
   register_c.style.display="none";
  
}



 


