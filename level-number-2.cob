        IDENTIFICATION DIVISION.
        PROGRAM-ID. LEVEL-NUMBER-2.

        DATA DIVISION.
        WORKING-STORAGE SECTION.
        01 STUDENT.
            02 STUDENT-DETAIL OCCURS 2 TIMES.
                03 NAME          PIC X(5).
                03 FILLER        PIC X VALUE "".
                03 AGE           PIC 9(2).
                03 FILLER        PIC X VALUE "".
                03 GRADE         PIC 9V9.
      * 01 NEWLINE               PIC XX VALUE X"0D0A".


        PROCEDURE DIVISION.
            
            MOVE "LANCE" TO NAME(1)
            MOVE 19 TO AGE(1)
            MOVE 1.2 TO GRADE(1)

            MOVE "ANN" TO NAME(2)
            MOVE 18 TO AGE(2)
            MOVE 2.0 TO GRADE(2)
            
            DISPLAY NAME(1) " " AGE(1) " " GRADE(1). 
            DISPLAY NAME(2) " " AGE(2) " " GRADE(2).

            STOP RUN.