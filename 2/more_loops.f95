program more_loops

        implicit none
        integer :: j

        print*, 'first loop'
        do j=0,10,2
                write(*,*) j
        end do

        print*, 'second loop'
        do j=10,0,-1
                print*, j
        end do

        print*, 'third loop'
        do
                print*, 'input 1 to exit'
                read(*,*) j
                if (j == 1) exit
        end do

        print*, 'fourth loop'
        do while (j == 1)
                print*, 'input something other than 1 to exit'
                read*, j
        end do

end program more_loops
