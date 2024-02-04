# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

departments = [
  {dname: 'ACCOUNTING', loc: 'NEW YORK'},
  {dname: 'RESEARCH', loc: 'DALLAS'},
  {dname: 'SALES', loc: 'CHICAGO'},
  {dname: 'OPERATIONS', loc: 'BOSTON'}
]

Department.insert_all(departments)

Employee.create({ ename: 'KING', job: 'PRESIDENT',
hireddate: Date.strptime('17-11-1981', '%d-%m-%Y').strftime('%d-%m-%Y'),
sal: 5000, comm: 10})

Employee.create({ ename: 'BLAKE', job: 'MANAGER', mgr: Employee.first,
hireddate: Date.strptime('1-5-1981', '%d-%m-%Y').strftime('%d-%m-%Y'),
sal: 2850, comm: 30, department: Department.first })

Employee.create({ ename: 'CLARK', job: 'MANAGER', mgr: Employee.first,
hireddate: Date.strptime('9-6-1981', '%d-%m-%Y').strftime('%d-%m-%Y'),
sal: 5000, comm: 10, department: Department.second })

Employee.create({ ename: 'JONES', job: 'MANAGER', mgr: Employee.first,
hireddate: Date.strptime('2-4-1981', '%d-%m-%Y').strftime('%d-%m-%Y'),
sal: 2975, comm: 20, department: Department.second })

Employee.create({ ename: 'SCOTT', job: 'ANALYST', mgr: Employee.second,
hireddate: Date.strptime('13-07-1987', '%d-%m-%Y').strftime('%d-%m-%Y'),
sal: 3000, comm: 20, department: Department.third })

Employee.create({ ename: 'FORD', job: 'ANALYST', mgr: Employee.third,
hireddate: Date.strptime('3-12-1981', '%d-%m-%Y').strftime('%d-%m-%Y'),
sal: 3000, comm: 20, department: Department.fourth })

Employee.create({ ename: 'SMITH', job: 'CLERK', mgr: Employee.fourth,
hireddate: Date.strptime('17-12-1980', '%d-%m-%Y').strftime('%d-%m-%Y'),
sal: 800, comm: 20, department: Department.first })
