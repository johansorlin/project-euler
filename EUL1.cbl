       IDENTIFICATION DIVISION.

       PROGRAM-ID. EUL1.

       DATA DIVISION.

       WORKING-STORAGE SECTION.
                                                   
       01  COUNTER             PIC 9(4) BINARY.
       01  SUM-OF-MULTIPLES    PIC 9(7) BINARY.

       PROCEDURE DIVISION.

       MOVE 0 TO COUNTER
                 SUM-OF-MULTIPLES
       
       PERFORM VARYING COUNTER FROM 1 BY 1
         UNTIL COUNTER = 1000
           IF FUNCTION MOD(COUNTER, 3) = 0
             OR FUNCTION MOD(COUNTER, 5) = 0
               ADD COUNTER TO SUM-OF-MULTIPLES
           END-IF
       END-PERFORM
       
       DISPLAY SUM-OF-MULTIPLES

       STOP RUN.