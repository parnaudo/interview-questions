def palindrome(word):
    if len(word)==1 or len(word)==0:
        return True
    else:
        if word[0]==word[-1]:
            return palindrome(word[1:-2])
        else:
            return False


print palindrome("abba")

#for x in range(1,10):
 #   for y in range(x+1,10):
  #      print "x is ",x,"y is ",y
