program miscellaneous_things
      
        implicit none
        integer i, j
        real a
        logical equal

        i=2; j=5

        a = 2*i + &
                3*j

        print*, 2/3, 2./3, 2/3., 2.0/3.0

        equal = (i == j)
        print*, equal

        do i=1,10
                print*, mod(i, 3), min(i, j), max(i, j)
        end do

        do i = -8,8
                a = real(i)/4
                print*, a, int(a), nint(a), floor(a), ceiling(a)
        end do

end program miscellaneous_things
