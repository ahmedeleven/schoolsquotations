# Generated by Django 2.0.2 on 2018-04-11 09:44

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('quotations', '0005_quotation_received'),
    ]

    operations = [
        migrations.AddField(
            model_name='status',
            name='colour',
            field=models.CharField(max_length=7, null=True),
        ),
        migrations.AlterField(
            model_name='quotation',
            name='received',
            field=models.DateField(null=True),
        ),
    ]
