--Questão 1)

SELECT u.id, u.name, c.name AS city
FROM users u
JOIN cities c
ON u."cityId"=c.id
WHERE c.name = 'Rio de Janeiro'
ORDER BY id;

--Questão 2)

SELECT te.id, u1.name as writer, u2.name as recipient, te.message
FROM testimonials te
JOIN users u1
ON te."writerId" = u1.id
JOIN users u2
ON te."recipientId" = u2.id 
ORDER BY te.id;

--Questão 3)

SELECT u.id, u.name, c.name as course, s.name as school, e."endDate"
FROM educations e
JOIN users u
ON e."userId"=u.id
JOIN courses c
ON c.id=e."courseId"
JOIN schools s
ON e."schoolId"=s.id
WHERE u.id = 30;

--Questão 4) 

SELECT u.id, u.name, r.name as role, c.name as company, e."startDate"
FROM experiences e
JOIN companies c
ON e."companyId"=c.id
JOIN users u
ON e."userId" = u.id
JOIN roles r
ON e."roleId"=r.id
WHERE e."endDate" IS NULL 
AND u.id=50;
