import random

print("INSERT INTO university VALUES")

booleans=('TRUE','FALSE')

highest_level=("Master's", "Ph.D", "Undergraduate", "Graduate")

for x in range(100):
    print('({0}, "{1}", {2}),'.format(x+1, random.choice(highest_level), random.choice(booleans)));