from django.db import models
from apps.users.models import UserProfile
from apps.users.models import BaseModel


class City(BaseModel):
    name = models.CharField(max_length=20, verbose_name="城市")
    desc = models.CharField(max_length=200, verbose_name="描述")

    class Meta:
        verbose_name = "City"
        verbose_name_plural = verbose_name

    def __str__(self):
        return self.name

class CourseOrg(BaseModel):

    name = models.CharField(max_length=50, verbose_name="Institution Name")
    desc = models.TextField(verbose_name="Description")
    tag = models.CharField(default="全国知名", max_length=10, verbose_name="Institutional Tags")
    category = models.CharField(default="pxjg", verbose_name="Institution Type", max_length=4, choices=(("pxjg", "培训机构"), ("gr", "个人"), ("gx", "高校")))
    click_nums = models.IntegerField(default=0, verbose_name="Number of Clicks")
    fav_nums = models.IntegerField(default=0, verbose_name="Number of collections")
    image = models.ImageField(upload_to="org/%Y/%m", verbose_name="logo", max_length=100)
    address = models.CharField(max_length=150, verbose_name="Institution Address")
    students = models.IntegerField(default=0, verbose_name="Number of learners")
    course_nums = models.IntegerField(default=0, verbose_name="Number of courses")
    city = models.ForeignKey(City, on_delete=models.CASCADE, verbose_name="City")

    is_auth = models.BooleanField(default=False, verbose_name="Whether certified")
    is_gold = models.BooleanField(default=False, verbose_name="Whether gold medal")

    def courses(self):
        courses = self.course_set.filter(is_classics=True)[:3]
        return courses


    class Meta:
        verbose_name = "Course Institution"
        verbose_name_plural = verbose_name

    def __str__(self):
        return self.name

class Teacher(BaseModel):
    user = models.OneToOneField(UserProfile, on_delete=models.SET_NULL, null=True, blank=True, verbose_name="User")
    org = models.ForeignKey(CourseOrg, on_delete=models.CASCADE, verbose_name="Affiliation")
    name = models.CharField(max_length=50, verbose_name="Teacher Name")
    work_years = models.IntegerField(default=0, verbose_name="Years of work")
    work_company = models.CharField(max_length=50, verbose_name="Placement Company")
    work_position = models.CharField(max_length=50, verbose_name="Company Position")
    points = models.CharField(max_length=50, verbose_name="Teaching Features")
    click_nums = models.IntegerField(default=0, verbose_name="Number of Clicks")
    fav_nums = models.IntegerField(default=0, verbose_name="Number of collections")
    age = models.IntegerField(default=18, verbose_name="Age")
    image = models.ImageField(upload_to="teacher/%Y/%m", verbose_name="Avatar", max_length=100)

    class Meta:
        verbose_name = "Teacher"
        verbose_name_plural = verbose_name

    def __str__(self):
        return self.name

    def course_nums(self):
        return self.course_set.all().count()