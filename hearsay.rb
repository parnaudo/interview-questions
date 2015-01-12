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
#p con_char_removal('aaabbbaaajjj',1)

=begin

def convert_string(string)
  return_number=[]
  string.each_byte do |c|
    testing=c-48
    return_number<<c-48
  end
  return return_number.inject{|a,i| puts "#{a.inspect}*10 +#{i}"  }
                    #i:2,3:nil          , 1 0 nil   a*10 + i
end
string="123"

p convert_string(string)
=end
def convert_string(string)
   return string - "0"
end
   puts convert_string("1")