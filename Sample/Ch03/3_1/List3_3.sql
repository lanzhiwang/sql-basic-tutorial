CREATE TABLE NullTbl
  (
     col_1 INTEGER
  );

---

INSERT INTO NullTbl VALUES (NULL);
INSERT INTO NullTbl VALUES (NULL);
INSERT INTO NullTbl VALUES (NULL);

---

SELECT COUNT(*), COUNT(col_1)
FROM NullTbl;