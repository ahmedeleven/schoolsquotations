# Generated by Django 2.0.2 on 2018-04-22 10:15

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('quotations', '0010_quotation_itadmin'),
    ]

    operations = [
        migrations.AlterField(
            model_name='quotation',
            name='itadmin',
            field=models.CharField(max_length=100, null=True),
        ),
    ]
