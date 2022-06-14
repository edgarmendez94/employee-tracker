INSERT INTO departments(dep_name)
VALUES  ("sales"),
        ("engineering"),
        ("finance"),
        ("legal")
                    ;


INSERT INTO roles(title,salary,departments_id)
VALUES  ("sales lead",100000,1),
        ("salesperson",80000,1),
        ("lead engineer",150000,2),
        ("software engineer",120000,2),
        ("account manager",160000,3),
        ("accountant",125000,3),
        ("legal team lead",250000,4),
        ("lawyer",190000,4)
        ;


INSERT INTO employees(empl_first,empl_last,manager,empl_role)
VALUES  ("Stephen","Curry",NULL,1),
        ("Andre","Iguodala",NULL,3),
        ("Klay","Thompson",NULL,5),
        ("Otto","Porter.Jr","Stephen Curry",2),
        ("Andrew","Wiggins","Klay Thompson",4),
        ("Jordan","Poole","Andre Iguodala",6),
        ("Kevon","Looney","Draymond Green",8),
        ("Draymond","Green",NULL,7)


        ;