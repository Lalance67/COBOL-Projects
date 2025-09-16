        IDENTIFICATION DIVISION.
        PROGRAM-ID. FILLER-PROG.

        DATA DIVISION.
        WORKING-STORAGE SECTION.
        01 FULL-NAME.
            05 FIRST-NAME       PIC X(12) VALUE "LANCE NATHAN".
            05 FILLER           PIC X VALUE "".
            05 LAST-NAME        PIC X(8) VALUE "DE BELEN".

        PROCEDURE DIVISION.
            DISPLAY FULL-NAME
            STOP RUN.
        