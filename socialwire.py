#!/usr/bin/python
def check_validity(input_message, length,precursor_char=''):
    lower_case_values=['a','b','c','d','e','f','g','h','i','j']
    solo_upper_case_values=['Z']
    upper_case_values=['M','K','P','Q']
    i=0
    if length==1:
        #if length is one, we know we need to check against the lower case values
        return input_message in lower_case_values
    elif length==2:
      #length is two so we know we need to check for Z
      #precursor char represents the last available character in the string, which dictates whether its a valid message or not
        if precursor_char in upper_case_values or precursor_char in solo_upper_case_values:
            if input_message[i] in lower_case_values:
              #case of two lower case characters together (Maa)
              return check_validity(input_message[i+1:length],len(input_message[i+1:length]))
        elif input_message[i] in solo_upper_case_values:
            #case of Z+lowercase letter
           return check_validity(input_message[i+1:length],len(input_message[i+1:length]))
        else:
            return False
    else:
     #  larger input, will require some more parsing
        if input_message[i] in upper_case_values or precursor_char in upper_case_values:
            #recursively check, keeping track of what the first character was
            return check_validity(input_message[i+1:length],len(input_message[i+1:length]),input_message[i])
        else:
            return False

def has_integer(input_message):
    try:
        allowed_messages=int(input_message)
    except ValueError:
        return False

input_messages='Qa Zj MZca Khca Maa MZa MZaa a aa'.split(" ")
for i in input_messages:
    if check_validity(i,len(i)):
        print i,"Valid"
    else:
        print i,"Invalid"



'''
1) Seems to need to be able to parse an integer
'''

