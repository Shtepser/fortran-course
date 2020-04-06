program Deriv1
        
        implicit none
        integer          :: n, i
        real, allocatable:: y(:), dydx(:)
        real             :: x, dx

        write(*, '(a,$)') "Input number of grid points: "; read*, n
        allocate (y(n), dydx(n)) ! allocate grid arrays

        dx = 10.0/(n-1) ! grid spacing, assuming x from 0->10

        do i=1,n
                x = (i - 1) * dx
                y(i) = cos(x) ! fill with cosine
        end do

        call derivative(y, n, dx, dydx) ! calculate dydx

        do i=1,n ! write result, -sin(x) and error
                x = (i - 1) * dx
                print*, dydx(i), -sin(x), -sin(x) - dydx(i)
        end do

        deallocate(y, dydx)

        contains

        subroutine derivative(a, np, h, aprime)
                
                integer, intent(in) :: np
                real,    intent(in) :: a(np), h
                real,    intent(out):: aprime(np)
                integer             :: i

                do i=2,np
                        aprime(i) = (a(i) - a(i - 1)) / h
                end do

                aprime(np) = 0.

        end subroutine derivative

end program Deriv1
