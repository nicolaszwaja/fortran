PROGRAM p8
    IMPLICIT NONE
    TYPE person
        CHARACTER(len=12)::first_name
        CHARACTER(len=1)::middle_initial
        CHARACTER(len=12)::last_name
        INTEGER::age
        CHARACTER(len=1)::sex
        CHARACTER(len=12)::social_security
    END TYPE person

    TYPE(person)::jack, jill
    jack = person("Jack","R","Hagen",47,"M","123-45-6789")  
    jill = person("Jill","M","Smith",39,"F","987-65-4321")   
    PRINT*, jack%age
    IF(jack%sex=="F") PRINT *, jack%first_name, "jest kobieta"
    IF(jill%sex=="F") PRINT *, jill%first_name, "jest kobieta"
END PROGRAM p8    
