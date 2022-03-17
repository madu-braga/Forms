const form = document.getElementsByID('form');
const username = document.getElementsByID('username');
const email = document.getElementsByID('email');
const password = document.getElementsByID('password');
const password2 = document.getElementsByID('password2');

form.addEventListener('submit', function(e){
    e.preventDefault();
    
    console.log(username);
});
