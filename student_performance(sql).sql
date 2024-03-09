select * from public.students;


SELECT COUNT(*) 
FROM public.students;

-- sorting values by race/ethnicity

SELECT * FROM public.students
ORDER BY "race/ethnicity";

-- calculating average scores

SELECT AVG("math score") AS "average math score", AVG("reading score") AS "average reading score", AVG("writing score") AS "average reading score"
FROM public.students;

-- calculating average scores by test preparation course

SELECT "gender", "test preparation course", "race/ethnicity", AVG("math score") AS "avg math score", AVG("reading score") AS "avg reading score", 
        AVG("writing score") AS "avg writing score"
FROM public.students
GROUP BY "gender", "race/ethnicity", "test preparation course"
ORDER BY "gender", "race/ethnicity";

-- Counting by gender

SELECT "gender", 
       COUNT("gender")
FROM public.students
GROUP BY "gender";

-- Counting by race/ethnicity

SELECT "race/ethnicity", COUNT("race/ethnicity")
FROM public.students
GROUP BY "race/ethnicity"
ORDER BY "race/ethnicity"; 

-- Counting by parental level of education

SELECT "parental level of education", COUNT("parental level of education")
FROM public.students
GROUP BY "parental level of education"
ORDER BY "parental level of education"; 

-- Counting by lunch

SELECT "lunch", COUNT("lunch")
FROM public.students
GROUP BY "lunch"
ORDER BY "lunch";

-- Counting by test preparation course

SELECT "test preparation course", COUNT("test preparation course")
FROM public.students
GROUP BY "test preparation course"
ORDER BY "test preparation course"
