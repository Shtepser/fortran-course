program fntest

        implicit none

        interface
                
                function arrayAdd(a, b, n)
                        implicit none
                        real, dimension(n)             :: arrayAdd
                        integer, intent(in)            :: n
                        real, dimension(n), intent(in) :: a, b
                end function arrayAdd

        end interface

        integer, parameter :: n=4
        real, dimension(n) :: x, y

        call random_number(x); call random_number(y)
        
        print*, x
        print*, y
        print*, arrayAdd(x, y, n)

end program fntest


function arrayAdd(a, b, n)
        
        implicit none
        real, dimension(n)             :: arrayAdd
        integer, intent(in)            :: n
        real, dimension(n), intent(in) :: a, b

        arrayAdd = a + b

end function arrayAdd
