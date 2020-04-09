program variousthings

        implicit none
        integer n, i, j

        do
                read*, n

                if (n == 2) print*, "i equals 2"

                if (n == 0) then
                        print*, "You entered 0 so I am stopping"
                        stop
                end if

                do i = 1,n
                        do j = 1,n
                                print*, "i, j = ", i, j
                        end do
                end do
        end do

end program variousthings
