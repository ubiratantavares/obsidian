program open2
	implicit none
    integer :: a, b
    open(unit=60, file="saida1.txt", status="old")
    open(unit=61, file="saida2.txt")
    read(60,*) a
    b = 1000 * a
    write(61,*) b
    close(60)
    close(61)
end program open2