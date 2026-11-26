const loginForm = document.getElementById('loginForm');

if (loginForm) {
    loginForm.addEventListener('submit', function (event) {
        event.preventDefault();

        const email = document.getElementById('email').value.trim();
        const password = document.getElementById('password').value;
        const message = document.getElementById('loginMessage');

        if (!email || !password) {
            message.textContent = 'Todos los campos son obligatorios.';
            message.style.color = 'red';
            return;
        }

        if (password.length < 6) {
            message.textContent = 'La contraseña debe tener al menos 6 caracteres.';
            message.style.color = 'red';
            return;
        }

        message.textContent = 'Validación correcta. La autenticación no está disponible.';
        message.style.color = 'green';
    });
}
