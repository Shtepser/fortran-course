program Number_work

        implicit none
        integer :: i, number, fact=1

        print*, "Введите целое число: "
        read*, number

        if (number > 0) then
                print*, number, " - положительное число"
                do i = 1, number
                        fact = fact * i
                end do
                print*,"Факториал ",number," = ",fact
        else
                print*, number, " - отрицательное число"
        end if

end program Number_work
