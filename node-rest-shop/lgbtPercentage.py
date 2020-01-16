import requests
import json
from matplotlib import pyplot as plt
import numpy as np
import seaborn as sns
import plotly.graph_objects as go
import pandas
import matplotlib.patches as mpatches
import plotly.express as px
from jsonschema import validate

# json linke
response = requests.get("http://localhost:3000/ordrer/")

# Validetion json
filename = "C:/xampp/htdocs/node-rest-shop/shima.json"
with open (filename, 'r') as f:
    data=f.read()
schema = json.loads(data)
my_json = response.json()
print(validate(instance=my_json, schema=schema))

# convert it to objects
elemnt = response.json()['message']

# creeating the graf
fig = px.scatter(elemnt, x="total_litres_of_pure_alcohol", y="Freedom", log_x=True,
                 hover_name="Country_region", size="N")

fig.update_layout(
    xaxis={
        'title':'Total litres of Pure Alcohol per Year',
        'type':'log'},
    yaxis={'title':'Oppression Level'})

fig.show()