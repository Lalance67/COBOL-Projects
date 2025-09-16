        IDENTIFICATION DIVISION.
        PROGRAM-ID. LEVEL-NUMBER.

        DATA DIVISION.
        WORKING-STORAGE SECTION.
        01 STUDENT1.
            02 NAME          PIC X(5) VALUE "LANCE".
            02 FILLER        PIC X VALUE " ".
            02 AGE           PIC 9(2) VALUE 19.
            02 FILLER        PIC X VALUE " ".
            02 GRADE         PIC 9.9 VALUE 1.2.
      *     FILLER are special reserved words that is a placeholder
      *     but you cannot initialize a value for it in the procedure 
      *     division only in the data div.


        PROCEDURE DIVISION.
      *     MOVE GRADE TO GRADE-DIS
      *     prints variables by the 2nd hierarchy
            DISPLAY FUNCTION TRIM(NAME) SPACE AGE SPACE GRADE

      *     print variables by the 1st hierarchy
            DISPLAY STUDENT1
            STOP RUN.