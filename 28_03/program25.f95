PROGRAM p25
    IMPLICIT NONE
    INTEGER ::i,j
    REAL, DIMENSION(2,3)::matrixA
    REAL, DIMENSION(3,2)::matrixB    
    REAL, DIMENSION(2,2)::matrixAB
    REAL, DIMENSION(2)::vectorC=(/1,2/)
    REAL, DIMENSION(3)::vectorBC
    matrixA(1,1)=1
    matrixA(1,2)=2
    matrixA(1,3)=3
    matrixA(2,1)=4
    matrixA(2,2)=5
    matrixA(2,3)=6   

    matrixB = TRANSPOSE(matrixA)

    DO i=1,3
        PRINT*, (matrixB(i,j),j=1,2)
    END DO
    matrixAB=MATMUL(matrixA,matrixB) 
    PRINT*
    DO i=1,2
        PRINT*, (matrixAB(i,j),j=1,2)
    END DO
    vectorBC = MATMUL(matrixB, vectorC)
    PRINT *
    PRINT*, vectorBC

STOP
END PROGRAM p25