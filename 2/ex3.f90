program SecondDerivative

        implicit none
        integer          :: n, i
        real, allocatable:: x(:), y(:), d2ydx2(:)
        real             :: dx

        write(*, '(a,$)') "Введите число точек сглаживания: "; read*, n
        allocate(x(n), y(n), d2ydx2(n))

        dx = 10.0 / (n - 1)

        do i=1,n
                x(i) = (i - 1) * dx
                y(i) = sin(x(i))
        end do

        call second_derivative(y, n, dx, d2ydx2)

        do i=1,n
                print*, x(i), y(i), d2ydx2(i), -sin(x(i)) - d2ydx2(i)
        end do

        deallocate(x, y, d2ydx2)

        contains

                subroutine second_derivative(y, n, delta, y_second)
                        
                        implicit none
                        integer, intent(in) :: n
                        real,    intent(in) :: y(n), delta
                        real,    intent(out):: y_second(n)

                        do i=2,n - 1
                                y_second(i) = (y(i+1) - 2*y(i) + y(i-1)) / delta ** 2
                        end do

                end subroutine second_derivative

end program SecondDerivative
