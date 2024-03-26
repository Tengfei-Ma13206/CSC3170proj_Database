# CSC3170 Proj Overview

## Basic Requirements

> Suppose you are engaged as a database designer for an organization to support its  operations. You have first to choose and determine the exact nature of the organization.  You may pick one that you have encountered in real-life or one that you are interested to  work for after graduation (e.g., **university, sports association, retail, manufacturing**). You  have to make certain **assumptions** concerning the organization’s operations, as well as  the **underlying entities, attributes and relationships**. You should **state and justify these assumptions** clearly, and these assumptions should be reasonable and realistic. Your  project must include the following.

1. Analyze the requirements of the organization.

   > 需要一定的资料和丰富的想法。

2. Identify the **relevant entities, attributes, and relationships** together with any constraints and properties.

3. Produce an **E-R diagram** for the database.

4. Convert the E-R diagrams to **relational schemas** (clearly indicating the **primary keys, foreign keys, functional and/or multivalued dependencies**, as well as justifying that your designs are in good, **normalized form**).

   > 上述部分需要建立在丰富的想法和概念之后，并且需要花大量时间进行设计。

5. Populate the schemas with **a reasonable amount of realistic data**.

   > 需要一定的资料和数据。

6. Produce **sample SQL queries** on these relations that are used for practical daily operations and activities.

   > 需要参考现有数据搜索软件的一些设计。

7. Produce **sample SQL queries** on these relations which are of **an analytic or data mining nature** <u>*(this part is optional and carries extra bonus points of up to 5% of the total project mark)*</u>.

   > 具有分析或者数据挖掘性质的关系？？

8. Suggest which **data fields** of the relational schemas should be **indexed or hashed**, and explain your decision.

   > 目前还不会。

9. Implement 4 to 6 (and possibly 7) of the above. <u>*A good web design will carry extra bonus points of up to 5% of the total project mark*</u>.

## Additional Bonus

Given the swift advancements in Large Language Model (LLM), we encourage you to delve into the application of LLM within the database domain. <u>*An additional bonus of 10% will be awarded for incorporating this approach*</u>. Your objectives should include:

- Engage with LLM to refine your database architecture. For instance, leverage LLM to enhance aspects such as **data integrity** (through polishing and validating database schemas, suggesting integrity constraints, detecting anomaly records etc.), **independence**, and **efficient data access** in your database design. Document and present a comparison between the newly refined database and your original design. (5% points)
- **Investigate methods for crafting prompts** that guide LLM to **accurately generate queries** for extracting information from the database. (5% points).

> 这部分其实主要是对AI不停地问问题。但是是需要一些逻辑和对比的。