program MeanStd
        use statistics

        implicit none
        integer           :: counter=0, i, stat
        real, allocatable :: numbers(:)
        real              :: tmp
        character(50)     :: filename

        write(*, '(a, $)') "Enter file name: "
        read*, filename

        open(1, file=filename, status='old')
        do
                read(1, *, iostat=stat) tmp
                if (stat < 0) exit
                if (stat /= 0) stop "error reading data"
                counter = counter + 1
        end do
        
        allocate(numbers(counter))

        rewind(1)
        do i=1,counter
                read(1, *) numbers(i)
        end do

        close(1)

        print*, "Mean of numbers in file  =", mean(numbers, counter)
        print*, "Stdev of numbers in file =", stdev(numbers, counter)

end program MeanStd
