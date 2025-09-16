        IDENTIFICATION DIVISION.
        PROGRAM-ID. LOCAL_STORAGE.

        DATA DIVISION.
        WORKING-STORAGE SECTION.
      * LOCAL-STORAGE SECTION.
        01 W-COUNTER       PIC 99 VALUE 1.

        PROCEDURE DIVISION.
            CALL 'SUBPROG'
            CALL 'SUBPROG'
            CALL 'SUBPROG'
            STOP RUN.
        END PROGRAM LOCAL_STORAGE. *> ALWAYS add this to close the program
                                   *> and add the next subprogram

        IDENTIFICATION DIVISION.
        PROGRAM-ID. SUBPROG.

        DATA DIVISION.
        LOCAL-STORAGE SECTION.  *>resets the value whenever this sub is called
        01 L-COUNTER       PIC 99 VALUE 1.

        PROCEDURE DIVISION.
            ADD 1 TO L-COUNTER GIVING L-COUNTER
            DISPLAY L-COUNTER
            GOBACK.

        END PROGRAM SUBPROG.
        
        