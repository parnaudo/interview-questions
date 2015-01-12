test=(1,2,3,3,1,1,1)
answer=0
value_counter=0
bad_counter=0
for (index,value) in enumerate(test):
	if value==answer:
		value_counter+=1
	else:
		bad_counter+=1
		if bad_counter >= value_counter:
			value_counter=1
			bad_counter=0
			answer=value

print "answer is ",answer



for index,value in enumerate(lst):
    print value
    if count.get(value, None)==None:
        count[value]=1
    else:
        count[value]+=1
print count

