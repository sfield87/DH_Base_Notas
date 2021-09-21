const express = require('express');
const app = express()
const path = require('path');
const pathPublic = path.resolve(__dirname, 'public');

app.use(express.static(pathPublic));
app.listen(process.env.PORT || 3000);

app.get('/', (req, res) => {
    res.sendFile(path.join(__dirname, '/views/home.html')),
    console.log("Servidor Levantado en puerto 3000")
});

app.get('/login', (req, res) => {
    res.sendFile(path.join(__dirname, '/views/login.html'))

});

app.get('/register', (req, res) => {
    res.sendFile(path.join(__dirname, '/views/register.html'))

});