from contents.models import FeedBack
from django import forms


class FeedForm(forms.ModelForm):
    class Meta():
        model = FeedBack
        exclude = []