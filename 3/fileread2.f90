program fileread ! unknown number of points

        implicit none
        integer           :: n, i
        real, allocatable :: a(:)
        real b

        open(1, file='stuff.dat', status='old')

        n = 0
        do
                read(1, *, iostat=i) b
                if (i < 0) exit
                if (i /= 0) stop 'error reading data'
                n = n + 1
        end do

        print*, "found", n, "values"
        allocate (a(n))

        rewind(1)

        do i = 1, n
                read(1, *) a(i)
        end do

        close(1)

        print*, a

end program fileread
