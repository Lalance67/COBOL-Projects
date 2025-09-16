        IDENTIFICATION DIVISION.
        PROGRAM-ID. VARIABLES.

        DATA DIVISION.
        WORKING-STORAGE SECTION.
        01 STRUCT.
            02 NAME1       PIC X(6) VALUE "LANCE".
            02 AGE         PIC 9(2) VALUE 19.
        66 REN RENAMES NAME1 THRU AGE. *>MUST BE BELOW THE STRUCT
        01 GRADE       PIC 9V99 VALUE 1.01.
      * 01 GRADE-DISP  PIC 9.99.
        78 PI          VALUE 3.14. *>CONSTANT VAR
        
        
        PROCEDURE DIVISION.
      *     DISPLAY "NAME: "NAME.
      *     DISPLAY "".
      *     DISPLAY "AGE: "AGE.
      *     DISPLAY "".
      *     MOVE GRADE TO GRADE-DISP
      *     DISPLAY "GRADE: "GRADE-DISP.
            DISPLAY "NAME: " NAME1 " | AGE: " AGE " | GRADE: " GRADE
            DISPLAY PI
            DISPLAY REN
            STOP RUN.
