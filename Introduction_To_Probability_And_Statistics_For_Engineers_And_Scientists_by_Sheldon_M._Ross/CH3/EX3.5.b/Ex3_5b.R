maths = 4;
chemistry = 3;
history = 2;
language = 1;
total_arrangements = factorial(4)*factorial(maths)*factorial(chemistry)*factorial(history)*factorial(language);
cat("The total number of possible arrangements is ",total_arrangements)