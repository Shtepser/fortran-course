program mod_demo
        use useful_stuff

        implicit none
        real distance

        distance = 2 * pi * earth_radius * days_in_year

        print*, "We travel", distance, "meters/year"
        
end program mod_demo
