program test_time_and_date
   
   character(8)  :: date
   character(10) :: time
   character(5)  :: zone
   integer,dimension(8) :: values
   
   call date_and_time(date,time,zone,values)
   print '(a,2x,a,2x,a)', date, time, zone
   print '(8i5)', values
   
   call date_and_time(DATE=date,ZONE=zone)   
   print *, date
   print *, zone
   
   call date_and_time(TIME=time)   
   print *, time   
   
   call date_and_time(VALUES=values)
   print '(8i5)', values   


   print *, 'Data: '
   print *, values(3), values(2), values(1) 

   print *, 'Hora: '
   print *, values(5), values(6), values(7)
   
end program test_time_and_date
