DROP TABLE tbl_cbt_quiz;
DROP TABLE tbl_cbt_detail;

CREATE TABLE tbl_cbt_quiz (
    CB_SEQ	NUMBER		    PRIMARY KEY,
    CB_QUIZ	nVARCHAR2(1000)	NOT NULL
);

CREATE TABLE tbl_cbt_detail (
    D_SEQ	    NUMBER		    PRIMARY KEY,
    D_CD_SEQ	NUMBER	        NOT NULL,
    D_ANSWER	nVARCHAR2(1000)	NOT NULL,
    D_OK	    VARCHAR2(1) DEFAULT 'N'
);

SELECT COUNT(*) FROM tbl_cbt_quiz ;
SELECT * FROM tbl_cbt_quiz;

SELECT COUNT(*) FROM tbl_cbt_detail ;
SELECT * FROM tbl_cbt_detail;

CREATE SEQUENCE SEQ_CBTQUIZ
START WITH 1
INCREMENT BY 1;

CREATE SEQUENCE SEQ_CBTDETAIL
START WITH 1
INCREMENT BY 1;

ALTER TABLE tbl_cbt_detail
ADD CONSTRAINT FK_CBT
FOREIGN KEY (D_CD_SEQ)
REFERENCES tbl_cbt_quiz(CB_SEQ);

SELECT *
FROM tbl_cbt_quiz, tbl_cbt_detail
WHERE CB_SEQ = D_CD_SEQ;

COMMIT;