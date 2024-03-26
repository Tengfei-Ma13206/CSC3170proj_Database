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
- 

