from datetime import datetime

from django.db import models
from apps.organizations.models import Teacher, CourseOrg
from apps.users.models import BaseModel

# Create your models here.
# 1. 设计表结构重要的点
"""
    实体1 <关系> 实体2
    课程 章节 视频 课程资源
"""
# 2. 实体的具体字段

# 3. 每个字段的类型，是否必填

class Course(BaseModel):
    teacher = models.ForeignKey(Teacher, on_delete=models.CASCADE, verbose_name="Lecturer")
    course_org = models.ForeignKey(CourseOrg, null=True, blank=True, on_delete=models.CASCADE, verbose_name="Course Institution")
    name = models.CharField(verbose_name="Course Name", max_length=50)
    desc = models.CharField(verbose_name="Course Description", max_length=300)
    learn_times = models.IntegerField(default=0, verbose_name="Length of study (minutes)")
    degree = models.CharField(verbose_name="Difficulty", choices=(("cj", "初级"), ("zj", "中级"), ("gj", "高级")),max_length=2)
    students = models.IntegerField(default=0, verbose_name='Number of learners')
    fav_nums = models.IntegerField(default=0, verbose_name='Number of Favorites')
    click_nums = models.IntegerField(default=0, verbose_name="Number of Clicks")
    notice = models.CharField(verbose_name="Course Announcement", max_length=300, default="")
    category = models.CharField(default="Back End Development", max_length=20, verbose_name="Course Category")
    tag = models.CharField(default="", verbose_name="Course Tags", max_length=10)
    you_need_know = models.CharField(default="", max_length=300, verbose_name="Course Notes")
    teacher_tell = models.CharField(default="", max_length=300, verbose_name="Teacher tells you")
    is_classics = models.BooleanField(default=False, verbose_name="Is it classic course")

    detail = models.TextField(verbose_name="Course Details")
    is_banner = models.BooleanField(default=False, verbose_name="Whether advertising space")
    image = models.ImageField(upload_to="courses/%Y/%m", verbose_name="Cover image", max_length=100)

    class Meta:
        verbose_name = "Course Information"
        verbose_name_plural = verbose_name

    def __str__(self):
        return self.name

    def lesson_nums(self):
        return self.lesson_set.all().count()


class CourseTag(BaseModel):
    course = models.ForeignKey(Course, on_delete=models.CASCADE, verbose_name="Course")
    tag = models.CharField(max_length=100, verbose_name="Tag")

    class Meta:
        verbose_name = "Course Tags"
        verbose_name_plural = verbose_name

    def __str__(self):
        return self.tag


class Lesson(BaseModel):
    course = models.ForeignKey(Course, on_delete=models.CASCADE) # on_delete表示对应的外键数据被删除后，当前的数据应该如何处理
    name = models.CharField(max_length=100, verbose_name="Chapter Name")
    learn_times = models.IntegerField(default=0, verbose_name="Length of study (minutes)")

    class Meta:
        verbose_name = "Course Section"
        verbose_name_plural = verbose_name

    def __str__(self):
        return self.name

class Video(BaseModel):
    lesson = models.ForeignKey(Lesson, verbose_name="Lesson", on_delete=models.CASCADE)
    name = models.CharField(max_length=100, verbose_name="Video Name")
    learn_times = models.IntegerField(default=0, verbose_name="Length of study (minutes)")
    url = models.CharField(max_length=1000, verbose_name="Access Address")


    class Meta:
        verbose_name = "Video"
        verbose_name_plural = verbose_name

    def __str__(self):
        return self.name

class CourseResource(BaseModel):
    course = models.ForeignKey(Course, on_delete=models.CASCADE, verbose_name="Course")
    name = models.CharField(max_length=100, verbose_name="Name")
    file = models.FileField(upload_to="course/resource/%Y/%m", verbose_name="Download Address", max_length=200)


    class Meta:
        verbose_name = "Course Resource"
        verbose_name_plural = verbose_name

    def __str__(self):
        return self.name
