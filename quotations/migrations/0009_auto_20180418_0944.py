# Generated by Django 2.0.2 on 2018-04-18 06:44

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('quotations', '0008_quotation_requester'),
    ]

    operations = [
        migrations.AlterField(
            model_name='quotation',
            name='requester',
            field=models.IntegerField(null=True),
        ),
    ]