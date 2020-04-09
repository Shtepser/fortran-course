module fact

contains
        integer function factorial(n)
                
                implicit none
                integer, intent(in) :: n
                integer             :: i, a

                a = 1
                do i = 1, n
                        a = a * i
                end do
                factorial = a

        end function factorial

end module fact
