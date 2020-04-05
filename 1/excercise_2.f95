program Mean
      implicit none
      real :: First, Second, Third

      print*,"Введите три числа:"
      read*, First, Second, Third

      print*,"Среднее арифметическое введённых чисел =",(First + Second + Third)/3.
      print*,"Среднее геометрическое введённых чисел =",(First * Second * Third) ** (1/3.)
      print*,"Среднее гармоническое введённых чисел =",1/((1/First + 1/Second + 1/Third)/3.)
end program Mean
