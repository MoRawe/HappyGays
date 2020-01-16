import requests
import json
from matplotlib import pyplot as plt
import numpy as np
from jsonschema import validate, ValidationError
from jsonschema import validate

# Get the replay form json localhost linke based on the country
idee = 'france'
response = requests.get("http://localhost:3000/products/"+idee)


# Validetion json
filename = "C:/xampp/htdocs/node-rest-shop/alcoholShima.json"
with open (filename, 'r') as f:
    data=f.read()
schema = json.loads(data)
my_json = response.json()
print(validate(instance=my_json, schema=schema))
    

# convert it to objects
elemnt = response.json()['message']

# Loop throw the objects to get information.
beerList = []
wineList = []
spiritList = []
totaltList = []
for theString in elemnt:
    elemnt = theString['beer_servings']
    elemnt2 = theString['wine_servings']
    elemnt3 = theString['spirit_servings']
    elemnt4 = theString['total_litres_of_pure_alcohol']

    beerList.append(elemnt)
    wineList.append(elemnt2)
    spiritList.append(elemnt3)
    totaltList.append(elemnt4)

# ShNetherlandsowing the pie chart
activities = ['Beer', 'Wine','Other']
alcoholUsige = [beerList,wineList,spiritList]
plt.pie(alcoholUsige, labels=activities, startangle=90, autopct='%.1f%%')
plt.title(idee+" usage of alcohol")
plt.show()