program moddemo
        use fact

        implicit none
        integer :: n=0

        do while (n < 1)
                print*, "Input a positive number: "
                read*, n
        end do

        print*, n, "!= ", factorial(n)
        
end program moddemo
