from django import forms
from .models import Status
from .models import School
from .models import Itadmin
from .models import Company
from .models import Technician
from .models import Quotation
from django.contrib.auth.models import User
from django.contrib.auth.models import Group
from django.contrib.auth.models import Permission
from django.contrib.auth.forms import UserCreationForm
from django.contrib.admin import helpers, widgets

class StatusForm(forms.ModelForm):
	name = forms.CharField()
	color = forms.CharField()
	class Meta:
		model = Status
		fields = ['name','color']


class SchoolForm(forms.ModelForm):
	name_en = forms.CharField()
	name_ar = forms.CharField()
	email = forms.EmailField()
	class Meta:
		model = School
		fields = ['name_en','name_ar','email']

class ItadminForm(forms.ModelForm):
	name = forms.CharField()
	email = forms.EmailField()
	phone = forms.CharField()
	school = forms.ModelChoiceField(queryset = School.objects.all())
	class Meta:
		model = Itadmin
		fields = ['name','email','phone','school']

class CompanyForm(forms.ModelForm):
	name = forms.CharField()
	email = forms.EmailField()
	phone = forms.CharField()
	class Meta:
		model = Company
		fields = ['name','email','phone']

class TechnicianForm(forms.ModelForm):
	name = forms.CharField()
	email = forms.EmailField(required=False)
	phone = forms.CharField(required=False)
	department = forms.CharField(required=False)
	class Meta:
		model = Technician
		fields = ['name','email','phone','department']

class QuotationForm(forms.ModelForm):
	REQUESTER_CHOICES = (('1', 'School',), ('2', 'IT Admin',))
	school = forms.ModelChoiceField(queryset = School.objects.all())
	requester = forms.ChoiceField(widget=forms.RadioSelect, choices=REQUESTER_CHOICES)
	itadmin = forms.CharField(required=False)
	technician = forms.ModelChoiceField(queryset = Technician.objects.all())
	company = forms.ModelChoiceField(queryset = Company.objects.all())
	status = forms.ModelChoiceField(queryset = Status.objects.all())
	received = forms.DateField(required=False, input_formats=['%d/%m/%Y','%Y-%m-%d'])
	notes = forms.CharField(required=False,widget=forms.Textarea)
	
	class Meta:
		model = Quotation
		fields = ['school','requester','technician','company','status','received','notes','itadmin']
		widgets = {
           'received': forms.DateInput(format=('%d/%m/%Y'), attrs={'class': 'datepicker'}),
        }



class SignUpForm(UserCreationForm):
	first_name = forms.CharField(max_length=30, required=False, help_text='Optional.')
	last_name = forms.CharField(max_length=30, required=False, help_text='Optional.')
	email = forms.EmailField(max_length=254, required=False, help_text='Required. Inform a valid email address.')

	class Meta:
		model = User
		fields = ['username', 'first_name', 'last_name', 'email', 'password1', 'password2', ]



class EditUserForm(forms.ModelForm):
	first_name = forms.CharField(max_length=30, required=False, help_text='Optional.')
	last_name = forms.CharField(max_length=30, required=False, help_text='Optional.')
	email = forms.EmailField(max_length=254, required=False, help_text='Required. Inform a valid email address.')
	#user_permissions = forms.ModelMultipleChoiceField(queryset=Permission.objects.all(), required=False, widget=widgets.FilteredSelectMultiple('Permission', is_stacked=filter_horizontal))
	#user_permissions = forms.ModelMultipleChoiceField(queryset=Permission.objects.all(), required=False, widget=forms.CheckboxSelectMultiple)
	user_permissions = forms.ModelMultipleChoiceField(queryset=Permission.objects.all(), required=False)
	

	class Meta:
		model = User
		fields = ['username', 'first_name', 'last_name', 'email','user_permissions']


class GroupForm(forms.ModelForm):
	name = forms.CharField(max_length=30, required=True)
	permissions = forms.ModelMultipleChoiceField(queryset=Permission.objects.all(), required=False)
	class Meta:
		model = Group
		fields = ['name','permissions']