PROGRAM P10
    IMPLICIT NONE
    INTEGER :: i,j,p,r,x,n,m

    PRINT *,"START=1, STOP=10, INCREMENT=1(domyślnt)"
    DO i=1,10
    PRINT *,i
    END DO
    PRINT*

    PRINT *,"START=20, STOP=50, INCREMENT=5"
    DO j=20,50,5
    PRINT *,j
    END DO
    PRINT*

    PRINT *,"START=7, STOP=19, INCREMENT=4"
    DO p=7,19,4
    PRINT *,p
    END DO
    PRINT*

    PRINT *,"START=4, STOP=5, INCREMENT=6"
    DO r=4,5,6
    PRINT *,r
    END DO
    PRINT*

    PRINT *,"START=25, STOP=0, INCREMENT=-5"
    DO x=25,0,-5
    PRINT *,x
    END DO
    PRINT*

    PRINT *,"START=20, STOP=-20, INCREMENT=-6"
    DO m=20,-20,-6
    PRINT *,m
    END DO
    PRINT*

STOP
END PROGRAM P10    