# The Data Fans Challenge #1
This is a challenge proposed by the Discord channel DATA FANS https://discord.gg/9N4KZD6a :space_invader:

# Benvindo-case :nerd_face:
An e-commerce company called Benvindo, located in Brazil has shared their data with you. General Management is interested in learning more about your business operations. They want to know more about your products and your customers so they can make decisions about your product lines. :brain:

:thinking: They are not sure which products are the most valuable to their customers and it seems to them that they can optimize their inventories by better selecting their offer to the public.

## :technologist: QUESTIONS :woman_technologist:
### :desktop_computer: Section A
1) What are the product categories that have the most sales?
2) Which categories have the highest shipping costs?
3) Which of these categories, taking only the shipping cost, has the highest profit margin?
4) We believe that the products with the best reviews are the ones with the most sales. It really is that?
5) What is the type of payment preferred by customers? And does it coincide with the type of payment with the highest flow of money?

### :desktop_computer: Section B
Carry out an analysis of this data to find any insight that seems relevant to the company. Explain the process you carried out, if you developed any cleaning and preparation process for your data, the conclusions you reached, and the limitations or improvements that the analysis has.

Explore the information provided to you to arrive at your results. Graph or present in tables the information that seems most relevant to you. Present recommendations based on your discoveries.

### :spiral_notepad: Files shared by the company:
  - olist_order_items_dataset.csv
  - olist_order_payments_dataset.csv
  - olist_order_reviews_dataset.csv
  - olist_orders_dataset.csv
  - olist_products_dataset.csv
  - product_category_name_translation.csv

# Proposed Solution
## Creation of the database
The first step to solve the case was to understand the data and create the respective database using PostgreSQL to read and store the different .csv files [creation database](/readcsvs.sql) and his respective entity-relationship diagram.

<img src="https://github.com/DavidAndres6870/Benvindo-case/assets/65053551/b2783443-a872-4bea-86d4-3734e2b88d62" alt="Image Description" width="75%">

## Queries used
In the file  [queries.sql](/queries.sql) were created the respective queries to answer the different questions proposed.

## Python Notebook
In the Python notebook [challenge1.ipynb](/challenge1.ipynb) the queries were used to create different data frames and then create different graphs to present the results in a visual format. 

1) What are the product categories that have the most sales?

<img src="https://github.com/DavidAndres6870/Benvindo-case/assets/65053551/83dc0086-532f-4c96-9b1a-8cb17342d214" alt="Image Description" width="50%">

2) Which categories have the highest shipping costs?

<img src="https://github.com/DavidAndres6870/Benvindo-case/assets/65053551/496fb486-6abe-42ef-8bcf-93affa67ffd6" alt="Image Description" width="50%">

3) Which of these categories, taking only the shipping cost, has the highest profit margin?

<img src="https://github.com/DavidAndres6870/Benvindo-case/assets/65053551/cdabbf39-a8b6-43d4-a984-2373a7058081" alt="Image Description" width="50%"> 

4) We believe that the products with the best reviews are the ones with the most sales. It really is that?

<img src="https://github.com/DavidAndres6870/Benvindo-case/assets/65053551/d92bacd4-cc7f-4d20-8475-eaf0fec18172" alt="Image Description" width="50%"> 

5) What is the type of payment preferred by customers? And does it coincide with the type of payment with the highest flow of money?

<img src="https://github.com/DavidAndres6870/Benvindo-case/assets/65053551/bb682df2-4eb8-407c-8477-c93e7ff03902" alt="Image Description" width="50%"> 

<img src="https://github.com/DavidAndres6870/Benvindo-case/assets/65053551/1e0e5ef2-b68f-4551-89e3-7a97bd1bb57b" alt="Image Description" width="50%">

6) How are the sales in the time for the products wich have the higgest sales? 

Top five products

<img src="https://github.com/DavidAndres6870/Benvindo-case/assets/65053551/f45da3a6-b84e-4e60-97e6-c0be830d0853" alt="Image Description" width="50%">

Bed bath table

<img src="https://github.com/DavidAndres6870/Benvindo-case/assets/65053551/acc2a89f-27ac-42e3-8def-71159723d14c" alt="Image Description" width="50%">

Health beauty

<img src="https://github.com/DavidAndres6870/Benvindo-case/assets/65053551/8c7a80a7-fa97-455f-b128-7f405af03878" alt="Image Description" width="50%">

Sports leisure

<img src="https://github.com/DavidAndres6870/Benvindo-case/assets/65053551/86edc7dc-3829-43b5-936c-0afaef3dc4b6" alt="Image Description" width="50%">

Furniture decor

<img src="https://github.com/DavidAndres6870/Benvindo-case/assets/65053551/dbd75a39-7ed1-4876-a0f6-006ad67c475d" alt="Image Description" width="50%">

Computers accesories

<img src="https://github.com/DavidAndres6870/Benvindo-case/assets/65053551/fd23c452-dee1-4ca3-ba29-43450c663066" alt="Image Description" width="50%">

7) There are any relationship between the volume of the products, the profits and the freight value

All the categories

<img src="https://github.com/DavidAndres6870/Benvindo-case/assets/65053551/860a5784-9067-4fbc-bb9f-2bafe39291f0" alt="Image Description" width="50%">

Top five categories in sales

<img src="https://github.com/DavidAndres6870/Benvindo-case/assets/65053551/6b10e839-32f6-4640-b5d6-961b51ce09d4" alt="Image Description" width="50%">



