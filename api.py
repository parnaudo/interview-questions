import requests
import json
#print(requests.__file__)
#print dir(requests)
#r = requests.get('https://api.github.com/events')	
def get_guide_uuids(count):	
	r = requests.get('http://snapguide.com/api/v1/guides/latest?limit='+str(count))
	json_data=r.json()
	length=len(json_data['guides'])
	uuids=[]
	for i in range (0,length):
		uuids.append(json_data['guides'][i]['uuid'])
	return uuids
def get_guide_supplies(uuid):
	r = requests.get('https://snapguide.com/api/v1/guide/'+uuid)
	guide_json = r.json()
	supplies=[]
	for item in guide_json['guide']['supplies']['supplies']:
		supplies.append(item['item'])
	return supplies

count=100
uuids=get_guide_uuids(count)
length=len(uuids)
ingredient_count={}
for i in range(0, length):
	supplies=get_guide_supplies(uuids[i])
	for ingredient in supplies:
		if ingredient in ingredient_count:
			ingredient_count[ingredient]+=1
		else: 
			ingredient_count[ingredient]=1		
#length = len(guide_data)
print ingredient_count
length=2

'''



	for item in ingredient_json['guide']['supplies']['supplies']:
	#	print item['item']
		if item['item'] in ingredient_count:
			ingredient_count[item['item']]+=1
		else: 
			ingredient_count[item['item']]=1
for key,value in ingredient_count.iteritems():
	print key, value
#	print r.text
#print data['guides']
#print r.text
'''