import random

print("INSERT INTO rank VALUES")

booleans=('TRUE','FALSE')

for x in range(100):
    print('({0}, {1}, {2}, {3}, {4}),'.format(x+1, random.choice(booleans), random.choice(booleans), random.choice(booleans), random.choice(booleans)));