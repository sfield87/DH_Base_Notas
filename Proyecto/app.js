const express = require('express');
const app = express()
const path = require('path');
const pathPublic = path.resolve(__dirname, 'public');

app.use(express.static(pathPublic));
app.listen(3030);

app.get('/', (req, res) => {
    res.sendFile(path.join(__dirname, '/public/views/home.html')),
    console.log("Servidor Levantado en puerto 3030")
});

app.get('/home_alter', (req, res) => {
    res.sendFile(path.join(__dirname, '/public/views/home_mio.html'))

});

app.get('/registrar', (req, res) => {
    res.sendFile(path.join(__dirname, '/public/views/registrar.html'))

});

app.get('/login', (req, res) => {
    res.sendFile(path.join(__dirname, '/public/views/login.html'))

});

app.get('/contacto', (req, res) => {
    res.sendFile(path.join(__dirname, '/public/views/contacto.html'))

});
app.get('/register', (req, res) => {
    res.sendFile(path.join(__dirname, '/public/views/register.html'))

});