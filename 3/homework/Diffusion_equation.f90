program diffusion_equation
        use derivatives

        implicit none
        integer           :: L, N, i=0
        character(50)     :: initialize_method
        real, allocatable :: T(:), d2Tdx2(:), dTdx(:)
        real              :: dx, dt, current_time=0, total_time
        real, parameter   :: kappa=1
 

        write(*, '(a, $)') "Enter length of domain: "; read*, L
        write(*, '(a, $)') "Enter number of grid points: "; read*, N
        write(*, '(a, $)') "Enter total time: "; read*, total_time
        write(*, '(a, $)') "Enter initialize method (noise/spike) [noise]: "
        read*, initialize_method

        allocate(T(N), d2Tdx2(N), dTdx(N))
        select case(initialize_method)
        case ('spike')
                call spike(T)
        case default
                call random_number(T)
                T(1) = 0
        end select

        call write_to_file(T, "initial.dat")

        dx = L / real(N - 1)
        dt = 0.4 * dx ** 2

        i = 2
        current_time = dt
        do while (current_time <= total_time)
                call prime_derivative(T, N, dx, dTdx)
                call second_derivative(T, N, dx, d2Tdx2)
                T(i) = T(i - 1) + kappa * d2Tdx2(i - 1)
                current_time = current_time + dt
                i = i + 1
        end do

        call write_to_file(T, "final.dat")

contains

        subroutine spike(array)
                implicit none
                real, dimension(:), intent(out) :: array
                integer                         :: center

                center = size(array) / 2

                do i=1,size(array)
                        if (i == center) then
                                array(i) = 1
                        else
                                array(i) = 0
                        end if
                end do
        end subroutine spike

        subroutine write_to_file(array, filename)
                implicit none
                real, dimension(:), intent(in) :: array
                character(len=*), intent(in)      :: filename
                integer                        :: i=0

                open(2, file=filename)
                do i = 1,size(array)
                        write(2, *) array(i)
                end do
                close(2)
        end subroutine write_to_file

end program diffusion_equation
