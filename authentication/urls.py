from django.urls import path

from .views import RegistrationAPIView
from .views import LoginAPIView, RegistrationAPIView
from .views import change_username

app_name = 'authentication'
urlpatterns = [
    path('users/', RegistrationAPIView.as_view()),
    path('users/login/', LoginAPIView.as_view()),
    path('change-username/', change_username, name='change-username'),
]