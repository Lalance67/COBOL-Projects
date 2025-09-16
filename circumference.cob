      * get the radius, calculate the circumference and area
      * and print it
        IDENTIFICATION DIVISION.
        PROGRAM-ID. CIRCUMFERENCE.

        DATA DIVISION.
        WORKING-STORAGE SECTION.
      * 78 is a const
        78 PI                   VALUE 3.14.
        01 RADIUS               PIC 9(3)V99.
        01 CIRCUMFERENCE        PIC 9(5)V99.
        01 AREA1                PIC 9(6)V99.
        01 C-DISP               PIC ZZZ9.99.
        01 A-DISP               PIC ZZZ9.99.
      * z ignore/supresses 0s and replace with spaces unlike 9
      * which always shows the digit
        
        PROCEDURE DIVISION.
            DISPLAY "ENTER RADIUS (E.G. 12.34):"
            ACCEPT RADIUS
            DISPLAY ""

      * you can only multiply 2 terms
            MULTIPLY PI BY RADIUS GIVING CIRCUMFERENCE
            MULTIPLY CIRCUMFERENCE BY 2 GIVING CIRCUMFERENCE
            MULTIPLY PI BY RADIUS GIVING AREA1
            MULTIPLY AREA1 BY RADIUS GIVING AREA1

            MOVE CIRCUMFERENCE TO C-DISP
            MOVE AREA1 TO A-DISP
      * move to a z pic clause to remove 0s

            DISPLAY "CIRCUMFERENCE = " C-DISP
            DISPLAY ""
            DISPLAY "AREA = " A-DISP

            STOP RUN.

        
        