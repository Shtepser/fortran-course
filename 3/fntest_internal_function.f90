program fntest

        implicit none
        integer, parameter :: n=4
        real, dimension(n) :: x, y

        call random_number(x); call random_number(y)

        print*, x
        print*, y
        print*, arrayAdd(x, y, n)


contains

        function arrayAdd(a, b, n)
                implicit none
                real, dimension(n)             :: arrayAdd
                integer, intent(in)            :: n
                real, dimension(n), intent(in) :: a, b

                arrayAdd = a + b
        end function arrayAdd

end program fntest
