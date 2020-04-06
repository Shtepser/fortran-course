program MeanStd

        implicit none
        real, external :: mean, stdev

        integer :: n=0, i
        real, allocatable :: array(:)

        do while (n < 1)
                write(*, '(a,$)') 'Введите число элементов в массиве: '
                read*, n
                if (n < 1) then
                        write(*, *) "Массив должен содержать хотя бы один элемент!"
                end if
        end do

        allocate(array(n))

        do i=1,n
                read*, array(i)
        end do

        write(*, '(a,$)') "Среднее массива = "
        write(*, *) mean(array, n)
        write(*, '(a,$)') "Стандартное отклонение массива = "
        write(*, *) stdev(array, n)

        deallocate(array)

end program MeanStd

real function mean(arr, n)

        implicit none

        integer, intent(in) :: n
        real, intent(in) :: arr(n)

        integer :: i=0
        real :: summa

        summa = 0.

        do i=1,n
                summa = summa + arr(i)
        end do

        mean = summa / n

end function mean

real function stdev(arr, n)

        implicit none
        real, external :: mean
        
        integer, intent(in) :: n
        real, intent(in) :: arr(n)
        
        integer :: i=0
        real :: sum_of_sq

        sum_of_sq = 0.

        do i=1,n
                sum_of_sq = sum_of_sq + arr(i) ** 2
        end do

        stdev = sqrt(sum_of_sq/n - mean(arr, n) ** 2)

end function stdev
