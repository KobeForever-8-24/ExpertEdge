import re
from django import forms
from apps.operations.models import UserAsk


class AddAskForm(forms.ModelForm):
    mobile = forms.CharField(max_length=11, min_length=11, required=True)

    class Meta:
        model = UserAsk
        fields = ["name", "mobile", "course_name"]

    def clean_mobile(self):
        """
        验证手机号是否合法
        """
        mobile = self.cleaned_data["mobile"]
        regex_mobile = "^1[358]\d{9}$|^147\d{8}$|^176\d{8}$"
        p = re.compile(regex_mobile)
        if p.match(mobile):
            return mobile
        else:
            raise forms.ValidationError("Invalid phone number", code="mobile_invalid")
