# myapp/urls.py
from django.urls import path
from .views import ProductListView, home, delete_product, add_product, edit_product, others

urlpatterns = [
    path('products/', ProductListView.as_view(), name='product-list'),
    path('home', home, name='home'),
    path('others/', others, name='others'),
    
]

from .views import CategoryProductListView, CustomerListView, OrderListView, ReviewListView, edit_customer, delete_customer, add_customer, edit_order, delete_order, add_order, ReviewCreateView, ReviewDeleteView, ReviewUpdateView

urlpatterns = [
    
    path('category/<slug:category_slug>/', CategoryProductListView.as_view(), name='category-products'),
    path('customers/', CustomerListView.as_view(), name='customer-list'),
    path('orders/', OrderListView.as_view(), name='order-list'),
    path('reviews/', ReviewListView.as_view(), name='review-list'),
    path('products/edit/<int:pk>/', edit_product, name='edit_product'),
    path('products/add/', add_product, name='add_product'),
    path('products/delete/<int:pk>/', delete_product, name='delete_product'),
    path('customers/edit/<int:pk>/', edit_customer, name='edit_customer'),
    path('customers/add/', add_customer, name='add_customer'),
    path('customers/delete/<int:pk>/', delete_customer, name='delete_customer'),
    path('orders/add/', add_order, name='add_order'),
    path('orders/edit/<int:pk>/', edit_order, name='edit_order'),
    path('orders/delete/<int:pk>/', delete_order, name='delete_order'),
    path('reviews/add/', ReviewCreateView.as_view(), name='add_review'),
    path('reviews/edit/<int:pk>/', ReviewUpdateView.as_view(), name='edit_review'),
    path('reviews/delete/<int:pk>/', ReviewDeleteView.as_view(), name='delete_review'),
]