import re
import requests
import sys
from pathlib import Path

if(len(sys.argv) < 2):
    exit("missing filename as argument")

url = sys.argv[1]
print("trying to fetch url " + url)

def getHtmlFile(url):
    response = requests.get(url)
    if response.status_code == 200:
        print('fetched html file successfully')
    elif response.status_code == 404:
        print('html file not found')
        exit()
    return response.text
    

def download(url, file_name): 
    print("fetching " + url + " as " + file_name + " ...")
    with open(file_name, "wb") as file:
        response = requests.get(url)        
        file.write(response.content)


htmlBody = getHtmlFile(url)

match = re.findall('data-url="//([^>]+.mp3)">(\d+.mp3)', htmlBody)
for m in match:  
    url = "https://" + m[0]
    file_name = m[1]  
    path = Path(file_name)
    if path.is_file():
        print("file " + file_name + " already exists - skipping download")
    else:
        download(url, file_name)

exit()