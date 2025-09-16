        IDENTIFICATION DIVISION.
        PROGRAM-ID. USER-INPUT.

        DATA DIVISION.
        WORKING-STORAGE SECTION.
        01 NAME           PIC X(20).
        01 AGE            PIC 9(2).
        
        PROCEDURE DIVISION.
            DISPLAY "ENTER YOUR NAME: " 
            ACCEPT NAME
            DISPLAY ""

            DISPLAY "ENTER YOUR AGE: " 
            ACCEPT AGE
            DISPLAY ""

            DISPLAY FUNCTION TRIM(NAME) ", YOU ARE " AGE
            STOP RUN.
