use st_enroll_lab3

SELECT c.course, t.bookISBN, t.title
FROM COURSE c, BOOK_ADOPTION b, TEXTBOOK t
WHERE c.course = b.course 
  AND b.bookISBN = t.bookISBN
  AND c.course IN (
        SELECT course
        FROM BOOK_ADOPTION
        WHERE course = c.course
        GROUP BY course
        HAVING COUNT(DISTINCT bookISBN) >= 1
  )
ORDER BY t.title;



SELECT DISTINCT c.dept
FROM COURSE c
WHERE NOT EXISTS (
      SELECT bookISBN
      FROM BOOK_ADOPTION
      WHERE course IN (
            SELECT course
            FROM COURSE
            WHERE dept = c.dept
      )
      AND bookISBN NOT IN (
            SELECT t.bookISBN
            FROM TEXTBOOK t
            WHERE t.publisher = 'McGrawHill'
      )
);



SELECT t.bookISBN, t.title
FROM TEXTBOOK t, COURSE c, BOOK_ADOPTION b
WHERE b.course = c.course 
  AND t.bookISBN = b.bookISBN
  AND c.dept IN (
        SELECT c.dept
        FROM COURSE c, ENROLL e
        WHERE c.course = e.course
        GROUP BY c.dept
        HAVING COUNT(DISTINCT e.regno) >= ALL (
              SELECT COUNT(DISTINCT f.regno)
              FROM ENROLL f, COURSE d
              WHERE f.course = d.course
              GROUP BY d.dept
        )
);

-- Add extra book adoption so a course has >=2 books
INSERT INTO BOOK_ADOPTION VALUES (101, 1, 1002);
INSERT INTO BOOK_ADOPTION VALUES (101, 1, 1003);

-- Add another adoption for another course
INSERT INTO BOOK_ADOPTION VALUES (102, 1, 1001);

-- Update publishers so Query 2 works with 'McGrawHill'
UPDATE TEXTBOOK
SET publisher = 'McGrawHill'
WHERE bookISBN = 1002;

UPDATE TEXTBOOK 
SET publisher = 'McGrawHill'
WHERE bookISBN = 1003;

-- Add more enrollments so department student count comparison works
INSERT INTO ENROLL VALUES ('S101', 102, 1, 78);
INSERT INTO ENROLL VALUES ('S102', 102, 1, 82);
INSERT INTO ENROLL VALUES ('S103', 101, 1, 74);
INSERT INTO ENROLL VALUES ('S104', 103, 2, 70);