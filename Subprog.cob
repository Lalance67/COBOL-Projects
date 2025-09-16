        IDENTIFICATION DIVISION.
        PROGRAM-ID. MULTI-PARAMETERS.

        DATA DIVISION.
        WORKING-STORAGE SECTION.
        01 NUM1                 PIC 99 VALUE 5.
        01 NUM2                 PIC 99 VALUE 6.
        01 RESULTS              PIC 99.

        PROCEDURE DIVISION.
            DISPLAY NUM1 " + " NUM2
            CALL 'SUBPROG' USING NUM1 NUM2 RESULTS
            DISPLAY "RESULTS = " RESULTS
            STOP RUN.
            
        IDENTIFICATION DIVISION.
        PROGRAM-ID. SUBPROG.
        
        DATA DIVISION.
        LINKAGE SECTION.
        01 P-NUM1       PIC 99.
        01 P-NUM2       PIC 99.
        01 P-RES        PIC 999.

        PROCEDURE DIVISION USING P-NUM1 P-NUM2 P-RES. *> DONT FORGET THE DOT
            COMPUTE P-RES = P-NUM1 + P-NUM2
            GOBACK.

            END PROGRAM SUBPROG.
        