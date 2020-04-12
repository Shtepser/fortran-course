module Statistics

contains 
        real function mean(arr, n)
        
                implicit none
        
                integer, intent(in) :: n
                real, intent(in) :: arr(n)
        
                integer :: i=0
                real :: summa
        
                summa = 0.
        
                do i=1,n
                        summa = summa + arr(i)
                end do
        
                mean = summa / n
        
        end function mean

        real function stdev(arr, n)
        
                implicit none
                
                integer, intent(in) :: n
                real, intent(in) :: arr(n)
                
                integer :: i=0
                real :: sum_of_sq
        
                sum_of_sq = 0.
        
                do i=1,n
                        sum_of_sq = sum_of_sq + arr(i) ** 2
                end do
        
                stdev = sqrt(sum_of_sq/n - mean(arr, n) ** 2)
        
        end function stdev
end module Statistics
