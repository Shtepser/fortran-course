program namelistdemo

        implicit none
        integer           :: nx=1, ny=1
        real              :: time=0
        character(len=50) :: outputfilename='xx'

        namelist /inputs/ nx, ny, time, outputfilename

        open(1, file='parameters.par', status='old')
        read(1, inputs)
        close(1)

        write(*, inputs)
        print*, "nx =", nx
        print*, "ny =", ny
        print*, "time =", time

end program namelistdemo
