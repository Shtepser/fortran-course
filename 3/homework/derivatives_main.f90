program SecondDerivative
        use derivatives

        implicit none
        integer          :: n, i
        real, allocatable:: x(:), y(:), dydx(:), d2ydx2(:), checking(:)
        real             :: dx

        write(*, '(a,$)') "Введите число точек сглаживания: "; read*, n
        allocate(x(n), y(n), dydx(n), d2ydx2(n), checking(n))

        dx = 10.0 / (n - 1)

        do i=1,n
                x(i) = (i - 1) * dx
                y(i) = sin(x(i))
        end do

        call prime_derivative(y, n, dx, dydx)
        call second_derivative(y, n, dx, d2ydx2)
        call prime_derivative(dydx, n, dx, checking)

        do i=1,n
                print*, x(i), y(i), d2ydx2(i), d2ydx2(i) - checking(i)
        end do

        deallocate(x, y, dydx, d2ydx2, checking)
                
end program SecondDerivative
