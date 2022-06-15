const inquirer = require('inquirer');
const mysql = require("mysql2");

function startApp() {

inquirer
  .prompt([
    { type:'list',
    name: 'menu',
    message: 'What would you like to do ? ',
    choices: ["View all employees","Add employee","Update employee role","View all roles","Add role","View all departments","Add department","Exit"] 
    },  

])
.then((data) =>{
    switch(data.menu){
        case "View all employees":
            getEmployees();
            break;
        case "Add employee":
            addEmployee();
            break;
        case "Update employee role":
            updateEmployee();
            break;
        case "View all roles":
            getRoles();
            break;
        case "Add role":
            addRole();
            break;
        case "View all departments":
            getDepartments();
            break;
        case "Add department":
            addDepartment();
            break;
        case "Exit":
            process.exit();
            break;

    }

});
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