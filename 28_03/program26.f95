PROGRAM p26
    IMPLICIT NONE
    REAL::maximal,minimal,il_skal
    INTEGER, DIMENSION(2,3)::matrixA
    LOGICAL, DIMENSION(2,3)::MASK
    INTEGER, DIMENSION(3,2)::matrixB
    INTEGER, DIMENSION(2,2)::matrixAB

    INTEGER, DIMENSION(3)::vectorC
    INTEGER, DIMENSION(3)::vectorD   
    INTEGER, DIMENSION(6)::vectorE

    INTEGER, DIMENSION(1:2)::indeksy

    matrixA(1,1)=1
    matrixA(1,2)=2
    matrixA(1,3)=3
    matrixA(2,1)=4
    matrixA(2,2)=5
    matrixA(2,3)=6

    maximal = MAXVAL(matrixA)
    indeksy = MAXLOC(matrixA)
    PRINT*,"max matrixA(",indeksy(1), ",",indeksy(2),")", maximal
    minimal = MINVAL(matrixA)
    indeksy = MINLOC(matrixA)
    PRINT*,"min matrixA(",indeksy(1), ",",indeksy(2),")", minimal

    vectorE = PACK(matrixA,MASK)
    vectorE = PACK(matrixA, .TRUE.)
    PRINT*
    PRINT*, "vectorE=", vectorE

    vectorC = PACK(matrixA, matrixA<=3)
    vectorD = PACK(matrixA, matrixA>3)
    il_skal = DOT_PRODUCT(vectorC, vectorD)
    PRINT*
    PRINT*, "vectorC=", vectorC
    PRINT*, "vectorD=", vectorD
    PRINT*, "iloczyn skalarny vectorC razy vectorD = ", il_skal

STOP
END PROGRAM p26