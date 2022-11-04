const express = require("express");
const mysql = require("mysql2/promise");

let db = null;
const app = express();

app.use(express.json());

app.get('/jan', async (req, res, next) => {

  const [rows] = await db.query("SELECT * FROM coklatreport WHERE Production_date ='2022-01-28' ORDER BY Volume DESC LIMIT 5; ");

  res.json(rows);
  next();
});
app.get('/feb', async (req, res, next) => {

  const [rows] = await db.query("SELECT * FROM coklatreport WHERE Production_date ='2022-02-28' ORDER BY Volume DESC LIMIT 5 ;");

  res.json(rows);
  next();
});
app.get('/mac', async (req, res, next) => {

  const [rows] = await db.query("SELECT * FROM coklatreport WHERE Production_date ='2022-03-28' ORDER BY Volume DESC LIMIT 5 ;");

  res.json(rows);
  next();
});
app.get('/april', async (req, res, next) => {

  const [rows] = await db.query("SELECT * FROM coklatreport WHERE Production_date ='2022-04-28' ORDER BY Volume DESC LIMIT 5 ;");

  res.json(rows);
  next();
});
app.get('/may', async (req, res, next) => {

  const [rows] = await db.query("SELECT * FROM coklatreport WHERE Production_date ='2022-05-28' ORDER BY Volume DESC LIMIT 5 ;");

  res.json(rows);
  next();
});
app.get('/jun', async (req, res, next) => {

  const [rows] = await db.query("SELECT * FROM coklatreport WHERE Production_date ='2022-06-28' ORDER BY Volume DESC LIMIT 5 ;");

  res.json(rows);
  next();
});
app.get('/july', async (req, res, next) => {

  const [rows] = await db.query("SELECT * FROM coklatreport WHERE Production_date ='2022-07-28' ORDER BY Volume DESC LIMIT 5 ;");

  res.json(rows);
  next();
});

async function main(){
  db = await mysql.createConnection({
    host:"localhost",
    user: "root",
    password: "",
    database: "coklat",
    timezone: "+00:00",
    charset: "utf8mb4_general_ci",
  });

  app.listen(8000);
}

main();