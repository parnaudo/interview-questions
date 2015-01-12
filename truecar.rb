def is_fibonnaci(number)
    #1,1,2,3,5,8
    # 2 returns 1
    # 3 => returns 2
    # 4 returns 3
    start=1
    last_digit=1
    count=0
    until start <= number
      last_digit=start + last_digit
      p last_digit
      start+=1
    end



end
  is_fibonnaci(2)
