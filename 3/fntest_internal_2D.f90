program fntest

        implicit none
        integer, parameter :: n=2, m=3
        real, allocatable  :: x(:, :), y(:, :)

        allocate(x(n, m), y(n, m))
        call random_number(x); call random_number(y)

        print*, "Shape x is", shape(x)
        print*, x
        print*, y
        print*, arrayAdd(x, y)


contains

        function arrayAdd(a, b)
                implicit none
                real, dimension(:, :), intent(in)       :: a, b
                real, dimension(size(a, 1), size(a, 2)) :: arrayAdd
                
                arrayAdd = a + b
        end function arrayAdd

end program fntest
