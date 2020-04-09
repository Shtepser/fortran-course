program fntest

        implicit none
        integer, parameter :: n=4
        real, dimension(n) :: x, y

        call random_number(x); call random_number(y)

        print*, x
        print*, y
        print*, arrayAdd(x, y)


contains

        function arrayAdd(a, b)
                implicit none
                real, dimension(:), intent(in) :: a, b
                real, dimension(size(a))       :: arrayAdd
                
                arrayAdd = a + b
        end function arrayAdd

end program fntest
