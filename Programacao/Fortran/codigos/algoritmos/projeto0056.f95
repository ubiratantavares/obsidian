program projeto0056
   integer i, j, MAX
   real V(10), VI(10)
   logical acabou

   MAX = 10
   i = 1
   acabou = .false.

   do while (.not. acabou)
      print *, "Digite um numero: "
      read *, V(i)
      if (V(i) <= 0) then
        acabou = .true.
        i = i - 1
      else if (i == MAX) then
        acabou = .true.
      else
        i = i + 1
      end if
   end do

   do j = 1, i
     VI(j) = 1 / V(j)
     print *, VI(j)
   end do
end program projeto0056