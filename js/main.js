let button = document.getElementById('submit');
let newsletter = document.getElementById('newsletter');
newsletter.innerHTML = "";



button.addEventListener('click', (e) => {
    e.preventDefault();
    validateForm();
});

function validateForm() {
    let email = document.getElementById('email').value;
    let name = document.getElementById('name').value;

    if(email == '' || name == '') {
        alert('Užpildykite visus formos laukus!');
    } else {
        newsletter.innerHTML = 'Sėkmingai užsiregistravote naujienlaiškiui - ' + email;
        window.setTimeout(timer, 6000);
    }
}

function timer() {
    newsletter.innerHTML = '';
}
