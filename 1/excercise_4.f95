program Statistics

        implicit none
        integer :: i, N=-1
        real :: current, summa=0., sum_of_sq=0., mean, stdev

        do while (N < 1)
                
                print*, "Сколько чисел вы хотите ввести?:"
                read*, N
                if (N < 1) then
                       print*, "Вы ввели недопустимое число!"
                end if  
        end do

        do i=1,N
                read*, current
                summa = summa + current
                sum_of_sq = sum_of_sq + current ** 2
        end do

        mean = summa / N
        stdev = sqrt(sum_of_sq/N - mean ** 2)

        print*, "Среднее введённых чисел =", mean
        print*, "Стандартное отклонение квадратов чисел =", stdev

end program Statistics
