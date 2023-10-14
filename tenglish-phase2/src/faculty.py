from faker import Faker
import random
import datetime
import os

fake = Faker()


with open("output.txt", "w") as output_file:
    output_file.write("INSERT INTO person VALUES\n")

    start_date = datetime.date(1950, 10, 1)
    end_date = datetime.date(2022, 11, 30)
    num_days = (end_date - start_date).days

    tenured = ("TRUE", "FALSE")

    for x in range(10000):
        fname = fake.first_name()
        lname = fake.last_name()
        email = fname[0] + lname + "@gmail.com"
        randDate = start_date + datetime.timedelta(days=random.randint(1, num_days))
        endDate = randDate + datetime.timedelta(days=1000)

        output_file.write('({0}, {1}, "{2}", "{3}"),\n'.format(x + 1, random.choice(tenured), randDate, endDate))

with open("output.txt", "rb+") as file:
    file.seek(-2, os.SEEK_END)
    file.truncate()