# myapp/management/commands/populate_data.py
from django.core.management.base import BaseCommand
from myapp.models import Category, Customer, Product, Tag, Review, Order
from django.utils.crypto import get_random_string

class Command(BaseCommand):
    help = 'Populate data for myapp'

    def handle(self, *args, **options):
        # Your data population logic goes here

        # Example: Create a sample category
        category = Category.objects.create(name='Sample Category')

        # Create a sample customer
        customer = Customer.objects.create(
            first_name='John',
            last_name='Doe',
            email='john.doe@example.com',
            address='123 Main St',
            phone_number='555-1234'
        )

        # Create a sample product
        product = Product.objects.create(
            name='Sample Product',
            description='Lorem ipsum',
            price=19.99,
            #image='sample.jpg',
            category=category
        )

        # Create a sample tag
        tag = Tag.objects.create(name='Sample Tag')

        # Create a sample review
        review = Review.objects.create(
            text='Great product!',
            rating=5,
            product=product,
            customer=customer
        )

        # Create a sample order
        order = Order.objects.create(
            order_date='2023-12-27',
            total_amount=99.99,
            customer=customer
        )

        # You can create more objects for other models similarly

        self.stdout.write(self.style.SUCCESS('Data populated successfully'))
