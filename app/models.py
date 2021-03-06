from app import db, admin

from sqlalchemy import Column, Integer, String, Float, ForeignKey, Boolean, Date, Text, DateTime
from sqlalchemy.orm import relationship

from flask_admin.contrib.sqla import ModelView
from flask_admin import BaseView, expose

from flask_login import UserMixin, current_user, logout_user
from flask import redirect, request


class Admin(db.Model, UserMixin):
    id = Column(Integer, primary_key=True, autoincrement=True)
    name = Column(String(50), nullable=False)
    active = Column(Boolean, default=True)
    username = Column(String(50), nullable=False)
    password = Column(String(50), nullable=False)

    def __str__(self):
        return self.id


class Category(db.Model):
    id = Column(Integer, primary_key=True, autoincrement=True)
    name = Column(String(255), nullable=True)
    products = relationship('Product', backref='category', lazy=True)
    admin_id = Column(Integer, ForeignKey(Admin.id), nullable=True)

    def __str__(self):
        return self.name


class Product(db.Model):
    id = Column(Integer, primary_key=True, autoincrement=True)
    name = Column(String(255), nullable=False)
    price = Column(Float, default=0, nullable=False)
    image1 = Column(String(255), nullable=True)
    cpu = Column(String(255), nullable=True)
    ram = Column(String(255), nullable=True)
    hard_drive = Column(String(255), nullable=True)
    card_graphic = Column(String(255), nullable=True)
    display = Column(String(255), nullable=True)
    os = Column(String(255), nullable=True)
    weight = Column(String(255), nullable=True)
    pin = Column(String(255), nullable=True)
    description = Column(Text, nullable=True)

    category_id = Column(Integer, ForeignKey(Category.id), nullable=False)
    admin_id = Column(Integer, ForeignKey(Admin.id), nullable=True)

    salesbills = relationship('SalesBill', backref='product', lazy=True)
    receipts = relationship('Receipt', backref='product', lazy=True)
    saleinfo = relationship('SaleInfo', backref='product', lazy=True)
    colors = relationship('Color', backref='product', lazy=True)
    images = relationship('Image', backref='product', lazy=True)

    def __str__(self):
        return self.name


class SaleInfo(db.Model):
    id = Column(Integer, primary_key=True, autoincrement=True)
    sale_content = Column(Text, nullable=True)
    product_id = Column(Integer, ForeignKey(Product.id), nullable=True)
    admin_id = Column(Integer, ForeignKey(Admin.id), nullable=True)

    def __str__(self):
        return self.sale_content


class Color(db.Model):
    id = Column(Integer, primary_key=True, autoincrement=True)
    color = Column(String(100), nullable=True)
    product_id = Column(Integer, ForeignKey(Product.id), nullable=True)
    admin_id = Column(Integer, ForeignKey(Admin.id), nullable=True)

    def __str__(self):
        return self.color


class Image(db.Model):
    id = Column(Integer, primary_key=True, autoincrement=True)
    image = Column(String(255), nullable=True)
    product_id = Column(Integer, ForeignKey(Product.id), nullable=True)
    admin_id = Column(Integer, ForeignKey(Admin.id), nullable=True)

    def __str__(self):
        return self.color


class Supplier(db.Model):
    id = Column(Integer, primary_key=True, autoincrement=True)
    name = Column(String(255), nullable=False)
    phone = Column(String(20), nullable=False)
    address = Column(String(255), nullable=False)
    email = Column(String(150), nullable=True)
    receipts = relationship('Receipt', backref='supplier', lazy=True)
    admin_id = Column(Integer, ForeignKey(Admin.id), nullable=True)

    def __str__(self):
        return self.name


class Receipt(db.Model):
    id = Column(Integer, primary_key=True, autoincrement=True)
    product_id = Column(Integer, ForeignKey(Product.id), nullable=False)
    supplier_id = Column(Integer, ForeignKey(Supplier.id), nullable=False)
    date = Column(DateTime, nullable=True)
    quantity = Column(Integer, default=0)
    sum = Column(Float, default=0)
    admin_id = Column(Integer, ForeignKey(Admin.id), nullable=True)


class Customer(db.Model):
    id = Column(Integer, primary_key=True, autoincrement=True)
    name = Column(String(255), nullable=False)
    phone = Column(String(20), nullable=False)
    address = Column(String(255), nullable=True)
    email = Column(String(150), nullable=True)
    admin_id = Column(Integer, ForeignKey(Admin.id), nullable=True)

    salesBills = relationship('SalesBill', backref='customer', lazy=True)

    def __str__(self):
        return self.name


class SalesBill(db.Model):
    id = Column(Integer, primary_key=True, autoincrement=True)
    product_id = Column(Integer, ForeignKey(Product.id), nullable=False)
    customer_id = Column(Integer, ForeignKey(Customer.id), nullable=True)
    date = Column(DateTime, nullable=True)
    quantity = Column(Integer, default=0)
    sum = Column(Float, default=0)
    color = Column(String(255), nullable=False)
    admin_id = Column(Integer, ForeignKey(Admin.id), nullable=True)


# custom admin
class CategoryModelView(ModelView):
    can_export = True
    form_columns = ('name',)

    def is_accessible(self):
        return current_user.is_authenticated


class ProductModelView(ModelView):
    can_export = True
    form_columns = (
        'name', 'price', 'image1', 'ram', 'hard_drive', 'display', 'cpu', 'card_graphic', 'os', 'weight', 'pin',
        'description', 'category_id',)
    column_searchable_list = ('name', 'ram', 'hard_drive', 'card_graphic', 'display', 'os', 'cpu',)

    def is_accessible(self):
        return current_user.is_authenticated


class CustomerModelView(ModelView):
    form_columns = ('name', 'phone', 'address', 'email',)
    column_searchable_list = ('name', 'phone', 'email',)

    def is_accessible(self):
        return current_user.is_authenticated


class SupplierModelView(ModelView):
    form_columns = ('name', 'phone', 'address', 'email',)
    column_searchable_list = ('name', 'phone', 'email',)

    def is_accessible(self):
        return current_user.is_authenticated


class ReceiptModelView(ModelView):
    can_export = True
    column_searchable_list = ('date',)

    def is_accessible(self):
        return current_user.is_authenticated


class SalesBillModelView(ModelView):
    can_export = True
    column_searchable_list = ('date', 'color',)

    def is_accessible(self):
        return current_user.is_authenticated


class SaleInfoModelView(ModelView):
    column_searchable_list = ('sale_content',)

    def is_accessible(self):
        return current_user.is_authenticated


class ColorModelView(ModelView):
    column_searchable_list = ('color',)

    def is_accessible(self):
        return current_user.is_authenticated


class Search(BaseView):
    @expose("/", methods=['get', 'post'])
    def index(self):

        def read_products(key=None):
            products = Product.query.all()
            if key:
                products = [p for p in products if p.name.lower().find(key.lower()) >= 0]
                print(products)
                return products
            return products

        if request.method == 'POST':
            key = request.form.get("key")
            print(key)
            if key:
                products = read_products(key)
                if products == []:
                    err = "Sản phẩm bạn tìm không có trong hệ thống!"
                    # return self.render("admin/about_us.html", products=read_products(), msg=msg)
                    return self.render("admin/about_us.html", products=read_products(), err=err)
                else:
                    msg = "Kết quả tìm kiếm " + key
                    return self.render("admin/about_us.html", products=products, msg=msg)
        return self.render("admin/about_us.html", products=read_products())

    def is_accessible(self):
        return current_user.is_authenticated


class LogoutView(BaseView):
    @expose("/")
    def __index__(self):
        logout_user()
        return redirect("/")

    def is_accessible(self):
        return current_user.is_authenticated


# #admin view
admin.add_view(CategoryModelView(Category, db.session, name="Loại sản phẩm"))
admin.add_view(ProductModelView(Product, db.session, name="Sản phẩm"))
admin.add_view(CustomerModelView(Customer, db.session, name="Khách hàng"))
admin.add_view(SupplierModelView(Supplier, db.session, name="Nhà cung cấp"))
admin.add_view(ReceiptModelView(Receipt, db.session, name="Hóa đơn nhập"))
admin.add_view(SalesBillModelView(SalesBill, db.session, name="Hóa đơn bán"))
admin.add_view(ColorModelView(Color, db.session, name="Màu sắc"))
admin.add_view(SaleInfoModelView(SaleInfo, db.session, name="Khuyến mãi"))
# admin.add_view(Search(name="Tìm kiếm"))
admin.add_view(LogoutView(name="Đăng xuất"))

if __name__ == '__main__':
    db.create_all()
