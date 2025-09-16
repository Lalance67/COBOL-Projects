      * get a & b, calculate the hypotenuse then print it

        IDENTIFICATION DIVISION.
        PROGRAM-ID. HYPOTENUSE.

        DATA DIVISION.
        WORKING-STORAGE SECTION.
        01 A                    PIC 99V99.
        01 A1                   PIC 99V99.
        01 B                    PIC 99V99.
        01 B1                   PIC 99V99.
        01 SUM1                 PIC 99V99.
        01 HYP                  PIC Z99.99.
      * 01 HYP-D                PIC Z99.99.

        PROCEDURE DIVISION.
            DISPLAY "ENTER A (E.G. 12.34):"
            ACCEPT A
            DISPLAY ""

            DISPLAY "ENTER B (E.G. 12.34):"
            ACCEPT B
            DISPLAY ""
        
      *     compute one by one
            MULTIPLY A BY A GIVING A1
            MULTIPLY B BY B GIVING B1
            ADD A1 TO B1 GIVING SUM1
            COMPUTE HYP = FUNCTION SQRT(SUM1)
      *     check sum
      *     DISPLAY SUM1

      *     compute directly
      *     COMPUTE HYP = FUNCTION SQRT((A * A) + (B * B))

      *     MOVE HYP TO HYP-D (no need)

            DISPLAY "HYPOTENUSE: " HYP
           
            STOP RUN.
        
        