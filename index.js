const inquirer = require('inquirer');
const mysql = require("mysql2");

const db = mysql.createConnection(
    {
        host: "localhost",
        user:"root",
        password:"p4ssword",
        database: "employee_db"
    },
    console.log("Database connected")
);



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
    const choice = data.menu
    switch(data.menu){
        case "View all employees":
            selectEmployee();
            break;
        case "Add employee":
            addEmployee();
            break;
        case "Update employee role":
            updateEmployee();
            break;
        case "View all roles":
            selectRole();
            break;
        case "Add role":
            addRole();
            break;
        case "View all departments":
            selectDepartment();
            break;
        case "Add department":
            addDepartment();
            break;
        case "Exit":
            process.exit();

    }

});
}

function selectDepartment() {
    db.query('SELECT * FROM departments', function (err, res){
        console.table(res);
        startApp();
    });
};

function selectEmployee() {
    db.query('SELECT * FROM employees', function (err, res){
        console.table(res);
        startApp();
    });
};


function selectRole () {
    db.query('SELECT * FROM roles', function (err, res){
        console.table(res);
        startApp();
    });
};


function addDepartment () {
    inquirer
    .prompt([
        {
            name: 'newDepartment',
            message: 'Set name for new department',
            type: 'input'
            
        }
    ])
    .then((data) => {
        db.query('INSERT INTO departments(name) VALUES(?)' , data.newDepartment),
        (err) => {
            if (err) throw err;
            console.log(`${department} added to database`)
        }
        startApp();
    })
}

function addRole() {
    db.query('SELECT * FROM department' , (err,res) => {
        if (err) throw err;
        inquirer.prompt([
            {
                name: 'title',
                message: 'Set name for new role',
                type: 'input'
                
            },
            {
                name: 'salary',
                message: 'set role salary',
                type: 'input'
                
            },
            {
                name: 'department',
                message: 'Set roles department',
                type: "list",
                choices: () {
                    const options = [];
                    for (i = 0; i < response.length; i++) {
                        options.push(response[i].department_name);
                      }
                      return options;
                }
                
            }
        ])
        .then((data) =>{
            
        })
    }),

}



function addEmployee(){

}


    startApp();