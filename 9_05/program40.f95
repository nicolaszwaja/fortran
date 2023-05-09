MODULE moje_procedury_i_funkcje
    IMPLICIT NONE
    PUBLIC::Input, Temp_C, Output
    CONTAINS
        SUBROUTINE Input(f_temp)
        REAL, INTENT(OUT)::f_temp
        WRITE(UNIT=*, FMT=*)"PLEASE ENTER THE FAHRENHEIT TEMPERATURE:"
        READ(UNIT=*, FMT=*)f_temp
        RETURN
        END SUBROUTINE Input

        FUNCTION Temp_C(f_temp) RESULT (temp_c_r)
        REAL, INTENT(IN)::f_temp
        REAL::temp_c_r
        REAL, PARAMETER::t_scale=1.8, offset=32.0
        temp_c_r = (f_temp-offset)/t_scale
        RETURN
        END FUNCTION Temp_C
        
        SUBROUTINE Output(f_temp, temp_c_r)
        REAL, INTENT(IN)::f_temp, REAL:: temp_c_r
        WRITE(UNIT=*, FMT=*)f_temp, "degrees fahreheit", temp_c_r, "degrees celsius"
        WRITE(UNIT=*, FMT=*)INT(f_temp), "degrees fahrenheit", INT(temp_c_r), "degrees celsius"
        WRITE(UNIT=*, FMT=*)NINT(f_temp), "degrees fahrenheit", NINT(temp_c_r), "degrees celsius"
        RETURN 
        END SUBROUTINE Output
END MODULE moje_procedury_i_funkcje

PROGRAM prog40

    USE moje_procedury_i_funkcje
    REAL::fahr
    CALL Input(fahr)
    CALL Output(fahr, Temp_C(fahr))
    STOP

END PROGRAM prog40
