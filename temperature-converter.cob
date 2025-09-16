      * ask the user if f to c or c to f. convert and print
        IDENTIFICATION DIVISION.
        PROGRAM-ID. TEMPERATURE-CONVERTER.

        DATA DIVISION.
        WORKING-STORAGE SECTION.
        01 CELCIUS              PIC 999V99.
        01 FARENHEIT            PIC 999V99.
        01 ANSWER               PIC 9.
        01 DISP                 PIC ZZ9.99.

        PROCEDURE DIVISION.
            DISPLAY "[1] CELCIUS TO FARENHEIT"
            DISPLAY "[2] FARENHEIT TO CELCIUS"
            DISPLAY "ENTER YOUR CHOICE: "
            ACCEPT ANSWER

            DISPLAY ""

            IF ANSWER = 1
                DISPLAY "ENTER CELCIUS:"
                ACCEPT CELCIUS

                COMPUTE FARENHEIT = (((9.0 / 5) * CELCIUS) + 32)
                MOVE FARENHEIT TO CELCIUS
                DISPLAY "FARENHEIT = " DISP
            ELSE 
                IF ANSWER = 2
                    DISPLAY "ENTER FARENHEIT:"
                    ACCEPT FARENHEIT

                    COMPUTE CELCIUS = ((5.0 / 9) * (FARENHEIT - 32))
                    MOVE CELCIUS TO DISP
                    DISPLAY "CELCIUS = " DISP
                ELSE 
                    DISPLAY "INVALID ANSWER"
                END-IF
            END-IF.

            STOP RUN.
                