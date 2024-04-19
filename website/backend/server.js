const express = require('express');
const mysql = require('mysql2');
const bodyParser = require('body-parser');
const cors = require('cors');

const app = express();
app.use(cors());
app.use(bodyParser.json());

const connection = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: 'mysql',
  database: '3170proj',
  multipleStatements: true
});

connection.connect(err => {
    if (err) throw err;
    console.log('Connected to the database successfully!');
});

// 1.1
app.get('/salesman', (req, res) => {
    console.log('Request received for /salary');
    const query = `
        SELECT 
            e.pk_employee_id AS employee_id,
            COUNT(c.pk_customer_id) AS customers_count,
            SUM(td.discounted_total_price) AS total_sales,
            AVG(td.discounted_total_price) AS average_sales_per_customer
        FROM 
            t_employees e
            JOIN t_transaction_records tr ON e.pk_employee_id = tr.fk_responsible_employee_id
            JOIN t_transaction_details td ON tr.pk_transaction_id = td.pk_transaction_id
            JOIN t_customers c ON tr.fk_customer_id = c.pk_customer_id
        GROUP BY 
            e.pk_employee_id;
    `;
    connection.query(query, (err, results) => {
        if (err) {
            return res.status(500).send('Failed to execute query: ' + err.message);
        }
        res.json(results);
    });
// 1.2
    app.get('/warehouseKeeper', (req, res) => {
        const query = `
            SELECT 
                e.pk_employee_id AS employee_id,
                COUNT(*) AS arrangement_count,
                SUM(ABS(pmr.warehouse_change_quantity)) AS total_quantity_change,
                AVG(ABS(pmr.warehouse_change_quantity)) AS average_quantity_change
            FROM 
                t_employees e
                JOIN t_product_management_records pmr ON e.pk_employee_id = pmr.fk_responsible_employee_id
            GROUP BY 
                e.pk_employee_id;
        `;
        connection.query(query, (err, results) => {
            if (err) {
                return res.status(500).send('Failed to execute query: ' + err.message);
            }
            res.json(results);
        });
    });
// 1.3
app.get('/salary', (req, res) => {
    console.log('Request received for /salary');
    const query = `
        SELECT 
            e.job_position AS job_category,
            COUNT(*) AS employee_count,
            AVG(e.salary) AS average_salary,
            MAX(e.salary) AS highest_salary,
            MIN(e.salary) AS lowest_salary
        FROM 
            t_employees e
        GROUP BY 
            e.job_position;
    `;
    connection.query(query, (err, results) => {
        if (err) {
            return res.status(500).send('Failed to execute query: ' + err.message);
        }
        res.json(results);
    });
});

// 1.4
app.post('/dismission', (req, res) => {
    const { employee_id } = req.body;
    const updateQuery = `
        UPDATE t_employees
        SET 
            job_position = 'dismission',
            salary = 0,
            work_schedules = 'No plan'
        WHERE pk_employee_id = ?;
    `;
    connection.query(updateQuery, [employee_id], (err, result) => {
        if (err) {
            return res.status(500).send('Failed to update employee record: ' + err.message);
        }
        if (result.affectedRows === 0) {
            return res.status(404).send({ message: 'No employee found with the given ID' });
        }
        res.send({ message: 'Employee dismission updated successfully' });
    });
});

// 1.5
app.post('/addEmployee', (req, res) => {
    console.log('Request received for /addEmployee');
    const { pk_employee_id, job_position, salary, phone_number, work_schedules } = req.body;

    const query = `
        INSERT INTO t_employees (
            pk_employee_id,
            job_position,
            salary,
            phone_number,
            work_schedules
        )
        VALUES (?, ?, ?, ?, ?);
    `;
  
    connection.query(query, [pk_employee_id, job_position, salary, phone_number, work_schedules], (err, result) => {
      if (err) {
        console.log(err.message);
        return res.status(500).send('Failed to add new employee: ' + err.message);
      }
      res.send({ message: `New employee with ID ${pk_employee_id} added successfully` });
    });
  });

// 1.6
app.get('/personalSalary/:employeeId', (req, res) => {
    console.log('Request received for /personalSalary');
    const employeeId = req.params.employeeId;

    const query = `
        SELECT 
            e.pk_employee_id AS employee_id,
            e.salary,
            e.work_schedules AS work_schedule
        FROM 
            t_employees e
        WHERE
            e.pk_employee_id = ?;
    `;

    connection.query(query, [employeeId], (err, results) => {
        if (err) {
            return res.status(500).send('Failed to retrieve salary information: ' + err.message);
        }
        if (results.length > 0) {
            res.json(results[0]); 
        } else {
            res.status(404).send('Employee not found');
        }
    });
});

// 2.1
app.get('/categorySales', (req, res) => {
    console.log('Request received for /categorySales');
    const query = `
        SELECT 
            p.category,
            SUM(td.purchasing_quantity) AS total_quantity,
            SUM(td.purchasing_quantity * td.discounted_total_price) AS total_sales,
            SUM(td.purchasing_quantity * (td.discounted_total_price - sr.total_price / sr.supply_quantity)) AS total_profit,
            AVG(td.discounted_total_price / td.purchasing_quantity) AS average_selling_price
        FROM 
            t_products p
            JOIN t_product_variants pv ON p.pk_product_id = pv.pk_product_id
            JOIN t_transaction_details td ON pv.pk_product_id = td.fk_product_id AND pv.pk_variant_id = td.fk_variant_id
            JOIN t_supply_records sr ON pv.pk_product_id = sr.fk_supply_product_id AND pv.pk_variant_id = sr.fk_supply_variant_id
        GROUP BY 
            p.category;
    `;
    connection.query(query, (err, results) => {
        if (err) {
            return res.status(500).send('Failed to execute query: ' + err.message);
        }
        res.json(results);
    });
});

// 2.2
app.post('/createCustomer',(req,res) => {
    console.log('Request received for /createCustomer');
    const { pk_customer_id, customer_name, phone_number, account_balance } = req.body;
    const query = `
        INSERT INTO t_customers(
            pk_customer_id,
            customer_name,
            phone_number,
            account_balance
        )
        VALUES(?, ?, ?, ?);
    `;
    connection.query(query, [pk_customer_id, customer_name, phone_number, account_balance], (err, result) => {
        if (err) {
          // 如果出错，发送错误信息
          console.log(err.message);
          return res.status(500).send('Failed to add new customer: ' + err.message);
        }
        // 如果成功，发送成功信息
        res.send({ message: `New customer with ID ${pk_customer_id} added successfully` });
      });
});

// 2.3
app.post('/createPromotion',(req,res) => {
    const { pk_promotion_id, threshold_amount, discount_amount, start_date, end_date } = req.body;
    const query = `
        INSERT INTO t_reduction_promotions(
            pk_promotion_id, 
            threshold_amount, 
            discount_amount, 
            start_date, 
            end_date
        )
        VALUES (?, ?, ?, ?, ?);
    `
    connection.query(query,[pk_promotion_id, threshold_amount, discount_amount, start_date, end_date],(err, result) => {
        if (err) {
            return res.status(500).send('Failed to add new promotion: ' + err.message);
        }
        res.send({ message: `New promotion with ID ${pk_promotion_id} added successfully` });
    });
});

// 2.4
app.post('/addVariantDiscount', (req, res) => {
    const { variant_discount_id, discount_product_id, discount_variant_id, variant_discount_rate, start_date, end_date } = req.body;

    const sqlQuery = `
        INSERT INTO t_variant_discounts(
            pk_variant_discount_id, 
            fk_discount_product_id, 
            fk_discount_variant_id, 
            variant_discount_rate, 
            start_date, 
            end_date
        )
        VALUES (?, ?, ?, ?, ?, ?);
    `;

    // Execute the query
    connection.query(sqlQuery, [variant_discount_id, discount_product_id, discount_variant_id, variant_discount_rate, start_date, end_date], (err, results) => {
        if (err) {
            console.log(err.message);
            return res.status(500).send({ error: 'Failed to add variant discount: ' + err.message });
        }
        res.send({ message: 'Variant discount added successfully' });
    });
});

// 2.5
app.post('/createTransRecord',(req,res) => {
    const { pk_transaction_id, fk_responsible_employee_id, fk_customer_id, transaction_way, fk_promotion_id } = req.body;
    const query = `
        INSERT INTO t_transaction_records(
            pk_transaction_id, 
            fk_responsible_employee_id, 
            fk_customer_id, 
            transaction_date, 
            transaction_time, 
            transaction_way, 
            fk_promotion_id, 
            initial_amount, 
            discounted_amount
        )
        VALUES
        (
            ?, ?, ?,
            DATE(NOW()),
            TIME(NOW()),
            ?, ?, 0, 0
        );
    `;
    connection.query(query,[pk_transaction_id, fk_responsible_employee_id, fk_customer_id, transaction_way, fk_promotion_id],(err, result) => {
        if (err) {
            return res.status(500).send('Failed to add new Transaction Record: ' + err.message);
        }
        res.send({ message: `New Transaction Record with ID ${pk_transaction_id} added successfully` });
    });
});

// 2.6
app.post('/addTransDetails', (req, res) => {
    const { pk_transaction_id, pk_transaction_detail_id, fk_product_id, fk_variant_id, purchasing_quantity } = req.body;
    
    
    connection.beginTransaction(err => {
        if (err) {
            return res.status(500).send('Transaction failed to start: ' + err.message);
        }

        connection.query(`
            SELECT start_date, end_date, variant_discount_rate, shelf_quantity, variant_unit_price
            FROM t_variant_discounts
            JOIN t_product_variants ON (t_variant_discounts.fk_discount_product_id = t_product_variants.pk_product_id AND t_variant_discounts.fk_discount_variant_id = t_product_variants.pk_variant_id)
            WHERE fk_discount_product_id = ? AND fk_discount_variant_id = ?;`,
            [fk_product_id, fk_variant_id],
            (err, results) => 
            {
                if (err || results === 0) 
                {
                    connection.rollback
                    (() => 
                        {
                            return res.status(500).send('Error fetching discounts or products: ' + (err ? err.message : 'No data found.'));
                        }
                    );
                }

                const { start_date, end_date, variant_discount_rate, shelf_quantity, variant_unit_price } = results[0];
                const current_date = new Date();

                if (shelf_quantity < purchasing_quantity)
                {
                    connection.rollback
                    (
                        () => 
                        {
                            return res.status(400).send('Insufficient stock.');
                        }
                    )
                }
                else
                {
                    const isDiscountPeriod = current_date >= start_date && current_date <= end_date;
                    const discounted_total_price = purchasing_quantity * variant_unit_price * (isDiscountPeriod ? (1 - variant_discount_rate) : 1);

                    connection.query
                    (`
                        INSERT INTO t_transaction_details
                        (
                            pk_transaction_id, 
                            pk_transaction_detail_id, 
                            fk_product_id, 
                            fk_variant_id, 
                            purchasing_quantity, 
                            discounted_total_price
                        )
                        VALUES (?,?,?,?,?,?);
                        UPDATE t_product_variants 
                        SET shelf_quantity = shelf_quantity - ? 
                        WHERE pk_product_id = ? AND pk_variant_id = ?;
                    `,
                    [
                        pk_transaction_id, pk_transaction_detail_id, 
                        fk_product_id, fk_variant_id, purchasing_quantity, 
                        discounted_total_price,
                        purchasing_quantity, fk_product_id, fk_variant_id
                    ],
                    (err, results) =>
                    {
                        if (err) 
                        {
                            connection.rollback
                            (() => 
                            {
                                return res.status(500).send('Failed to insert transaction details: ' + err.message);
                            });
                        } 
                        else 
                        {
                            connection.commit
                            (err => 
                            {
                                if (err) 
                                {
                                    connection.rollback
                                    (() => 
                                    {
                                        return res.status(500).send('Transaction commit failed: ' + err.message);
                                    });
                                }
                                res.send({ message: 'Transaction details added successfully' });
                            });
                        }
                    }
                    )
                }
            });
    });
});


// 2.7
app.patch('/updateTransRecords', (req, res) => {
    const { pk_transaction_id, fk_promotion_id } = req.body;

    connection.beginTransaction(err => {
        if (err) {
            return res.status(500).send('Transaction failed to start: ' + err.message);
        }

        // 查询总金额
        connection.query(`
            SELECT SUM(discounted_total_price) AS total_price
            FROM t_transaction_details
            WHERE pk_transaction_id = ?`,
            [pk_transaction_id],
            (err, results) => {
                if (err) {
                    connection.rollback(() => {
                        return res.status(500).send('Error fetching transaction details: ' + err.message);
                    });
                }

                let sum_price = results[0].total_price;

                // 查询优惠信息
                connection.query(`
                    SELECT start_date, end_date, threshold_amount, discount_amount
                    FROM t_reduction_promotions
                    WHERE pk_promotion_id = ?`,
                    [fk_promotion_id],
                    (err, promoResults) => {
                        if (err) {
                            connection.rollback(() => {
                                return res.status(500).send('Error fetching promotion details: ' + err.message);
                            });
                        }

                        if (promoResults.length === 0) {
                            console.log(fk_promotion_id)
                            connection.rollback(() => {
                                return res.status(500).send('Promotion not found.');
                            });
                        }

                        const { start_date, end_date, threshold_amount, discount_amount } = promoResults[0];
                        const currentDate = new Date();
                        let discounted_amount = sum_price;

                        // 检查优惠是否适用
                        if (currentDate >= start_date && currentDate <= end_date && sum_price >= threshold_amount) {
                            discounted_amount = sum_price - discount_amount;
                        }

                        // 更新事务记录
                        connection.query(`
                            UPDATE t_transaction_records
                            SET initial_amount = ?, discounted_amount = ?
                            WHERE pk_transaction_id = ?`,
                            [sum_price, discounted_amount, pk_transaction_id],
                            (err, updateResults) => {
                                if (err) {
                                    connection.rollback(() => {
                                        return res.status(500).send('Failed to update transaction records: ' + err.message);
                                    });
                                }
                                connection.commit(err => {
                                    if (err) {
                                        connection.rollback(() => {
                                            return res.status(500).send('Transaction commit failed: ' + err.message);
                                        });
                                    }
                                    res.send({ message: 'Transaction records finalized successfully' });
                                });
                            }
                        );
                    }
                );
            }
        );
    });
});

// 3.1
app.get('/productSupply', (req, res) => {
    const sql = `
        SELECT 
            p.pk_product_id AS product_id,
            p.product_name,
            s.pk_supplier_id AS supplier_id,
            sr.supply_quantity,
            sr.total_price,
            sr.total_price / sr.supply_quantity AS unit_price
        FROM 
            t_products p
            JOIN t_supply_records sr ON p.pk_product_id = sr.fk_supply_product_id
            JOIN t_suppliers s ON sr.fk_supplier_id = s.pk_supplier_id
        WHERE
            p.pk_product_id IN (
                SELECT fk_supply_product_id
                FROM t_supply_records
                GROUP BY fk_supply_product_id
                HAVING COUNT(DISTINCT fk_supplier_id) >= 2
            )
        ORDER BY 
            p.pk_product_id, 
            s.pk_supplier_id;
    `;

    connection.query(sql, (err, results) => {
        if (err) {
            return res.status(500).send({ error: 'Failed to fetch products: ' + err.message });
        }
        res.send(results);
    });
});

// 3.2
app.get('/supplier', (req, res) => {
    const sqlQuery = `
        SELECT 
            s.pk_supplier_id AS supplier_id,
            s.company_name,
            COUNT(DISTINCT sr.fk_supply_variant_id) AS variant_count,
            SUM(sr.supply_quantity) AS total_supply_quantity,
            AVG(sr.supply_quantity) AS avg_supply_quantity,
            AVG(sr.total_price / sr.supply_quantity) AS avg_unit_price
        FROM 
            t_suppliers s
            JOIN t_supply_records sr ON s.pk_supplier_id = sr.fk_supplier_id
        GROUP BY 
            s.pk_supplier_id, 
            s.company_name;
    `;

    connection.query(sqlQuery, (err, results) => {
        if (err) {
            return res.status(500).send({ error: 'Failed to fetch supplier statistics: ' + err.message });
        }
        res.send(results);
    });
});

// 3.3
app.get('/warehouse', (req, res) => {
    const sqlQuery = `
        SELECT 
            p.pk_product_id AS product_id,
            AVG(pv.warehouse_quantity) OVER (PARTITION BY p.category) AS avg_warehouse_quantity,
            pv.warehouse_quantity AS current_warehouse_quantity,
            CASE 
                WHEN pv.warehouse_quantity < AVG(pv.warehouse_quantity) OVER (PARTITION BY p.category) THEN 'Yes'
                ELSE 'No'
            END AS need_to_update,
            s.pk_supplier_id AS supplier_id,
            s.company_name,
            sc.phone_number AS supplier_phone_number
        FROM 
            t_products p
            JOIN t_product_variants pv ON p.pk_product_id = pv.pk_product_id
            JOIN t_supply_records sr ON pv.pk_variant_id = sr.fk_supply_variant_id
            JOIN t_suppliers s ON sr.fk_supplier_id = s.pk_supplier_id
            JOIN t_supplier_contacts sc ON s.pk_supplier_id = sc.fk_supplier_id
        ORDER BY 
            CASE 
                WHEN pv.warehouse_quantity < AVG(pv.warehouse_quantity) OVER (PARTITION BY p.category) THEN 0
                ELSE 1
            END,
            p.pk_product_id;
    `;

    connection.query(sqlQuery, (err, results) => {
        if (err) {
            return res.status(500).send({ error: 'Failed to fetch product warehouse statistics: ' + err.message });
        }
        res.send(results);
    });
});

// 3.4
app.post('/updateWarehouse', (req, res) => {
    const {
        product_id,
        variant_id,
        quantity,
        supplier_id,
        purchase_price,
        supply_record_id,
        supply_date,
        pay_term
    } = req.body;

    connection.beginTransaction(err => {
        if (err) {
            return res.status(500).send('Transaction failed to start: ' + err.message);
        }

        connection.query(`
            UPDATE t_product_variants 
            SET warehouse_quantity = warehouse_quantity + ?
            WHERE pk_product_id = ? AND pk_variant_id = ?`,
            [quantity, product_id, variant_id],
            (err, result) => {
                if (err) {
                    console.log(err.message);
                    connection.rollback(() => {
                        return res.status(500).send('Failed to update warehouse quantity: ' + err.message);
                    });
                }

                connection.query(`
                    INSERT INTO t_supply_records (pk_supply_record_id, fk_supply_product_id, fk_supply_variant_id, fk_supplier_id, supply_date, supply_quantity, total_price, pay_term)
                    VALUES (?, ?, ?, ?, ?, ?, ?, ?)`,
                    [supply_record_id, product_id, variant_id, supplier_id, supply_date, quantity, quantity * purchase_price, pay_term],
                    (err, result) => {
                        if (err) {
                            console.log(err.message);
                            connection.rollback(() => {
                                return res.status(500).send('Failed to insert supply record: ' + err.message);
                            });
                        }
                        connection.commit(err => {
                            if (err) {
                                console.log(err.message);
                                connection.rollback(() => {
                                    return res.status(500).send('Failed to insert supply record: ' + err.message);
                                });
                            }
                            res.send({ message: 'Supply updated successfully' });
                        });
                    }
                );
            }
        );
    });
});

// 3.5
app.post('/createSupplier', (req, res) => {
    const { supplier_id, company_name, company_address, company_website } = req.body;

    const sqlQuery = `
        INSERT INTO t_suppliers (pk_supplier_id, company_name, company_address, company_website)
        VALUES (?, ?, ?, ?);
    `;

    connection.query(sqlQuery, [supplier_id, company_name, company_address, company_website], (err, results) => {
        if (err) {
            return res.status(500).send({ error: 'Failed to create supplier: ' + err.message });
        }
        res.send({ message: 'Supplier created successfully', supplierId: supplier_id });
    });
});

// 3.6
app.post('/addSupplierContacts', (req, res) => {
    const { contact_id, supplier_id, contact_name, contact_title, phone_number, email } = req.body;

    const sqlQuery = `
        INSERT INTO t_supplier_contacts (pk_contact_id, fk_supplier_id, contact_name, contact_title, phone_number, email)
        VALUES (?, ?, ?, ?, ?, ?);
    `;

    connection.query(sqlQuery, [contact_id, supplier_id, contact_name, contact_title, phone_number, email], (err, results) => {
        if (err) {
            return res.status(500).send({ error: 'Failed to add supplier contact: ' + err.message });
        }
        res.send({ message: 'Supplier contact added successfully', contactId: contact_id });
    });
});
// 4.1
app.get('/allProductInfo', (req, res) => {
    const sqlQuery = `
        SELECT
            p.product_name AS product_name,
            p.category AS category,
            pv.pk_variant_id AS variant_id,
            pv.variant_unit AS variant_unit,
            pv.variant_unit_price AS unit_price
        FROM
            t_products p
        JOIN
            t_product_variants pv ON p.pk_product_id = pv.pk_product_id;
    `;

    connection.query(sqlQuery, (err, results) => {
        if (err) {
            return res.status(500).send({ error: 'Failed to fetch product information: ' + err.message });
        }
        res.send(results);
    });
});

// 4.2
app.get('/checkReplenishment', (req, res) => {
    const sqlQuery = `
        SELECT
            p.product_name,
            mag_product.pk_variant_id,
            p.category,
            mag_product.shelf_quantity AS shelf_quantity,
            AVG(mag_product.shelf_quantity) OVER (PARTITION BY p.category) AS avg_shelf_quantity,
            mag_product.warehouse_quantity AS warehouse_quantity,
            CASE 
                WHEN mag_product.shelf_quantity < AVG(mag_product.shelf_quantity) OVER (PARTITION BY p.category) THEN 'yes'
                ELSE 'no'
            END AS whether_to_update_shelf_quantity
        FROM
            t_products p
        JOIN
            (SELECT pk_product_id, pk_variant_id, shelf_quantity, warehouse_quantity FROM t_product_variants) mag_product ON p.pk_product_id = mag_product.pk_product_id
        ORDER BY
            CASE WHEN whether_to_update_shelf_quantity = 'yes' THEN 0 ELSE 1 END,
            p.category,
            p.product_name;
    `;

    connection.query(sqlQuery, (err, results) => {
        if (err) {
            console.error('Failed to fetch product inventory details: ' + err.message);
            return res.status(500).send({ error: 'Database query failed' });
        }
        res.send(results);
    });
});

// 4.3
app.post('/createProduct', (req, res) => {
    const { product_id, product_name, category, description } = req.body;

    const sqlQuery = `
        INSERT INTO t_products (pk_product_id, product_name, category, description)
        VALUES (?, ?, ?, ?);
    `;

    connection.query(sqlQuery, [product_id, product_name, category, description], (err, results) => {
        if (err) {
            return res.status(500).send({ error: 'Failed to create product: ' + err.message });
        }
        res.send({ message: 'Product created successfully', productId: product_id });
    });
});

// 4.4
app.post('/createVariant', (req, res) => {
    const { product_id, variant_id, variant_name, variant_unit, variant_unit_price, variant_description } = req.body;

    const sqlQuery = `
        INSERT INTO t_product_variants (pk_product_id, pk_variant_id, variant_name, variant_unit, variant_unit_price, variant_description, warehouse_quantity, shelf_quantity)
        VALUES (?, ?, ?, ?, ?, ?, 0, 0);
    `;                                  
    connection.query(sqlQuery, [product_id, variant_id, variant_name, variant_unit, variant_unit_price, variant_description ], (err, results) => {
        if (err) {
            console.log(err.message);
            return res.status(500).send({ error: 'Failed to create product variant: ' + err.message });
        }
        res.send({ message: 'Product variant created successfully', variantId: variant_id });
    });
});
// 4.5
app.post('/updateShelf', (req, res) => {
    const { pk_management_record_id, responsible_employee_id, product_id, variant_id, warehouse_change_quantity, shelf_change_quantity } = req.body;

    // 开始事务
    connection.beginTransaction(err => {
        if (err) {
            console.log(err.message);
            return res.status(500).send('Transaction failed to start: ' + err.message);
        }

        // 插入产品管理记录
        const insertRecordSql = `
            INSERT INTO t_product_management_records
            (pk_management_record_id, management_date, management_time, fk_responsible_employee_id, fk_product_id, fk_variant_id, warehouse_change_quantity, shelf_change_quantity)
            VALUES
            (?, CURDATE(), CURTIME(), ?, ?, ?, ?, ?);
        `;   
        connection.query(insertRecordSql, [pk_management_record_id, responsible_employee_id, product_id, variant_id, warehouse_change_quantity, shelf_change_quantity], (err, results) => {
            if (err) {
                console.log(err.message);
                connection.rollback(() => {
                    return res.status(500).send('Failed to insert product management record: ' + err.message);
                });
            }

            // 更新仓库库存数量
            const updateWarehouseSql = `
                UPDATE t_product_variants
                SET warehouse_quantity = warehouse_quantity + ?
                WHERE pk_product_id = ? AND pk_variant_id = ?;
            `;
            connection.query(updateWarehouseSql, [warehouse_change_quantity, product_id, variant_id], (err, results) => {
                if (err) {
                    console.log(err.message);
                    connection.rollback(() => {
                        return res.status(500).send('Failed to update warehouse quantity: ' + err.message);
                    });
                }

                // 更新货架库存数量
                const updateShelfSql = `
                    UPDATE t_product_variants
                    SET shelf_quantity = shelf_quantity + ?
                    WHERE pk_product_id = ? AND pk_variant_id = ?;
                `;
                connection.query(updateShelfSql, [shelf_change_quantity, product_id, variant_id], (err, results) => {
                    if (err) {
                        console.log(err.message);
                        connection.rollback(() => {
                            return res.status(500).send('Failed to update shelf quantity: ' + err.message);
                        });
                    }

                    // 如果一切顺利，则提交事务
                    connection.commit(err => {
                        if (err) {
                            console.log(err.message);
                            connection.rollback(() => {
                                return res.status(500).send('Transaction commit failed: ' + err.message);
                            });
                        }
                        res.send({ message: 'Shelf and warehouse quantities updated successfully' });
                    });
                });
            });
        });
    });
});

// 4.6
app.post('/rmProduct', (req, res) => {
    const { product_id } = req.body;

    connection.beginTransaction(err => {
        if (err) {
            return res.status(500).send('Transaction failed to start: ' + err.message);
        }

        connection.query(`
            UPDATE t_products
            SET description = 'sold out'
            WHERE pk_product_id = ?;
        `, [product_id], (err, result) => {
            if (err) {
                connection.rollback(() => {
                    return res.status(500).send('Failed to update product description: ' + err.message);
                });
            }

            connection.query(`
                UPDATE t_product_variants
                SET warehouse_quantity = 0,
                    shelf_quantity = 0,
                    variant_description = "soldout"
                WHERE pk_product_id = ?;
            `, [product_id], (err, result) => {
                if (err) {
                    connection.rollback(() => {
                        return res.status(500).send('Failed to update product variants quantities: ' + err.message);
                    });
                }

                connection.commit(err => {
                    if (err) {
                        connection.rollback(() => {
                            return res.status(500).send('Transaction commit failed: ' + err.message);
                        });
                    }
                    res.send({ message: 'Product marked as sold out and quantities set to zero successfully' });
                });
            });
        });
    });
});

// 4.7
app.post('/rmVariant', (req, res) => {
    const { product_id, variant_id } = req.body;

    // Begin a transaction
    connection.beginTransaction(err => {
        if (err) {
            return res.status(500).send('Transaction failed to start: ' + err.message);
        }

        const updateQuery = `
            UPDATE t_product_variants
            SET warehouse_quantity = 0,
                shelf_quantity = 0,
                variant_description = 'soldout'
            WHERE pk_product_id = ? AND pk_variant_id = ?;
        `;

        connection.query(updateQuery, [product_id, variant_id], (err, result) => {
            if (err) {
                connection.rollback(() => {
                    return res.status(500).send('Failed to update variant status: ' + err.message);
                });
            }

            // Commit the transaction if all is well
            connection.commit(err => {
                if (err) {
                    connection.rollback(() => {
                        return res.status(500).send('Transaction commit failed: ' + err.message);
                    });
                }
                res.send({ message: 'Variant status updated to soldout successfully' });
            });
        });
    });
});

// end
    
});

const port = 3000;
app.listen(port, () => {
  console.log(`Server running on port ${port}`);
});
