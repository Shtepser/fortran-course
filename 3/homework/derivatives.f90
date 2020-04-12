module Derivatives

contains

        subroutine prime_derivative(y, n, delta, y_prime)
                
                integer, intent(in) :: n
                real,    intent(in) :: y(n), delta
                real,    intent(out):: y_prime(n)
                integer             :: i

                y_prime(n) = 0.
                do i=2,n
                        y_prime(i) = (y(i) - y(i - 1)) / delta
                end do

        end subroutine prime_derivative

        subroutine second_derivative(y, n, delta, y_second)
                        
                implicit none
                integer, intent(in) :: n
                real,    intent(in) :: y(n), delta
                real,    intent(out):: y_second(n)
                integer             :: i

                y_second(1) = 0
                y_second(n) = 0
                do i=2,n - 1
                        y_second(i) = (y(i+1) - 2*y(i) + y(i-1)) / delta ** 2
                end do

        end subroutine second_derivative

end module Derivatives

