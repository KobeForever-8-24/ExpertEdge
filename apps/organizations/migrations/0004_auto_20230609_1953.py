# Generated by Django 2.2 on 2023-06-09 19:53

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('organizations', '0003_auto_20230602_1523'),
    ]

    operations = [
        migrations.AddField(
            model_name='courseorg',
            name='is_auth',
            field=models.BooleanField(default=False, verbose_name='Whether certified'),
        ),
        migrations.AddField(
            model_name='courseorg',
            name='is_gold',
            field=models.BooleanField(default=False, verbose_name='Whether gold medal'),
        ),
        migrations.AlterField(
            model_name='teacher',
            name='user',
            field=models.OneToOneField(blank=True, null=True, on_delete=django.db.models.deletion.SET_NULL, to=settings.AUTH_USER_MODEL, verbose_name='User'),
        ),
    ]
