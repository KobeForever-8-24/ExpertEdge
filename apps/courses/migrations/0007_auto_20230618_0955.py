# Generated by Django 2.2 on 2023-06-18 09:55

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('courses', '0006_coursetag'),
    ]

    operations = [
        migrations.AlterField(
            model_name='video',
            name='url',
            field=models.CharField(max_length=1000, verbose_name='Access Address'),
        ),
    ]
