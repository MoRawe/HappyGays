import xml.etree.ElementTree as ET
import plotly.express as px
import numpy as np
from lxml import etree
from validator import validate
from xml.etree import ElementTree
import xml.etree.ElementTree as ET
import requests
import json


xmlData = []

shima = "shimaXML.xsd"
resp = requests.get ("http://localhost:3000/ordrer/xml")

# Geting info from XML
root = ElementTree.fromstring(resp.content)

# Convert XML content to string
content_string = resp.content.decode("utf-8")

# Parsing XSD Schema
xmlschema_doc = etree.parse(shima)
xmlschema = etree.XMLSchema(xmlschema_doc)

# String to read as XML
root = etree.fromstring(content_string)

# Validate XML
if (xmlschema.validate(root)):
    print('Valid! :)')

    for elm in root:
        data = {}
        for i in elm:
            data[str(i.tag)] = i.text
        xmlData.append(data)
    # Creeating the graf
    fig = px.scatter(xmlData, x="total_litres_of_pure_alcohol", y="Freedom", log_x=True,
                    hover_name="Country_region")

    fig.update_layout(
        xaxis={
            'title':'Total litres of Pure Alcohol per Year',
            'type':'log'},
        yaxis={'title':'Oppression Level'})

    fig.show()

else:
    print('Not valid! :(')

