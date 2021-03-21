# Python program to demonstrate 
# Conversion of JSON data to 
# dictionary 


# importing the module 
import json 

# Opening JSON file 
with open('education.json') as json_file: 
	data = json.load(json_file) 
	
	# for printing the key-value pair of 
	# nested dictionary for looop can be used 
	print("\nPrinting nested dicitonary as a key-value pair\n") 
	for i in data['item']: 
		print("Institution:", i['institution']) 
		print("Degree:", i['degree']) 
		print("Year:", i['year']) 
		print() 
