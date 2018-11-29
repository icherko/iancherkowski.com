const express = require('express');
const app = express();
const port = 80;
var path = require("path");

app.use(express.static(path.join(__dirname, "/")));

app.use("/", express.static(path.join(__dirname, "/index.html")));

app.use(function (req, res, next) {
  res.status(404).send("Sorry can't find that!")
})

app.listen(port, () => console.log(`Example app listening on port ${port}!`));

