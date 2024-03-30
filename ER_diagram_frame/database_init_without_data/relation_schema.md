
**PK** is in **bold**
*FK* is in *italics*

### t_inventory_reports

t_inventory_reports(**pk_inventory_report_id**,report_type,start_date,end_date,create_time)

PK = pk_inventory_report_id
FK = NULL

Normal Form = 3NF

### t_expense_reports

t_expense_reports(**pk_expense_report_id**,report_type,start_date,end_date,create_time,supply_expense,employee_expense,other_expense,total_expense)

PK = pk_expense_report_id
FK = NULL

Normal Form = 3NF

### t_sales_reports

t_sales_reports(**pk_sales_report_id**,report_type,start_date,end_date,total_sales,total_revenue,create_time)

PK = pk_sales_report_id
FK = NULL

Normal Form = 3NF

---

### t_products

t_products(**pk_product_id**,product_name,category,description)

PK = pk_product_id
FK = NULL

Normal Form = 3NF

### t_product_management_records

t_product_management_records(**pk_management_record_id**,management_date,management_time,*fk_responsible_employee_id*,*fk_product_id*,*fk_variant_id*,warehouse_change_quantity,shelf_change_quantity)

PK = pk_management_record_id
FK_1 = fk_responsible_employee_id
FK_2 = fk_product_id
FK_3 = fk_variant_id

Normal Form = 3NF

### t_product_variants

t_product_variants(**pk_product_id**,**pk_variant_id**,variant_name,variant_unit,variant_unit_price,variant_description,warehouse_quantity,shelf_quantity)

PK_1 = pk_product_id
PK_2 = pk_variant_id
FK = pk_product_id

Normal Form = 3NF

### t_variant_discounts

t_variant_discounts(**pk_variant_discount_id**,*fk_discount_product_id*,*fk_discount_variant_id*,variant_discount_rate,start_date,end_date)

PK = pk_variant_discount_id
FK_1 = fk_discount_product_id
FK_2 = fk_discount_variant_id

Normal Form = 3NF

### t_transaction_details

t_transaction_details(***pk_transaction_id***,**pk_transaction_detail_id**,*fk_product_id*,*fk_variant_id*,purchasing_quantity,discounted_total_price)

PK_1 = pk_transaction_id
PK_2 = pk_transaction_detail_id
FK_1 = pk_transaction_id
FK_2 = fk_product_id
FK_3 = fk_variant_id

Normal Form = 3NF

### t_employees

t_employees(**pk_employee_id**,job_position,salary,phone_number,work_schedules)

PK = pk_employee_id
FK = NULL

Normal Form = 3NF

---

### t_suppliers

t_suppliers(**pk_supplier_id**,company_name,company_address,company_website)

PK = pk_supplier_id
FK = NULL
Normal Form = 3NF

### t_supplier_contacts

t_supplier_contacts(**pk_contact_id**,fk_supplier_id,contact_name,contact_title,phone_number,email)

PK = pk_contact_id
FK = fk_supplier_id

Normal Form = 3NF

### t_supply_records

t_supply_records(**pk_supply_record_id**,*fk_supply_product_id*,*fk_supply_variant_id*,*fk_supplier_id*,supply_date,supply_quantity,total_price,pay_term)

PK = pk_supply_record_id
FK_1 = fk_supply_product_id
FK_2 = fk_supply_variant_id
FK_3 = fk_supplier_id

Normal Form = 3NF

---

### t_customers

t_customers(**pk_customer_id**,customer_name,phone_number,account_balance)

PK = pk_customer_id
FK = NULL

Normal Form = 3NF

### t_transaction_records

t_transaction_records(**pk_transaction_id**,*fk_responsible_employee_id*,*fk_customer_id*,transaction_date,transaction_time,transaction_way,*fk_promotion_id*,initial_amount,discounted_amount)

PK = pk_transaction_id
FK_1 = fk_responsible_employee_id
FK_2 = fk_customer_id
FK_3 = fk_promotion_id

Normal Form = 3NF

### t_reduction_promotions

t_reduction_promotions(**pk_promotion_id**,threshold_amount,discount_amount,start_date,end_date)

PK = pk_promotion_id
FK = NULL

Normal Form = 3NF