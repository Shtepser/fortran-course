program loopdemo
        implicit none
        integer :: i
        integer,parameter :: low=3, high=5

        ! This program does nothing useful

        do i = 1, 10
        
            if (i > high) then
                    print*, i, " is greater than 5"
            else if (i <= low) then
                    print*, i, "is lesser than or equal to 3"
            else
                    print*, i, "is nothing special"
            end if

        end do
end program loopdemo
