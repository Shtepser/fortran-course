cmake_minimum_required(VERSION 3.15)
project(homework Fortran)


enable_language(Fortran)
add_executable(diffusion_equation Diffusion_equation.f90 derivatives.f90)