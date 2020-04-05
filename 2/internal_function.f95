program Testing
        implicit none
        integer :: first, second, third

        write(*, *) "Введите три числа: "
        read*, first, second, third
        print*, "Факториал первого числа =", factorial(first)
        print*, "Факториал второго числа =", factorial(second)
        print*, "Факториал третьего числа =", factorial(third)

        contains

        integer function factorial(n)
                implicit none
                integer,intent(in) :: n
                integer :: i, a

                a = 1
                do i=1, n
                        a = a * i
                end do
                factorial = a
        end function factorial
end program Testing


