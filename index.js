const inquirer = require('inquirer');
const mysql = require("mysql2");

function startApp() {

inquirer
  .prompt([
    { type:'list',
    name: 'start',
    message: 'What would you like to do ? ',
    choices: ["View all employees","Add employee","Update employee role","View all roles","Add role","View all departments","Add department"] 
    },  




])

}





// view all departments 
    // select * from departments;


function getDepartments() {
    db.query("select * from departments")
    .then((results) => {
        return results;
    })
}

// view all employees
    // select * from employees;


// view all roles
    // select * from roles;