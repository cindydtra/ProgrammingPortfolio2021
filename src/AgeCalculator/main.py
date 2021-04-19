import time
from datetime import date

#instructions
print ("Welcome to the Age Calculator! Input your birthday, and I'll calculate your age in different forms:")

#day, month, year
#code to input user birthday
#convert user input into simple name
time.sleep (2)
print ('')
day = int(input("Day: "))
month = int(input("Month (in numerical form): "))
year = int(input("Year: "))

#current date
#cd = time.localtime(time.time())
eD = date.today()
sD = date(year, month, day) 
dBetween = eD - sD

#convert to centuries
cenBetween = dBetween//36500
time.sleep (2)
print ('')
print ('You are', cenBetween, 'centuries old.')

#convert to decades
decBetween = dBetween//3650
print ('You are', decBetween, 'decades old.')

#convert to years
yBetween = dBetween//365
print ('You are', yBetween, 'years old.')

#convert to months
mBetween = dBetween//30
print ('You are', mBetween, 'months old.')

#convert to days
dBetween = eD - sD
print ('You are', dBetween, 'days old.')

#convert to hours
hBetween = dBetween * 24
print ('You are', hBetween, 'hours old.')

#convert to minutes
minBetween = hBetween * 60
print ('You are', minBetween, 'minutes old.')

#convert to seconds
secBetween = minBetween * 60
print ('You are', secBetween, 'seconds old.')