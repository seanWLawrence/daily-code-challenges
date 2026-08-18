# Second-highest distinct salary

Write a query returning each department’s second-highest **distinct** salary. Departments without at least two distinct salaries should not appear. Return columns named `department` and `second_highest_salary`, sorted by department.

Your solution must create a temporary view named `answer`.

```sh
npm test
```
