from django.db import models

from django.contrib.auth import get_user_model

from apps.users.models import BaseModel
from apps.courses.models import Course

UserProfile = get_user_model()

class Banner(BaseModel):
    title = models.CharField(max_length=100, verbose_name="Title")
    image = models.ImageField(upload_to="banner/%Y/%m", max_length=200, verbose_name="Rotating Image")
    url = models.URLField(max_length=200, verbose_name="Access Address")
    index = models.IntegerField(default=0, verbose_name="Order")

    class Meta:
        verbose_name = "Rotating Image"
        verbose_name_plural = verbose_name

    def __str__(self):
        return self.title



class UserAsk(BaseModel):
    name = models.CharField(max_length=20, verbose_name="Name")
    mobile = models.CharField(max_length=11, verbose_name="Mobile")
    course_name = models.CharField(max_length=50, verbose_name="Course Name")

    class Meta:
        verbose_name = "User Inquiry"
        verbose_name_plural = verbose_name

    def __str__(self):
        return "{name}_{course}({mobile})".format(name=self.name, course=self.course_name, mobile=self.mobile)


class CourseComments(BaseModel):
    user = models.ForeignKey(UserProfile, on_delete=models.CASCADE, verbose_name="User")
    course = models.ForeignKey(Course, on_delete=models.CASCADE, verbose_name="Course")
    comments = models.CharField(max_length=200, verbose_name="Comment Content")


    class Meta:
        verbose_name = "User Comment"
        verbose_name_plural = verbose_name

    def __str__(self):
        return self.comments


class UserFavorite(BaseModel):
    user = models.ForeignKey(UserProfile, on_delete=models.CASCADE, verbose_name="User")
    fav_id = models.IntegerField(verbose_name="data_id")
    fav_type = models.IntegerField(choices=((1, "课程"), (2, "课程机构"), (3, "讲师")), default=1, verbose_name="Collection type")

    class Meta:
        verbose_name = "User Favorites"
        verbose_name_plural = verbose_name

    def __str__(self):
        return "{user}_{id}".format(user=self.user.username, id=self.fav_id)


class UserMessage(BaseModel):
    user = models.ForeignKey(UserProfile, on_delete=models.CASCADE, verbose_name="User")
    message = models.CharField(max_length=200, verbose_name="Message content")
    has_read = models.BooleanField(default=False, verbose_name="Read or unread")

    class Meta:
        verbose_name = "User Message"
        verbose_name_plural = verbose_name

    def __str__(self):
        return self.message


class UserCourse(BaseModel):
    user = models.ForeignKey(UserProfile, on_delete=models.CASCADE, verbose_name="User")
    course = models.ForeignKey(Course, on_delete=models.CASCADE, verbose_name="Course")

    class Meta:
        verbose_name = "User Course"
        verbose_name_plural = verbose_name

    def __str__(self):
        return self.course.name
