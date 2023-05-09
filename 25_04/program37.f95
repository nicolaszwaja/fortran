MODULE zawiera_funkcje_Large
    IMPLICIT NONE
    PUBLIC::Large
    CONTAINS
        FUNCTION Large(list,k) result (Large_R)
            INTEGER, INTENT(IN), DIMENSION(:)::list
            INTEGER, INTENT(IN)::k
            INTEGER ::Large_R

        IF(ANY(list<=k))THEN
            Large_R=MAXVAL(list, MASK=(list<=k))
        ELSE
            Large_R=k
        END IF
        RETURN
    END FUNCTION Large  
END MODULE zawiera_funkcje_Large

PROGRAM prog37
    USE zawiera_funkcje_Large
    IMPLICIT NONE
    INTEGER:: n,k
    INTEGER, ALLOCATABLE, DIMENSION(:)::list

    DO
        PRINT*,"podaj rozmiar macierzy"
        READ(UNIT=*,FMT=*)n 
        IF(n<=0)THEN
            EXIT
        END IF 
        ALLOCATE(list(n))
        PRINT*,"podaj liczbe k"
        READ(UNIT=*, FMT=*)k
        PRINT*,"najwiekszy element macierzy list sposrod mniejszych od liczby k"
        WRITE(UNIT=*, FMT=*)Large(list,k)
        DEALLOCATE(list)
    END DO
    STOP
END PROGRAM prog37            