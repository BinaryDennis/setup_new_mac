import re
import requests
import sys

if(len(sys.argv) < 2):
    exit("missing filename as argument")

fileName = sys.argv[1]
print("trying to opened file " + fileName)

htmlFile = open(fileName,"rt")
print("starting to parse file ...")

def download(url, file_name): 
    print("fetching " + url + " as " + file_name + " ...")
    with open(file_name, "wb") as file:
        response = requests.get(url)        
        file.write(response.content)

match = re.findall('data-url="//([^>]+.mp3)">(\d+.mp3)', htmlFile.read())
for m in match:    
    download("https://" + m[0], m[1])


htmlFile.close()
exit()

