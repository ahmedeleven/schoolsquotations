from django.db import models

class School(models.Model):
	name_en = models.CharField(max_length=100)
	name_ar = models.CharField(max_length=100)
	email = models.EmailField(null=True)

	def __str__(self):
		return self.name_en

class Status(models.Model):
	name = models.CharField(max_length=50)
	color = models.CharField(max_length=7, null=True)

	def __str__(self):
		return self.name

class Company(models.Model):
	name = models.CharField(max_length=100)
	email = models.EmailField(null=True)
	phone = models.CharField(max_length=30, null=True)

	def __str__(self):
		return self.name

class Itadmin(models.Model):
	name = models.CharField(max_length=100)
	email = models.EmailField(null=True)
	phone = models.CharField(max_length=30, null=True)
	school = models.ForeignKey(School, null=True, on_delete=models.SET_NULL)

	def __str__(self):
		return self.name

class Technician(models.Model):
	name = models.CharField(max_length=100)
	email = models.EmailField(null=True)
	phone = models.CharField(max_length=30, null=True)
	department = models.CharField(max_length=100, null=True)

	def __str__(self):
		return self.name


class Quotation(models.Model):
	school = models.ForeignKey(School, null=True, on_delete=models.CASCADE)
	requester = models.IntegerField(null=True)
	itadmin = models.CharField(max_length=100, null=True)
	technician = models.ForeignKey(Technician, null=True, on_delete=models.SET_NULL)
	company = models.ForeignKey(Company, null=True, on_delete=models.SET_NULL)
	status = models.ForeignKey(Status, null=True, on_delete=models.SET_NULL)
	received = models.DateField(null=True)
	notes = models.TextField(null=True)
	created = models.DateField(auto_now_add=True, blank=True)

	def __str__(self):
		return self.notes
