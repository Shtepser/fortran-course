program fileIO

        implicit none
        integer           :: n, i
        real, allocatable :: a(:)

        write(*, '(a, $)') "How many random numbers?: "
        read*, n
        allocate (a(n))
        call random_number(a)

        open(2, file='stuff.dat')
        do i = 1, n
                write(2, *) a(i)
        end do
        close(2)

end program fileIO
