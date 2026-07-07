# AgroLife 🧼

AgroLife is a full-stack **e-commerce platform** for a natural soap and personal-care brand, built with PHP and MySQL. It provides a customer-facing storefront and a complete admin panel for managing products, categories, orders, and users.

## Features

**Storefront**
- Browse products by category and sub-category (Bath Soap, Baby Bath Soap, Detergent Soap, etc.)
- Product detail pages with images, pricing, and discounts
- Shopping cart and wishlist
- Order placement, order history, and order/shipment tracking
- Customer account management (registration, login, password recovery, billing & shipping addresses)
- Product reviews

**Admin Panel**
- Dashboard overview of sales and orders
- Manage products, categories, and sub-categories (add/edit)
- Manage customer orders — album orders, frame orders, pending & delivered orders
- Manage users and view user activity logs
- Export sales reports (CSV)

## Tech Stack

- **Backend:** PHP
- **Database:** MySQL
- **Frontend:** HTML, CSS, JavaScript, Bootstrap
- **UI Libraries:** Owl Carousel, Lightbox, jQuery RateIt, Bootstrap Select

## Project Structure

```
agrolife/
├── admin/          # Admin panel (dashboard, product/order/category management)
├── assets/         # Storefront styles, scripts, and fonts
├── config/         # Database configuration
├── db/             # SQL schema and seed data (soap.sql)
├── includes/       # Shared PHP partials (header, footer, sidebar, menu)
├── master/         # Additional admin views and shared layout
└── *.php           # Storefront pages (cart, checkout, account, orders, etc.)
```

## Getting Started

### Prerequisites
- PHP 7+ with a local server (e.g. XAMPP/WAMP/MAMP)
- MySQL

### Setup
1. Clone the repository into your PHP server's document root (e.g. `htdocs/`).
   ```bash
   git clone https://github.com/sibiselvakumar/agrolife.git
   ```
2. Create a MySQL database and import the schema:
   ```bash
   mysql -u root -p your_database_name < db/soap.sql
   ```
3. Update the database credentials in `config/db.php`.
4. Start your local server (e.g. Apache via XAMPP) and open:
   ```
   http://localhost/agrolife/
   ```
5. Access the admin panel at `http://localhost/agrolife/admin/`.

## License

This project is available for educational and personal use.
