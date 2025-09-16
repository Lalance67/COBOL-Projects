        IDENTIFICATION DIVISION.
        PROGRAM-ID. RENAME.

        DATA DIVISION.
        WORKING-STORAGE SECTION.
        01 FULL-NAME.
            05 FIRST-NAME       PIC X(4).
      *     05 FILLER           PIC X VALUE "".
            05 LAST-NAME        PIC X(9).

        66 NAME-ALIAS RENAMES FIRST-NAME THRU LAST-NAME. *> rename is like redefines but
                                                         *> rename groups vars (like mini redefines)
                                                         *> ALSO THE 66 VAR MUST BE BELOW
                                                         *> THE STRUCT
        PROCEDURE DIVISION.
            MOVE "JUAN" TO FIRST-NAME
            MOVE "DELA CRUZ" TO LAST-NAME
            DISPLAY "FULL-NAME: " FIRST-NAME " " LAST-NAME
            DISPLAY "NAME-ALIAS: " NAME-ALIAS
            STOP RUN.
        