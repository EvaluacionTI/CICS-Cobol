      ******************************************************************
      * Author     :
      * Date       : 06/12/2018
      * Purpose    :
      * Tectonics  : Un p�rrafo se ejecuta hasta que la condici�n dada
      *  se vuelva verdadera..
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. QG1CX031.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 WS-TEMA          PIC X(40).
       01 WS-NUM1          PIC 9(2) VALUE 0.
       01 WS-TOT           PIC 9(2) VALUE 20.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            MOVE "PERFORM UNTIL" TO WS-TEMA

            DISPLAY ".....[ " WS-TEMA " ]....."
            DISPLAY "=============================="
            DISPLAY " "
      *
            PERFORM CONTADOR WITH TEST AFTER UNTIL WS-NUM1 > WS-TOT.

            STOP RUN.

       CONTADOR.
            DISPLAY 'WS-NUM1 = ' WS-NUM1
            ADD 1 TO WS-NUM1.

       END PROGRAM QG1CX031.
