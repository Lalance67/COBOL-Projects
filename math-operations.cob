        IDENTIFICATION DIVISION.
        PROGRAM-ID. MATH-OPERATIONS.

        DATA DIVISION.
        WORKING-STORAGE SECTION.
        78 A                     VALUE 4.
        78 B                     VALUE 4.
        78 C                     VALUE 2.
        78 D                     VALUE 2.
        78 E                     VALUE -2.
        78 F                     VALUE 10.
        78 G                     VALUE 1.57. *>radian of 90 degrees
        01 RESULTS               PIC Z9.99.
        01 RANDOM1               PIC 99.99.

        PROCEDURE DIVISION.
      * add
      *     ADD A TO B GIVING RESULTS
      *     or
      *     COMPUTE RESULTS = A + B

      * minus
      *     SUBTRACT A FROM B GIVING RESULTS
      *     or
      *     COMPUTE RESULTS = A - B

      * multiply
      *     MULTIPLY A BY B GIVING RESULTS
      *     or
      *     COMPUTE RESULTS = A * B
      * divide
      *     DIVIDE A BY B GIVING RESULTS
      *     or
      *     COMPUTE RESULTS = A / B


      * compute function
      *     COMPUTE RESULTS = (A + B) * C / D
      *
      

      *     COMPUTE RESULTS = A ** 2                               *> A squared
      *     COMPUTE RESULTS = A ** 0.5                             *> square root of A
      *     COMPUTE RESULTS = FUNCTION SQRT(A)                     *> square root of A
      *     COMPUTE RESULTS = FUNCTION ABS(E)                      *> absolute value
      *     COMPUTE RESULTS = FUNCTION EXP(C)                      *> exponential function
      *     COMPUTE RESULTS = FUNCTION LOG(F)                      *> logarithmic
      *     COMPUTE RESULTS = FUNCTION LOG(F) / FUNCTION LOG(10)   *> logarithmic base 10
      *     COMPUTE RESULTS = FUNCTION SIN(G)                      *> sine
      *     COMPUTE RESULTS = FUNCTION TAN(G)                      *> tangent
      *     COMPUTE RESULTS = FUNCTION COS(G)                      *> cosine

      *     COMPUTE RANDOM-SEED = FUNCTION CURRENT-DATE            *> random number
      *     COMPUTE RANDOM1 = 1 + FUNCTION RANDOM * 10             *>(now working)
            

      *     DISPLAY RESULTS
      *     DISPLAY RANDOM1 (not working/not generating seed)
            STOP RUN.