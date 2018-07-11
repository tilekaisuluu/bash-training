from bs4 import BeautifulSoup
import requests
import csv
import tornado


akipress_page = 'https://bilim.akipress.org/profile:160/avtorskaya-shkolakompleks/?from=bilim&place=pay'

page = requests.get(akipress_page, timeout=5)

soup = BeautifulSoup(page.content, "html.parser")

name = soup.find('span', attrs={'class': 'field-name'})
print name.string
# name = name_box.text.strip()
value = soup.find('span', attrs={'class': 'field-value'})
print value.string

# with open('index.csv', 'a') as csv_file:
# writer = csv.writer(csv_file)
# writer.writerow([name.string, value.string])

    header = ['name']
  some_list = ['value']
  with open('index.csv', 'wt', newline ='') as file:
    writer = csv.writer(file, delimiter=',')
    writer.writerow(i for i in header)
    for j in some_list:
        writer.writerow(j)

# with open('index.csv', 'a') as f:
    #writer = csv.writer(f)
    #writer.writerow(('name'))
