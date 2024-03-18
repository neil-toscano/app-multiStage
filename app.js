const express = require('express');
const app = express();
const PORT = 3000;

// Ruta GET básica
app.get('/', (req, res) => {
  res.send('Hola, mundo!');
  console.log('hello');
});

// Inicia el servidor en el puerto especificado
app.listen(PORT, () => {
  console.log(`Servidor escuchando en http://localhost:${PORT}`);
});
