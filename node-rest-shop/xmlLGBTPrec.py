import xml.etree.ElementTree as ET
import plotly.express as px
import numpy as np
from lxml import etree
from validator import validate


# validate the XML file
if validate("C:/xampp/htdocs/node-rest-shop/shima.xml", "C:/xampp/htdocs/node-rest-shop/shimaXML.xsd"):
    print('Valid! :)')
else:
    print('Not valid! :(')

# Looping throw xml info
xmlData = []
tree = ET.parse('shima.xml')
root = tree.getroot()
for elem in root:
    for i in elem:
        xmlData.append(i.attrib)
    xmlData.append(elem.attrib)

# creeating the graf
fig = px.scatter(xmlData, x="Alcohol", y="Freedom", log_x=True,
                 hover_name="name", size="LGBT")

fig.update_layout(
    xaxis={
        'title':'Total litres of Pure Alcohol per Year',
        'type':'log'},
    yaxis={'title':'Oppression Level'})

fig.show()

