from django.shortcuts import render,redirect
from django.core.paginator import Paginator, EmptyPage, PageNotAnInteger
from django.contrib.auth.decorators import permission_required
from django.contrib.auth.decorators import login_required
from django.contrib.auth.decorators import user_passes_test

from .forms import StatusForm
from .forms import SchoolForm
from .forms import ItadminForm
from .forms import CompanyForm
from .forms import TechnicianForm
from .forms import QuotationForm
from .forms import SignUpForm
from .forms import EditUserForm
from .forms import GroupForm
from .models import Status
from .models import School
from .models import Itadmin
from .models import Company
from .models import Technician
from .models import Quotation
from django.contrib.auth.models import User
from django.contrib.auth.models import Group
from django.contrib.auth.models import Permission


import json
import csv
from django.http import HttpResponse

@login_required
def statusesIndex(request):
	statuses_list = Status.objects.all()

	page = request.GET.get('page', 1)

	paginator = Paginator(statuses_list, 10)
	try:
		statuses = paginator.page(page)
	except PageNotAnInteger:
		statuses = paginator.page(1)
	except EmptyPage:
		statuses = paginator.page(paginator.num_pages)

	return render(request,"statuses/index.html",{'statuses':statuses,})

@permission_required('quotations.add_status', raise_exception=True)
def statusesAdd(request):
	form = StatusForm(request.POST or None)
	if form.is_valid():
		form.save()
		return redirect('statusesIndex')
	else:
		return render(request,"statuses/add.html",{'form':form,'action_link': 'statusesAdd','error_message': "There is a problem here."})


@permission_required('quotations.change_status', raise_exception=True)
def statusesEdit(request,id):
	status = Status.objects.get(id=id)
	form = StatusForm(request.POST or None, instance=status)
	if form.is_valid():
		form.save()
		return redirect('statusesIndex')
	else:
		return render(request,"statuses/add.html",{'form':form,'status':status})


@permission_required('quotations.delete_status', raise_exception=True)
def statusesDelete(request,id):
	status = Status.objects.get(id=id)
	status.delete()
	return redirect('statusesIndex')


''' schools functions '''
@login_required
def schoolsIndex(request):
	schools_list = School.objects.all()

	page = request.GET.get('page', 1)

	paginator = Paginator(schools_list, 10)
	try:
		schools = paginator.page(page)
	except PageNotAnInteger:
		schools = paginator.page(1)
	except EmptyPage:
		schools = paginator.page(paginator.num_pages)

	return render(request,"schools/index.html",{'schools':schools,})


def schoolsList(request):
	schools = School.objects.all()
	return render(request,"schools/list.html",{'schools':schools,})


@permission_required('quotations.add_school', raise_exception=True)
def schoolsAdd(request):
	form = SchoolForm(request.POST or None)
	if form.is_valid():
		form.save()
		return redirect('schoolsIndex')
	else:
		return render(request,"schools/add.html",{'form':form,'action_link': 'schoolsAdd','error_message': "There is a problem here."})


@permission_required('quotations.edit_school', raise_exception=True)
def schoolsEdit(request,id):
	school = School.objects.get(id=id)
	form = SchoolForm(request.POST or None, instance=school)
	if form.is_valid():
		form.save()
		return redirect('schoolsIndex')
	else:
		return render(request,"schools/add.html",{'form':form,'school':school})


@permission_required('quotations.delete_school', raise_exception=True)
def schoolsDelete(request,id):
	school = School.objects.get(id=id)
	school.delete()
	return redirect('schoolsIndex')


''' IT Admin '''
@login_required
def itadminsIndex(request):
	itadmins_list = Itadmin.objects.all()

	page = request.GET.get('page', 1)

	paginator = Paginator(itadmins_list, 10)
	try:
		itadmins = paginator.page(page)
	except PageNotAnInteger:
		itadmins = paginator.page(1)
	except EmptyPage:
		itadmins = paginator.page(paginator.num_pages)

	return render(request,"itadmins/index.html",{'itadmins':itadmins,})


@permission_required('quotations.add_itadmin', raise_exception=True)
def itadminsAdd(request):
	form = ItadminForm(request.POST or None)
	if form.is_valid():
		form.save()
		return redirect('itadminsIndex')
	else:
		return render(request,"itadmins/add.html",{'form':form,'action_link': 'itadminsAdd','error_message': "There is a problem here."})

@permission_required('quotations.change_itadmin', raise_exception=True)
def itadminsEdit(request,id):
	itadmin = Itadmin.objects.get(id=id)
	form = ItadminForm(request.POST or None, instance=itadmin)
	if form.is_valid():
		form.save()
		return redirect('itadminsIndex')
	else:
		return render(request,"itadmins/add.html",{'form':form,'itadmin':itadmin})

@permission_required('quotations.delete_itadmin', raise_exception=True)
def itadminsDelete(request,id):
	itadmin = Itadmin.objects.get(id=id)
	itadmin.delete()
	return redirect('itadminsIndex')

def itadminsList(request):
	if request.GET['school_id']:
		#result = result.filter(school__name_en__icontains = request.GET['school_name'])
		itadmins = Itadmin.objects.filter(school__id__icontains = request.GET['school_id'])
		return render(request,"itadmins/list.html",{'itadmins':itadmins,})
	else:
		return render(request,"itadmins/list.html",{'itadmins':itadmins,})



''' Companies '''
@login_required
def companiesIndex(request):
	companies_list = Company.objects.all()

	page = request.GET.get('page', 1)

	paginator = Paginator(companies_list, 10)
	try:
		companies = paginator.page(page)
	except PageNotAnInteger:
		companies = paginator.page(1)
	except EmptyPage:
		companies = paginator.page(paginator.num_pages)

	return render(request,"companies/index.html",{'companies':companies,})


@permission_required('quotations.add_company', raise_exception=True)
def companiesAdd(request):
	form = CompanyForm(request.POST or None)
	if form.is_valid():
		form.save()
		return redirect('companiesIndex')
	else:
		return render(request,"companies/add.html",{'form':form,'action_link': 'companiesAdd','error_message': "There is a problem here."})

@permission_required('quotations.change_company', raise_exception=True)
def companiesEdit(request,id):
	company = Company.objects.get(id=id)
	form = CompanyForm(request.POST or None, instance=company)
	if form.is_valid():
		form.save()
		return redirect('companiesIndex')
	else:
		return render(request,"companies/add.html",{'form':form,'company':company})

@permission_required('quotations.delete_company', raise_exception=True)
def companiesDelete(request,id):
	company = Company.objects.get(id=id)
	company.delete()
	return redirect('companiesIndex')


''' Technicians '''
@login_required
def techniciansIndex(request):
	technicians_list = Technician.objects.all()

	page = request.GET.get('page', 1)

	paginator = Paginator(technicians_list, 10)
	try:
		technicians = paginator.page(page)
	except PageNotAnInteger:
		technicians = paginator.page(1)
	except EmptyPage:
		technicians = paginator.page(paginator.num_pages)

	return render(request,"technicians/index.html",{'technicians':technicians,})


@permission_required('quotations.add_technician', raise_exception=True)
def techniciansAdd(request):
	form = TechnicianForm(request.POST or None)
	if form.is_valid():
		form.save()
		return redirect('techniciansIndex')
	else:
		return render(request,"technicians/add.html",{'form':form,'action_link': 'techniciansAdd','error_message': "There is a problem here."})

@permission_required('quotations.change_technician', raise_exception=True)
def techniciansEdit(request,id):
	technician = Technician.objects.get(id=id)
	form = TechnicianForm(request.POST or None, instance=technician)
	if form.is_valid():
		form.save()
		return redirect('techniciansIndex')
	else:
		return render(request,"technicians/add.html",{'form':form,'technician':technician})

@permission_required('quotations.delete_technician', raise_exception=True)
def techniciansDelete(request,id):
	technician = Technician.objects.get(id=id)
	technician.delete()
	return redirect('techniciansIndex')


''' Quotations '''
@login_required
def quotationsIndex(request):
	statuses_list = Status.objects.only('name')
	technicians_list = Technician.objects.only('name')

	quotations_list = Quotation.objects.all().order_by('-id')

	quotations_ids = []
	for quotation in quotations_list:
		quotations_ids.append(quotation.id)

	quotations_ids_string = '-'.join(str(x) for x in quotations_ids)



	#return HttpResponse(quotations_ids_string)
	page = request.GET.get('page', 1)

	paginator = Paginator(quotations_list, 10)
	try:
		quotations = paginator.page(page)
	except PageNotAnInteger:
		quotations = paginator.page(1)
	except EmptyPage:
		quotations = paginator.page(paginator.num_pages)

	return render(request,"quotations/index.html",{'quotations':quotations,'statuses_list':statuses_list,'technicians_list':technicians_list, 'quotations_ids_string':quotations_ids_string})


def quotationsExport(request,ids):
	ids_array = ids.split('-')
	quotations_list = Quotation.objects.all().filter(id__in = ids_array).order_by('-id')
	response = HttpResponse(content_type='text/csv')
	response['Content-Disposition'] = 'attachment; filename="quotationsexport.csv"'

	writer = csv.writer(response)
	writer.writerow(['Id', 'School','requester', 'Technician', 'Company', 'Status', 'Received', ' Created'])

	for quotation in quotations_list:
		row = []
		row.append('QS'+str(quotation.id))
		row.append(quotation.school)
		row.append(quotation.technician)
		row.append(quotation.company)
		row.append(quotation.status)
		row.append(quotation.received)
		row.append(quotation.created)
		writer.writerow(row)

	return response


@permission_required('quotations.add_quotation', raise_exception=True)
def quotationsAdd(request):
	form = QuotationForm(request.POST or None)
	if form.is_valid():
		form.save()
		return redirect('quotationsIndex')
	else:
		return render(request,"quotations/add.html",{'form':form,'action_link': 'quotationsAdd','error_message': "There is a problem here."})


@permission_required('quotations.change_quotation', raise_exception=True)
def quotationsEdit(request,id):
	quotation = Quotation.objects.get(id=id)
	form = QuotationForm(request.POST or None, instance=quotation)
	if form.is_valid():
		form.save()
		return redirect('quotationsIndex')
	else:
		return render(request,"quotations/add.html",{'form':form,'quotation':quotation})


@login_required
def quotationsSearch(request):
	result = Quotation.objects.all()
	if request.GET['id']:
		result = result.filter(id = request.GET['id'])
	if request.GET['school_name']:
		result = result.filter(school__name_en__icontains = request.GET['school_name'])
	if request.GET['company_name']:
		result = result.filter(company__name__icontains = request.GET['company_name'])
	if request.GET['technician_name']:
		result = result.filter(technician__name__icontains = request.GET['technician_name'])
	if request.GET['status_name']:
		result = result.filter(status__name__icontains = request.GET['status_name'])
	if request.GET['received_from']:
		result = result.filter(received__gte = request.GET['received_from'])
	if request.GET['received_to']:
		result = result.filter(received__lte = request.GET['received_to'])



	quotations_ids = []
	for quotation in result:
		quotations_ids.append(quotation.id)

	quotations_ids_string = '-'.join(str(x) for x in quotations_ids)

	'''paginator = Paginator(result, 10)
	page = request.GET.get('page', 1)

	
	try:
		quotations = paginator.page(page)
	except PageNotAnInteger:
		quotations = paginator.page(1)
	except EmptyPage:
		quotations = paginator.page(paginator.num_pages)'''

	#data = request.GET['project_name']
	return render(request, 'quotations/search.html',{'quotations':result,'quotations_ids_string':quotations_ids_string})

@permission_required('quotations.delete_quotation', raise_exception=True)
def quotationsDelete(request,id):
	quotation = Quotation.objects.get(id=id)
	quotation.delete()
	return redirect('quotationsIndex')

#@permission_required('quotations.delete_quotation', raise_exception=True)
@login_required
def quotationsView(request,id):
	quotation = Quotation.objects.get(id=id)
	return render(request,"quotations/view.html",{'quotation':quotation,'aaa':'aaa'})


@user_passes_test(lambda u: u.is_superuser)
def usersAdd(request):
	form = SignUpForm(request.POST or None)
	if form.is_valid():
		form.save()
		return redirect('usersIndex')
	else:
		return render(request,"users/add.html",{'form':form,'action_link': 'usersAdd','error_message': "There is a problem here."})


@user_passes_test(lambda u: u.is_superuser)
def usersEdit(request,id):
	user = User.objects.get(id=id)
	form = EditUserForm(request.POST or None, instance=user)
	if form.is_valid():
		form.save()
		return redirect('usersIndex')
	else:
		return render(request,"users/edit.html",{'form':form,'theuser':user})

@user_passes_test(lambda u: u.is_superuser)
def usersIndex(request):
	users_list = User.objects.all()

	page = request.GET.get('page', 1)

	paginator = Paginator(users_list, 10)
	try:
		users = paginator.page(page)
	except PageNotAnInteger:
		users = paginator.page(1)
	except EmptyPage:
		users = paginator.page(paginator.num_pages)

	return render(request,"users/index.html",{'users':users,})


@user_passes_test(lambda u: u.is_superuser)
def usersView(request,id):
	user = User.objects.get(id=id)
	permissions = Permission.objects.filter(user__id=id)
	groups = Group.objects.filter(user__id=id)
	return render(request,"users/view.html",{'theuser':user,'permissions':permissions,'groups':groups})

@user_passes_test(lambda u: u.is_superuser)
def usersDelete(request,id):
	user = User.objects.get(id=id)
	user.delete()
	return redirect('usersIndex')


@user_passes_test(lambda u: u.is_superuser)
def groupsAdd(request):
	form = GroupForm(request.POST or None)
	if form.is_valid():
		form.save()
		return redirect('groupsIndex')
	else:
		return render(request,"groups/add.html",{'form':form,'action_link': 'groupsAdd','error_message': "There is a problem here."})


@user_passes_test(lambda u: u.is_superuser)
def groupsEdit(request,id):
	group = Group.objects.get(id=id)
	form = GroupForm(request.POST or None, instance=group)
	if form.is_valid():
		form.save()
		return redirect('groupsIndex')
	else:
		return render(request,"groups/add.html",{'form':form,'group':group})

@user_passes_test(lambda u: u.is_superuser)
def groupsIndex(request):
	groups_list = Group.objects.all()

	page = request.GET.get('page', 1)

	paginator = Paginator(groups_list, 10)
	try:
		groups = paginator.page(page)
	except PageNotAnInteger:
		groups = paginator.page(1)
	except EmptyPage:
		groups = paginator.page(paginator.num_pages)

	return render(request,"groups/index.html",{'groups':groups,})


@user_passes_test(lambda u: u.is_superuser)
def groupsView(request,id):
	group = Group.objects.get(id=id)
	permissions = Permission.objects.filter(group__id=id)
	users = User.objects.filter(groups__id=id)
	return render(request,"groups/view.html",{'group':group,'permissions':permissions,'users':users})


@user_passes_test(lambda u: u.is_superuser)
def groupsDelete(request,id):
	group = Group.objects.get(id=id)
	group.delete()
	return redirect('groupsIndex')


















@user_passes_test(lambda u: u.is_superuser)
def permissionsAdd(request):
	form = PermissionForm(request.POST or None)
	if form.is_valid():
		form.save()
		return redirect('permissionsIndex')
	else:
		return render(request,"permissions/add.html",{'form':form,'action_link': 'permissionsAdd','error_message': "There is a problem here."})


@user_passes_test(lambda u: u.is_superuser)
def permissionsEdit(request,id):
	permission = Permission.objects.get(id=id)
	form = PermissionForm(request.POST or None, instance=permission)
	if form.is_valid():
		form.save()
		return redirect('permissionsIndex')
	else:
		return render(request,"permissions/add.html",{'form':form,'permission':permission})

@user_passes_test(lambda u: u.is_superuser)
def permissionsIndex(request):
	permissions_list = Permission.objects.all()

	page = request.GET.get('page', 1)

	paginator = Paginator(permissions_list, 10)
	try:
		permissions = paginator.page(page)
	except PageNotAnInteger:
		permissions = paginator.page(1)
	except EmptyPage:
		permissions = paginator.page(paginator.num_pages)

	return render(request,"permissions/index.html",{'permissions':permissions,})



@user_passes_test(lambda u: u.is_superuser)
def permissionsDelete(request,id):
	permission = Permission.objects.get(id=id)
	permission.delete()
	return redirect('permissionsIndex')




