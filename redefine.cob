        IDENTIFICATION DIVISION.
        PROGRAM-ID. REDEFINE.

        DATA DIVISION.
        WORKING-STORAGE SECTION.
        01 BIG-FIELD            PIC X(6) VALUE "ABC123". *>dont forget to "" the str

        01 SMALL-FIELD REDEFINES BIG-FIELD. *> 'redefines' link the variable together
                                                
            05 PART1                       PIC X(3).
            05 PART2                       PIC 9(3).

        PROCEDURE DIVISION.
            DISPLAY "BIG-FIELD: " BIG-FIELD
            DISPLAY "PART1: " PART1
            DISPLAY "PART2: " PART2

      *     change one and the other change too
      *     MOVE "XYZ789" TO BIG-FIELD

            MOVE "XYZ" TO PART1
            MOVE 789 TO PART2

            DISPLAY "BIG-FIELD: " BIG-FIELD
            DISPLAY "PART1: " PART1
            DISPLAY "PART2: " PART2

            STOP RUN.

            END PROGRAM REDEFINE.
