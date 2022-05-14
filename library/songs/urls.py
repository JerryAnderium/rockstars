from . import views
from rest_framework import routers
from django.urls import path, include

router = routers.DefaultRouter()
router.register(r'artist', views.ArtistViewSet)
router.register(r'album', views.AlbumViewSet)
router.register(r'', views.SongViewSet)

urlpatterns = [
	path('', include(router.urls)),
]