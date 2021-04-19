import time
 
#1. print to the user a welcome and instruction
print ("Welcome to the Pig Latin Converter!")
 
#2. print an invitation for the user to provide a word
time.sleep(1)
print ('Type a word, and the Converter will change your word into Pig Latin.')
 
#3. saving a string to memory from input (python uses input)
time.sleep(1.2)
print (' ')
word = input ("Enter your word: " )
 
#4. change the string to lowercase
str = word
low = str.lower()
 
#5. isolate the first character of the string as a variable
fChar = low[0]
 
#6. save the rest of the string as a variable
rest = low[1:]
 
#7. have a variable for “ay”
ay = 'ay'
 
#8. have a variable for “way”
way = 'way'
 
#9. check to see if the first letter is a vowel
if fChar == 'a' or fChar == 'e' or fChar == 'i' or fChar == 'o' or fChar == 'u':
 
#10. print to the user the proper concatenation of the pig latin word
 cap = str.capitalize()
 vowel = rest +  fChar + way
 str = vowel
 cap_vowel = str.capitalize()
 time.sleep(2)
 print ('"' + cap + '"' + ' converted to Pig Latin is... ')
 time.sleep(3)
 print (cap_vowel + '.')
 
#11. check to see if the first letter is a consonant + print to the user the proper concatenation of the pig latin word (with a beginning consonant)
else:
 cap = str.capitalize()
 consonant = rest + fChar + ay
 str = consonant
 cap_consonant = str.capitalize()
 time.sleep(2)
 print ('"' + cap + '"' + ' converted to Pig Latin is... ')
 time.sleep(3)
 print (cap_consonant + '.')