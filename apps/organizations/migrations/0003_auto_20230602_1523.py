# Generated by Django 2.2 on 2023-06-02 15:23

import datetime
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('organizations', '0002_auto_20230531_1501'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='city',
            options={'verbose_name': 'City', 'verbose_name_plural': 'City'},
        ),
        migrations.AlterModelOptions(
            name='courseorg',
            options={'verbose_name': 'Course Institution', 'verbose_name_plural': 'Course Institution'},
        ),
        migrations.AlterModelOptions(
            name='teacher',
            options={'verbose_name': 'Teacher', 'verbose_name_plural': 'Teacher'},
        ),
        migrations.AlterField(
            model_name='city',
            name='add_time',
            field=models.DateTimeField(default=datetime.datetime.now, verbose_name='Add time'),
        ),
        migrations.AlterField(
            model_name='courseorg',
            name='add_time',
            field=models.DateTimeField(default=datetime.datetime.now, verbose_name='Add time'),
        ),
        migrations.AlterField(
            model_name='courseorg',
            name='address',
            field=models.CharField(max_length=150, verbose_name='Institution Address'),
        ),
        migrations.AlterField(
            model_name='courseorg',
            name='category',
            field=models.CharField(choices=[('pxjg', '培训机构'), ('gr', '个人'), ('gx', '高校')], default='pxjg', max_length=4, verbose_name='Institution Type'),
        ),
        migrations.AlterField(
            model_name='courseorg',
            name='city',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='organizations.City', verbose_name='City'),
        ),
        migrations.AlterField(
            model_name='courseorg',
            name='click_nums',
            field=models.IntegerField(default=0, verbose_name='Number of Clicks'),
        ),
        migrations.AlterField(
            model_name='courseorg',
            name='course_nums',
            field=models.IntegerField(default=0, verbose_name='Number of courses'),
        ),
        migrations.AlterField(
            model_name='courseorg',
            name='desc',
            field=models.TextField(verbose_name='Description'),
        ),
        migrations.AlterField(
            model_name='courseorg',
            name='fav_nums',
            field=models.IntegerField(default=0, verbose_name='Number of collections'),
        ),
        migrations.AlterField(
            model_name='courseorg',
            name='name',
            field=models.CharField(max_length=50, verbose_name='Institution Name'),
        ),
        migrations.AlterField(
            model_name='courseorg',
            name='students',
            field=models.IntegerField(default=0, verbose_name='Number of learners'),
        ),
        migrations.AlterField(
            model_name='courseorg',
            name='tag',
            field=models.CharField(default='全国知名', max_length=10, verbose_name='Institutional Tags'),
        ),
        migrations.AlterField(
            model_name='teacher',
            name='add_time',
            field=models.DateTimeField(default=datetime.datetime.now, verbose_name='Add time'),
        ),
        migrations.AlterField(
            model_name='teacher',
            name='age',
            field=models.IntegerField(default=18, verbose_name='Age'),
        ),
        migrations.AlterField(
            model_name='teacher',
            name='click_nums',
            field=models.IntegerField(default=0, verbose_name='Number of Clicks'),
        ),
        migrations.AlterField(
            model_name='teacher',
            name='fav_nums',
            field=models.IntegerField(default=0, verbose_name='Number of collections'),
        ),
        migrations.AlterField(
            model_name='teacher',
            name='image',
            field=models.ImageField(upload_to='teacher/%Y/%m', verbose_name='Avatar'),
        ),
        migrations.AlterField(
            model_name='teacher',
            name='name',
            field=models.CharField(max_length=50, verbose_name='Teacher Name'),
        ),
        migrations.AlterField(
            model_name='teacher',
            name='org',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='organizations.CourseOrg', verbose_name='Affiliation'),
        ),
        migrations.AlterField(
            model_name='teacher',
            name='points',
            field=models.CharField(max_length=50, verbose_name='Teaching Features'),
        ),
        migrations.AlterField(
            model_name='teacher',
            name='work_company',
            field=models.CharField(max_length=50, verbose_name='Placement Company'),
        ),
        migrations.AlterField(
            model_name='teacher',
            name='work_position',
            field=models.CharField(max_length=50, verbose_name='Company Position'),
        ),
        migrations.AlterField(
            model_name='teacher',
            name='work_years',
            field=models.IntegerField(default=0, verbose_name='Years of work'),
        ),
    ]
