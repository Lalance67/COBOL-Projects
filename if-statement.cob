        IDENTIFICATION DIVISION.
        PROGRAM-ID. IF-STATEMENT.

        DATA DIVISION.
        WORKING-STORAGE SECTION.
        01 AGE PIC 99 VALUE 11.

        PROCEDURE DIVISION.
            IF AGE < 13
                DISPLAY "CHILD"
            ELSE
                IF AGE < 18
                    DISPLAY "TEENAGER"
                ELSE
                    DISPLAY "ADULT"
                END-IF
            END-IF.