import random
import datetime
import os



with open("degrees.txt", "w") as output_file:
    output_file.write("INSERT INTO degree VALUES\n")

    start_date = datetime.date(1950, 10, 1)
    end_date = datetime.date(2022, 11, 30)
    num_days = (end_date - start_date).days

    degrees = (
        "Computer Science",
        "Biology",
        "Liberal Studies",
        "Graphic Design",
        "Underwater Basketweaving",
        "Spanish",
        "French",
        "Physics",
        "Botany",
        "Kineseology",
        "Business",
        "Economics",
        "Data Analysis",
        "Philosophy",
        "Psychology",
        "German",
        "Theatre",
        "Art",
        "Music",
        "Religious Studies",
        "Mathematics")

    degree_types = (
        "Bachelors in the Arts",
        "Bachelors in the Sciences",
        "Master's Degree",
        "Ph.D"
    )

    for x in range(10000):
        randDate = start_date + datetime.timedelta(days=random.randint(1, num_days))
        endDate = randDate + datetime.timedelta(days=1000)

        output_file.write('({0}, "{1}", "{2}", "{3}"),\n'.format(x + 1, random.choice(degrees), random.choice(degree_types), random.randint(1970, 2023)))

with open("degrees.txt", "rb+") as file:
    file.seek(-2, os.SEEK_END)
    file.truncate()