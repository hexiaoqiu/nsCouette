subroutine perfinit
  use timings
  call timer%enable()
end subroutine perfinit

subroutine perfon(label)
  use timings
  character(*), intent(in) :: label

  call timer%start(trim(adjustl(label)))
end subroutine perfon

subroutine perfoff(label)
  use timings
  character(*), intent(in) :: label

!  call timer%stop(trim(adjustl(label)))
  call timer%stop()
end subroutine perfoff

subroutine perfout()
  use timings
  call timer%print()
end subroutine perfout

subroutine perf_context_start()

end subroutine perf_context_start

subroutine perf_context_end()

end subroutine perf_context_end

