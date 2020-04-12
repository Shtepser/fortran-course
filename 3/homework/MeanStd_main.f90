program MeanStd
        use Statistics

        implicit none
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
