#!/usr/bin/env python3
import csv

characters_data = [
  {
    'Name': 'Himanshi',
    'email':'kunduhimanshi@gmail.com'
    'slack': '@himanshi'
    'biostack': 'drug development'
    'twitter' : 'itsmanshi'
    'hamming': '3'
  },
  

if __name__ == '__main__':
    with open('lotr.csv', 'w') as csvfile:
        writer = csv.DictWriter(csvfile, fieldnames=('Name': 'Himanshi','email','slack','biostack','twitter','hamming'))
        writer.writeheader()
        writer.writerows(characters_data)