
from django.db import models

class person(models.Model):
    first_name = models.CharField(max_length=30)
    last_name = models.CharField(max_length=30)
    suffix = models.CharField(max_length=10)
    preferred_first_name = models.CharField(max_length=30)
    email = models.CharField(max_length=80)
    gender = models.CharField(max_length=20)
    cellphone = models.CharField(max_length=15)
    dob = models.DateField()

class address(models.Model):
    street_address = models.CharField(max_length=40)
    city = models.CharField(max_length=40)
    state = models.CharField(max_length=2)
    zipcode = models.CharField(max_length=9)
    country = models.CharField(max_length=40)

class address_person(models.Model): 
    person_id = models.ForeignKey("person", on_delete=models.CASCADE)
    address_id = models.ForeignKey("address", on_delete=models.CASCADE)
    is_primary = models.BooleanField(default=False)

class candidate(models.Model):
    person_id = models.ForeignKey("person", on_delete=models.CASCADE),
    degree_level = models.CharField(max_length=30)
    recent_degree = models.CharField(max_length=40)
    I9_checked = models.BooleanField()
    background_check_data = models.TextField()
    years_experience = models.IntegerField()
    previous_institution = models.TextField()

class staff(models.Model):
    department = models.CharField(max_length=40)

# ref: staff.id - job.id

class job(models.Model): 
    start_date =  models.DateTimeField()
    end_date = models.DateTimeField()
    position_title = models.CharField(max_length = 40)
    supervisor = models.IntegerField()
    office_building = models.CharField(max_length = 40)
    extension = models.IntegerField()
    is_fulltime = models.BooleanField()
    is_salaried = models.BooleanField()
    is_primary_job = models.BooleanField()

# ref: job.id > person.id

class faculty(models.Model):
    department = models.CharField(max_length=20) 
    division = models.CharField(max_length = 40) 
    rank = models.TextField() 
    is_tenured = models.BooleanField()

# ref: faculty.id < job.id
