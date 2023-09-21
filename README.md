## 1- Dashboard :
</p>
  <p float="left">
  <img src='Dashboard\Screen one.png'/>
  <img src='Dashboard\Screen two.png'/>
  <img src='Dashboard\Screen three.png'/>
  <img src='Dashboard\Screen four.png'/>
</p>
__________________________________________________________________________________________________________________________
## 2- YouTube Demo : [a Link](https://youtu.be/LyJJa4ViABo?si=Q_blaaMpfnPW7G2M)
__________________________________________________________________________________________________________________________

## 2- Data Description :
- `pizza_id` : Unique key identifier that ties the pizza ordered to its details, like size and price
- `order_id` : Unique identifier for each order placed by a table
- `quantity` : Quantity ordered for each pizza of the same type and size
- `order_date` : Date the order was placed (entered into the system prior to cooking & serving)
- `order_time` : Time the order was placed (entered into the system prior to cooking & serving)
- `unit_price` : Price of the pizza in USD
- `total_price` : unit_price * quantity
- `pizza_size` : Size of the pizza (Small, Medium, Large, X Large, or XX Large)
- `pizza_category` : Category of the pizza (Classic, Supreme, Veggie, or Chicken)
- `pizza_ingredients` : ingredients used in the pizza as shown in the menu (they all include Mozzarella Cheese, even if not specified; and they all include Tomato Sauce, unless another sauce is specified)
- `pizza_name` : Name of the pizza as shown in the menu

__________________________________________________________________________________________________________________________

## 3- In Mind Questions :
- ### General Questions related to the existence of :
  - missing values?
  - wrong datatypes for columns?
  - complete duplicates in the data?
  - outliers in numerical columns?
 
- ### Business Questions :
  - What is `Total Revenue`?
  - What is `Average Order Value`?
  - What is `Total Pizzas Sold`?
  - What is `Total Orders`?
  - Which Daily Trend for `Total Orders`?
  - There is Monthly Trend for `Orders`?
  - There is Sales by `Category` more than other `Category`?
  - Which Sales by `Pizza Size`?
  - What is `Total Quantity` by Pizza `Category`?
  - What is` Top 5 Pizzas by Revenue`?
  - What is `Top 5 Pizzas by Quantity`?
  - What is `Hour` has greater total orders?
  - What is name of `pizza` that has lowest `price`?
  - What is name of `pizza` that has higher `price`?
__________________________________________________________________________________________________________________________

## 4- Conclusion :
- `Breakfast Orders`, Limited orders during early hours suggest breakfast is less popular for pizza consumption, with customers favoring alternative morning food choices.
- `Lunch Rush`, The 12 PM - 2 PM timeframe sees the highest customer influx due to lunch breaks, highlighting the shop's convenience for quick meals.
- `Sunday` are the least busy orders.
- `Seasonal Sales`, Spring sales peak, while autumn sees lower numbers, influenced by factors like weather and cultural preferences.
- `Large Size Preference`, Customers opt for large pizzas, often ordering in groups for sharing among family, friends, or colleagues.
__________________________________________________________________________________________________________________________

## 5- Summary :
**In the beginning, I created the database on a SQL server called Pizza Sales, create table named Pizza Sales and add dataset with format CSV to it .**

**Additionally, I created two files :**
  - Pizza Sales.sql, SQL Query  related to questions to Ensure Data Integrity.

  - Cleaning.sql , Sql Query to Cleaning and  Preprocessing such as add new columns and Amendments.

**In the end, i create dynamic dashboard conected directly with SQL server using Direct mode  Power Bi to answer business questions.**
