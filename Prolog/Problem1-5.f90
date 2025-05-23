Problem #1
program lulu_allowance
  implicit none
  integer :: nums(10), multiplier
  real    :: allowance

  read(*,*) nums
  multiplier = nums(7)
  allowance  = multiplier * 2.75
  write(*,'(A,I0,A,F0.2)') &
       'The multiplier is ', multiplier, &
       '! Lulu’s allowance for the week is $ ', allowance, '!'
end program lulu_allowance
Problem #2
program count_upper
  implicit none
  integer :: N, t, i, j, cnt, code
  character(len=100) :: s

  read(*,*) N
  do i = 1, N
    read(*,*) t, s
    cnt = 0
    do j = 1, t
      code = iachar(s(j:j))
      if (code >= iachar('A') .and. code <= iachar('Z')) then
        cnt = cnt + 1
      end if
    end do
    write(*,'(I0)') cnt
  end do
end program count_upper
Problem #3
program average_scores
  implicit none
  integer :: a, b, c
  real    :: avg

  read(*,*) a, b, c
  avg = (a + b + c) / 3.0
  write(*,'(F0.2)') avg
end program average_scores
Problem #4
program simple_sort
  implicit none
  integer :: nums(3), sorted(3)
  integer :: i, j, tmp

  read(*,*) nums
  sorted = nums

  do i = 1, 2
    do j = i+1, 3
      if (sorted(i) > sorted(j)) then
        tmp       = sorted(i)
        sorted(i) = sorted(j)
        sorted(j) = tmp
      end if
    end do
  end do

  write(*,'(I0,1X,I0,1X,I0)') sorted(1), sorted(2), sorted(3)
  write(*,'(I0,1X,I0,1X,I0)') nums(1),    nums(2),    nums(3)
end program simple_sort
Problem #5
program even_from_end
  implicit none
  integer :: N, i, ios
  integer, allocatable :: arr(:)
  logical :: first

  do
    read(*,*,iostat=ios) N
    if (ios /= 0) exit
    allocate(arr(N))
    do i = 1, N
      read(*,*,iostat=ios) arr(i)
      if (ios /= 0) exit
    end do

    first = .true.
    do i = N, 1, -1
      if (mod(arr(i),2) == 0) then
        if (.not. first) write(*,'(A)', advance='no') ' '
        write(*,'(I0)', advance='no') arr(i)
        first = .false.
      end if
    end do
    write(*,*)

    deallocate(arr)
  end do
end program even_from_end