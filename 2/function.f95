program Testing
        implicit none
        integer :: first, second, third
        integer, external :: factorial, sum3

        write(*, *) "Введите три числа: "
        read*, first, second, third
        print*, "Сумма введённых чисел равна =", sum3(first, second, third)
        print*, "Факториал первого числа =", factorial(first)
        print*, "Факториал второго числа =", factorial(second)
        print*, "Факториал третьего числа =", factorial(third)

end program Testing

integer function sum3(a, b, c)
        implicit none
        integer, intent(in) :: a, b, c

        sum3 = a + b + c
end function sum3

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
