
class Card

  attr_accessor :number, :suit, :value

  def initialize(number, suit, value)
    @number = number
    @suit = suit
    @value = value
  end

  def to_s
    "#{@number} of #{@suit}"
  end
end

HEX_MAP=[0,1,2,3,4,5,6,7,8,9,"a","b","c","d","e","f"]
#return int in hex
def to_hex(value)
  puts "hex value should be #{value.to_s(16)}"
  hex_string=[]
  neg_flag=''
  if value < 0
    neg_flag='-'
    value=value.abs
  end
  if value.between?(0,15)
    return HEX_MAP[value]
  else
    while value >= 16
      puts "start #{value}"
      digit=value % 16
      puts "remainder is #{digit} adding #{HEX_MAP[digit]}"
      hex_string << HEX_MAP[digit]
      new_add=value/16
      if new_add <= 16
        puts "adding new add #{new_add}"
        hex_string << new_add
      end
      value /= 16
      puts "end #{value}"
    end
  end
  p hex_string.inspect
  hex_string << neg_flag
  return_string=hex_string.reverse.join("")
end

 p "hex function value is #{to_hex(32)}"


class DeckOfCards
  def initialize
    @cards=["Ace-Heart","Ace-Spade","Ace-Club","Ace-Diamond"]
  end

  def deal
    @cards.each do |value|
      puts value
    end
  end
  def shuffle
    for i in 0..5

      puts @cards[i]
    end
  end
end




def factorial(n)
  if n == 0
    1
  else
      n * factorial(n-1)
  end
end

def bottles(number)
  if number == 0
    puts "no bottles of beer on the wall"
  else
    puts "#{number} bottles of beer on the wall"
    bottles(number - 1)
  end
end
#given an integer, give number value in fibonacci sequence
def fib(number)
  if number == 0
    0
  elsif number == 1
    1
  else
    fib(number-1) + fib(number-2)
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
#take a nested array and flatten it
def flatten(input,data=[])

  input.each do |element|
    if element.is_a?(Array)
       flatten(element, data)
    else
      p element
      data << element
      p data.inspect
    end
  end
  return data
end
#remove duplicates from a value
def remove_duplicates(input)
  if input.is_a?(Array)
    output={}
    input.each do |value|
      if output[value].nil?
        output[value]=value
      else
        puts "already present"
      end

    end
    return output
  else
    puts "not array"
  end
end
#check if a number is prime or not
def is_prime(number)
  if number < 2
    return false
  else
    i=2
     while i < number do
        if number % i == 0
          return false
        end
        i+=1

     end
    return true
  end
end
i=1
while i <= 20 do
 # p "#{i} is #{is_prime(i)}"
  i+=1
end

#given an array and an output, can you tell if adding two values from the array will give you the output
def is_match(numbers,query)
  bad_hash={}
  for i in 0..numbers.count-1
     for j in 0..numbers.count-1
       if bad_hash.has_key?("#{numbers[i]}#{numbers[j]}") || bad_hash.has_key?("#{numbers[j]}#{numbers[i]}")
         #already tried this combo so lets ignore
       else
         if i == j
           #can't use same values
           bad_hash["#{numbers[i]}#{numbers[j]}"]=1
         elsif query == numbers[i]+numbers[j]
           #bingo we found it
           return numbers[i],numbers[j]
         else
           #store bad results in a hash to check against
           bad_hash["#{numbers[i]}#{numbers[j]}"]=1
           bad_hash["#{numbers[j]}#{numbers[i]}"]=1
         end
       end
      j+=1
     end
     i+=1
  end
end


def palindrome(string)
  puts string
  if string.length == 1 || string.length == 0
    true
  else
    if string[0] == string[-1]
      palindrome(string[1..-2])
    else
      false
    end
  end
end

 #palindrome("racecar")

ary = ["A", "B", "C", "B", "A"]
p remove_duplicates(ary)
#remove consecutive chars from an input array with second value being the limiter
#Ex: con_char_removal("aaabbcc",1) = abc
#    con_char_removal("aaabbcc",2) = aabbcc

def con_char_removal(input,max_chars)
  last_seen=""
  max_char_count=0
  output=""
  input.split("").each do |letter|
    if letter==last_seen
      max_char_count+=1
    else
      max_char_count=0
    end
    last_seen=letter
    if max_char_count < max_chars
      puts letter
      output << letter
    end
  end
  return output
end

#Classic Fizz-Buzz problem
def fizz_buzz
  (1..100).each do |number|
    output=''
    output+="Fizz" if number%3==0
    output+="Buzz" if number%5==0
    puts(output.empty? ? number : output)

  end
end
#Easy way to reverse string without lib function, I kept getting asked this
def reverse_string(input)
  output=[]
  for i in input.length.downto(0)
    output << input[i]
  end
  output.join("")
end
# array intersection without lib function

def array_intersect(array1,array2)
  test_hash={}
  output=[]
  for number in array1
    test_hash[number]=number
  end
  for number in array2
    #probably better way to do this but I know you need to use a hash
    if test_hash[number]
        output << number
    end
  end
  output
end
def generate_anagrams(word)
  output=word.chars.permutation.map { |letter| letter.join}
  return output
end
# You are asked to write a max_slice function which takes as an input an array of integers, and returns the slice with the largest sum of the elements
#1,2,3
#[-1,2,3,-1]
def max_slice(input_array)
  current_sum=0
  max_sum=0
  start_index=0
  end_index=nil
  output_array=[]
  output=[]
  input_array.length.times do |i|
    (input_array.length - i + 1).times do |j|
      current_sum=0
      output << input_array.slice(i, j)

      j += 1
    end
  end

  answer = []
  output.each do |subset|
    current_sum=0
    subset.each do |value|
      current_sum+=value
    end
    if current_sum > max_sum
      max_sum=current_sum
      answer=subset
    end
  end
  answer
end
#brute force an array
def iter_array(input)
  for i in 0..input.length
    for j in 0..input.length-i
      p "#{i},#{j}"
      input.slice(i,j).each do |value|
        p value
      end
    end
  end
end
test=[1,2,3,4]
iter_array(test)
#Figure out most prevalent number in an array without keeping track of everything
