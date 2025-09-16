            IDENTIFICATION DIVISION.
            PROGRAM-ID. LINKAGE-SECTION.

            DATA DIVISION.
            WORKING-STORAGE SECTION. *> this section is used in main f and can send values
            01 MY-NUMBER          PIC 99 VALUE 5.

            PROCEDURE DIVISION.
      * *    
                DISPLAY "BEFORE CALL: " MY-NUMBER
                CALL 'SUBPROG' USING MY-NUMBER *> format for calling a func and having parameters
                DISPLAY "AFTER CALL: " MY-NUMBER *> the numvar is updated like a pointer
                STOP RUN.
        
            IDENTIFICATION DIVISION.
            PROGRAM-ID. SUBPROG.
        
            DATA DIVISION.
            LINKAGE SECTION. *> this section is used to receive values from main
            01 PASSED-NUMBER    PIC 99.
        
            PROCEDURE DIVISION USING PASSED-NUMBER.
                ADD 10 TO PASSED-NUMBER GIVING PASSED-NUMBER
                GOBACK.
        
                END PROGRAM SUBPROG.

       