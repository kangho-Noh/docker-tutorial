const express = require('express');

//Constants
const PORT = 8080;

//App
const app = express();
app.get('/', (req, res) => {
    res.send('hi');
});

app.listen(PORT);
console.log(`Server is Running`)