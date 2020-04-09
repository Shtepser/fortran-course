program fileread

        implicit none
        integer           :: n, i
        real, allocatable :: a(:)

        open(1, file='data.dat', status='old')

        read(1, *), n
        allocate(a(n))
        do i = 1, n
                read(1, *) a(i)
        end do

        close(1)

        print*, a

end program fileread
