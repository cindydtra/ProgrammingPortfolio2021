import random
import time

print ('Welcome! I will ask you a question, and it would be great if you gave a thoughtful answer!')
print ('')
n = random.randint(1, 10)

time.sleep(1)
if n == 1:
  print ('Do you think crying is a sign of weakness or strength?')
elif n == 2:
  print ('What would you do differently if you knew nobody would judge you?')
elif n == 3:
  print ('What is the difference between living and existing?')
elif n == 4:
  print ('Have you done anything lately that is worth remembering?')
elif n == 5:
  print ('Would you break the law to save a loved one?')
elif n == 6:
  print ('When was the last time you tried something new? How did you feel after you did?')
elif n == 7:
  print ('What is worse: failing or never trying?')
elif n == 8:
  print ('Do you ask enough questions or do you settle for what you know?')
elif n == 9:
  print ('Is stealing to save a starving child wrong?')
else:
  print ('What is one thing you would most like to change about the world?')

print (' ')
answer = input()

file_object = open('output.txt', 'a')
file_object.write(answer)
file_object.close()