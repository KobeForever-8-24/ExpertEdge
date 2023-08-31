from datetime import datetime
from django.db import models
from django.contrib.auth.models import AbstractUser
# Create your models here.

GENDER_CHOICES = (
    ("male", "男"),
    ("female", "女")
)


class BaseModel(models.Model):
    add_time = models.DateTimeField(default=datetime.now, verbose_name="Add time")

    class Meta:
        abstract = True


class UserProfile(AbstractUser):
    nick_name = models.CharField(max_length=50, verbose_name="Nick Name", default="")
    birthday = models.DateField(verbose_name="Birthday", null=True, blank=True)
    gender = models.CharField(verbose_name="Gender", choices=GENDER_CHOICES, max_length=6)
    address = models.CharField(max_length=100, verbose_name="Address", default="")
    mobile = models.CharField(max_length=11, unique=True, verbose_name="Mobile Number")
    image = models.ImageField(upload_to="head_image/%Y/%m", default="default.jpg")

    class Meta:
        verbose_name = "User Information"
        verbose_name_plural = verbose_name

    def unread_nums(self):
        # 未读消息数量
        return self.usercourse_set.filter(has_read=False).count()

    def __str__(self):
        if self.nick_name:
            return self.nick_name
        else:
            return self.username
