const express = require('express');
const dotenv = require('dotenv');
dotenv.config();
const app = express();

app.get('/home', (req, res) => {
   return res.send('Hello Welcome to Docker shubham World!');
});


app.get('/info', (req, res) => {
       return res.send('Hello Welcome to Docker info World!');
    });
    
app.listen(process.env.PORT, () => {
       console.log(`Server running on port ${process.env.PORT}`);
       });