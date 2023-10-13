from faker import Faker
import random

fake = Faker()


print("INSERT INTO person VALUES")


def gen_phone():
    first = str(random.randint(100,999))
    second = str(random.randint(1,888)).zfill(3)

    last = (str(random.randint(1,9998)).zfill(4))
    while last in ['1111','2222','3333','4444','5555','6666','7777','8888']:
        last = (str(random.randint(1,9998)).zfill(4))
        
    return '{}-{}-{}'.format(first,second, last)

genders=('Male','Female')

for x in range(1000):
    fname = fake.first_name()
    lname = fake.last_name()
    email = fname[0] + lname + "@gmail.com"

    print('({0}, "{1}", "{2}", "{3}", "{4}", "{5}"),'.format(x+1, fname, lname, email, gen_phone(), random.choice(genders)));