import random
import time

print("Welcome to the Number Guessing Game!")
time.sleep(.7)
print("Guess a number between 1 and 100:")
print (' ')

a = 0 #attempts
n = random.randint(1, 100) #random number
#g stands for guess

while a < n:
  g = input()
  g = int(g)
  a + 1

  if g < n:
    time.sleep(.5)
    print('You guessed', g, '...')
    print('Your number is too low. Try again:') 
    print (' ')
    a = a + 1

  if g > n:
    time.sleep(.5)
    print('You guessed', g, '...')
    print('Your number is too high. Try again:') 
    print (' ')
    a = a + 1

  if g == n:
    time.sleep(.5)
    print('You guessed', g, '...')
    print("That's right! You guessed it!") 
    time.sleep(.8)
    print('You guessed the number in', a, 'attempts.')
    break