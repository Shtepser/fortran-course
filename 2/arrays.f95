program array_declarations

        implicit none

        real, dimension(5, 5) :: a, b
        real :: c(3, 5, 7), d(-5:5), e(0:1)
        integer, allocatable :: f(:), g(:, :, :)
        integer n(3), i
        real arr(3)
        real, external :: sum1Darray

        write(*, '(a, $)') 'Input 3 array dimensions:'
        read*, (n(i), i=1,3)    !implicit do loop
        allocate(f(n(1)), g(n(1), n(2), n(3)))

        arr(1) = 0.
        arr(2) = 1.
        arr(3) = 2.
        print*, sum1Darray(arr, 3)

end program array_declarations

real function sum1Darray(a, n)

        implicit none
        integer, intent(in) :: n
        real, intent(in) :: a(n)
        integer i
        real :: sum=0

        do i=1,n
                sum = sum + a(i)
        end do

        sum1Darray = real(sum)

end function sum1Darray
