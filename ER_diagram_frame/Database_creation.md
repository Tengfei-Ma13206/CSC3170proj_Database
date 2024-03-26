# Database Creation

## Requirements Analysis

### Comprehensive Supermarket Requirements

The database for the comprehensive supermarket need basically five subsystems, which are:

1. **Product Organization System:** Since a supermarket will sell a lot of products, it needs to be able to accurately identify each item.
2. **Product Supply System:** A supermarket must have a source of supply for its products.
3. **Product Sales System:** A supermarket needs to sell the products, hence need to have a large system for transaction.
4. **Employee Management System:** A supermarket needs employees hence need a system to manage them.
5. **Marketing Record System:** A supermarket needs to know how much it earns for selling, and how much it spends for maintaining this supermarket.

## Implementation of Database

### Overview Structure

<img src="database_creation.assets/comprehensive_supermarket_ERD_00.png" alt="comprehensive_supermarket_ERD_00" width=800 />

### Details about Product Organization System

#### t_products (以SPU为单位的entity)

```mysql
CREATE TABLE IF NOT EXISTS `comprehensive_supermarket`.`t_products` (
  `pk_product_id` INT NOT NULL,
  `spu_id` VARCHAR(255) NULL DEFAULT NULL,
  `product_unit` VARCHAR(255) NULL DEFAULT NULL,
  `category` VARCHAR(255) NULL DEFAULT NULL,
  `description` TEXT NULL DEFAULT NULL,
  PRIMARY KEY (`pk_product_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;
```

- `pk_product_id` - PK, 标识每一样产品的SPU层面编号, 例如 "001", "002".
- `spu_id` - SPU (Standard Product Unit), 标准产品单位, 例如 "HUAWEI P50 Pro".
- `product_unit` - 商品的计量单位，例如 "kilogram", "item".
- `category` - 商品的分类区，例如 "Groceries", "Personal Care & Beauty".
- `description` - 对商品的描述，例如 "HUAWEI P50 Pro is a high-end smartphone launched by Huawei. It is part of the Huawei P series, which is known for its high-quality photography capabilities."

#### t_product_variants (以SKU为单位的entity)

```mysql
CREATE TABLE IF NOT EXISTS `comprehensive_supermarket`.`t_product_variants` (
  `pk_product_id` INT NOT NULL,
  `pk_variant_id` INT NOT NULL,
  `sku_id` VARCHAR(255) NULL DEFAULT NULL,
  `variant_sales_name` VARCHAR(255) NULL DEFAULT NULL,
  `variant_unit_price` FLOAT NULL DEFAULT NULL,
  `variant_description` TEXT NULL DEFAULT NULL,
  `warehouse_quantity` FLOAT NULL DEFAULT NULL,
  `shelf_quantity` FLOAT NULL DEFAULT NULL,
  PRIMARY KEY (`pk_product_id`, `pk_variant_id`),
  CONSTRAINT `t_product_variants_ibfk_1`
    FOREIGN KEY (`pk_product_id`)
    REFERENCES `comprehensive_supermarket`.`t_products` (`pk_product_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;
```

