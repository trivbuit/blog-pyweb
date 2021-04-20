from django.urls import path
from . import views

urlpatterns = [
    # path('', views.list, name='blog'),
    # path('<int:id>/', views.post, name='post'),
    path('', views.PostListView.as_view(), name='blog'),
    # path('<int:pk>/', views.PostDetailView.as_view(), name='post'),
    path('<int:pk>/', views.post, name='post'),
]