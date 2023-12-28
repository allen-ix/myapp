
# Create your views here.

# myapp/views.py
from django.shortcuts import render
from django.views import View
from .models import Product

def home(request):
    return render(request, 'myapp/home.html')

def others(request):
    return render(request, 'myapp/others.html')


class ProductListView(View):
    template_name = 'product_list.html'

    def get(self, request, *args, **kwargs):
        products = Product.objects.all()
        return render(request, self.template_name, {'products': products})

# myapp/views.py
from django.shortcuts import render
from django.views import View
from .models import Product, Category
from django.shortcuts import render, get_object_or_404
from django.views import View
from .models import Category, Product

class CategoryProductListView(View):
    template_name = 'myapp/category_product_list.html'

    def get(self, request, category_slug, *args, **kwargs):
        category = get_object_or_404(Category, slug=category_slug)
        products = Product.objects.filter(category=category)
        return render(request, self.template_name, {'category': category, 'products': products})


# myapp/views.py
from django.shortcuts import render
from django.views import View
from .models import Customer

class CustomerListView(View):
    template_name = 'myapp/customer_list.html'

    def get(self, request, *args, **kwargs):
        customers = Customer.objects.all()
        return render(request, self.template_name, {'customers': customers})

# myapp/views.py
from django.shortcuts import render
from django.views import View
from .models import Order

class OrderListView(View):
    template_name = 'myapp/order_list.html'

    def get(self, request, *args, **kwargs):
        orders = Order.objects.all()
        return render(request, self.template_name, {'orders': orders})
    
    
# myapp/views.py
from django.shortcuts import render
from django.views import View
from .models import Review

class ReviewListView(View):
    template_name = 'myapp/review_list.html'

    def get(self, request, *args, **kwargs):
        reviews = Review.objects.all()
        return render(request, self.template_name, {'reviews': reviews})




# myapp/views.py
from django.shortcuts import render, get_object_or_404, redirect
from .models import Product

def delete_product(request, pk):
    product = get_object_or_404(Product, pk=pk)
    product.delete()
    return redirect('home')  # Redirect to the product list view

    
# myapp/views.py
from django.shortcuts import render, redirect
from .forms import ProductForm

def add_product(request):
    if request.method == 'POST':
        form = ProductForm(request.POST, request.FILES)
        if form.is_valid():
            # Check if the image field is empty
            if not request.FILES.get('image'):
                form.cleaned_data['image'] = None  # Set image to None

            form.save()
            return redirect('home')  # Redirect to the product list page
    else:
        form = ProductForm()

    return render(request, 'myapp/add_product.html', {'form': form})


# myapp/views.py
from django.shortcuts import render, get_object_or_404, redirect
from .forms import ProductForm
from .models import Product

def edit_product(request, pk):
    product = get_object_or_404(Product, pk=pk)

    if request.method == 'POST':
        form = ProductForm(request.POST, instance=product)
        if form.is_valid():
            form.save()
            return redirect('home')  # Redirect to the product list view
    else:
        form = ProductForm(instance=product)

    return render(request, 'myapp/edit_product.html', {'form': form, 'product': product})


from django.core.paginator import Paginator, EmptyPage, PageNotAnInteger
from django.shortcuts import render
from .models import Product

def product_list(request):
    # Get all products from the database
    all_products = Product.objects.all()

    # Set the number of products to display per page
    products_per_page = 10
    paginator = Paginator(all_products, products_per_page)

    # Get the current page number from the request's GET parameters
    page = request.GET.get('page')

    try:
        # Get the products for the requested page
        products = paginator.page(page)
    except PageNotAnInteger:
        # If the page parameter is not an integer, set it to the first page
        products = paginator.page(1)
    except EmptyPage:
        # If the page is out of range (e.g., 9999), deliver the last page
        products = paginator.page(paginator.num_pages)

    # Pass the paginated products to the template
    return render(request, 'myapp/category_product_list.html', {'products': products})


from .models import Customer
from .forms import CustomerForm  # Create a form for adding/editing customers

def add_customer(request):
    if request.method == 'POST':
        form = CustomerForm(request.POST)
        if form.is_valid():
            form.save()
            return redirect('customer-list')

    else:
        form = CustomerForm()

    return render(request, 'myapp/add_customer.html', {'form': form})


def edit_customer(request, customer_id):
    customer = Customer.objects.get(id=customer_id)

    if request.method == 'POST':
        form = CustomerForm(request.POST, instance=customer)
        if form.is_valid():
            form.save()
            return redirect('customer-list')  # Redirect to the customer list page after editing
    else:
        form = CustomerForm(instance=customer)

    return render(request, 'myapp/edit_customer.html', {'form': form})


from django.shortcuts import get_object_or_404, redirect, render
from .models import Customer

def delete_customer(request, pk):
    customer = get_object_or_404(Customer, pk=pk)

    if request.method == 'POST':
        # Handle the deletion logic
        customer.delete()
        return redirect('customer-list')

    return render(request, 'myapp/delete_customer.html', {'customer': customer})


from django.core.paginator import Paginator, PageNotAnInteger, EmptyPage
from django.shortcuts import render
from .models import Customer

def customer_list(request):
    customers = Customer.objects.all()
    paginator = Paginator(customers, 10)  # Show 10 customers per page
    page = request.GET.get('page')

    try:
        customers = paginator.page(page)
    except PageNotAnInteger:
        customers = paginator.page(1)
    except EmptyPage:
        customers = paginator.page(paginator.num_pages)

    return render(request, 'myapp/customer_list.html', {'customers': customers})



from django.shortcuts import render, redirect
from .models import Order
from .forms import OrderForm

def add_order(request):
    if request.method == 'POST':
        form = OrderForm(request.POST)
        if form.is_valid():
            form.save()
            return redirect('order-list')

    else:
        form = OrderForm()

    return render(request, 'myapp/add_order.html', {'form': form})


from django.shortcuts import render, get_object_or_404, redirect
from .models import Order
from .forms import OrderForm

def edit_order(request, pk):
    order = get_object_or_404(Order, pk=pk)

    if request.method == 'POST':
        form = OrderForm(request.POST, instance=order)
        if form.is_valid():
            form.save()
            return redirect('order-list')

    else:
        form = OrderForm(instance=order)

    return render(request, 'myapp/edit_order.html', {'form': form, 'order': order})


from django.shortcuts import get_object_or_404, redirect
from .models import Order

def delete_order(request, pk):
    order = get_object_or_404(Order, pk=pk)
    order.delete()
    return redirect('order-list')



from django.views.generic import CreateView, UpdateView, DeleteView
from django.urls import reverse_lazy
from .models import Review


class ReviewCreateView(CreateView):
    model = Review
    template_name = 'myapp/review_form.html'
    fields = ['content', 'product']
    success_url = reverse_lazy('review-list')

class ReviewUpdateView(UpdateView):
    model = Review
    template_name = 'myapp/review_form.html'
    fields = ['content', 'product']
    success_url = reverse_lazy('review-list')

class ReviewDeleteView(DeleteView):
    model = Review
    template_name = 'myapp/review_confirm_delete.html'
    success_url = reverse_lazy('review-list')







