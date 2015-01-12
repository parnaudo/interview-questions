def return_fibonnaci(number)
  #1,1,2,3,5,8 return index in the fibb sequence
  # 2 returns 1
  # 3 => returns 2
  # 4 returns 3
  fibb_array=[1,1]
  for count in 2..(number-1)

    sum=fibb_array[count-1]+fibb_array[count-2]
    fibb_array << sum
    count+=1
  end
  return fibb_array[number-1]

end

#given an integer, give number value in fibonacci sequence
def fib(number)
  if number == 0
    0
  elsif number == 1
    1
  else
    test= fib(number-1) + fib(number-2)
    puts "adding number #{number-1} and #{number-2} = #{test}"
    test
  end
end
    #string that is the current time  3:15 return angle between the two
def time_string(string)

    times=string.split(":")
    puts times.inspect
    residual= times[1].to_f/2
    hour_degrees=times[0].to_i*30+residual
    minutes=times[1].to_i*6
    return hour_degrees-minutes

end
p fib(3)
p time_string("11:30")