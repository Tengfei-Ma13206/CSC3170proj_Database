<template>
    <div>
        <el-row>
            <el-col :span="24">
                <my-table title="Product Sales" url="/categorySales" :allowDelete="false" deleteKey="None"
                    deleteUrl="None">
                </my-table>
            </el-col>
        </el-row>
        <el-row>
            <el-col :span="24">
                <my-form title="New Customer" url="/createCustomer" :columns="[
                    // pk_customer_id, customer_name, phone_number, account_balance
                    { key: 'pk_customer_id', label: 'Customer ID' },
                    { key: 'customer_name', label: 'Customer Name' },
                    { key: 'phone_number', label: 'Phone Number' },
                    { key: 'account_balance', label: 'Account Balance' }
                ]">
                </my-form>
            </el-col>
        </el-row>
        <el-row>
            <el-col :span="12">
                <my-form title="New Promotion" url="/createPromotion" :columns="[
                    // pk_promotion_id, threshold_amount, discount_amount, start_date, end_date
                    { key: 'pk_promotion_id', label: 'Promotion ID' },
                    { key: 'threshold_amount', label: 'Threshold Amount' },
                    { key: 'discount_amount', label: 'Discount Amount' },
                    { key: 'start_date', label: 'Start Date' },
                    { key: 'end_date', label: 'End Date' }
                ]">
                </my-form>
            </el-col>
            <el-col :span="12">
                <my-form title="New Variant Discount" url="/addVariantDiscount" :columns="[
                    // variant_discount_id, discount_product_id, discount_variant_id, variant_discount_rate, start_date, end_date
                    { key: 'variant_discount_id', label: 'Variant Discount ID' },
                    { key: 'discount_product_id', label: 'Discount Product ID' },
                    { key: 'discount_variant_id', label: 'Discount Variant ID' },
                    { key: 'variant_discount_rate', label: 'Variant Discount Rate' },
                    { key: 'start_date', label: 'Start Date' },
                    { key: 'end_date', label: 'End Date' }
                ]">
                </my-form>
            </el-col>
        </el-row>
        <el-row>
            <el-col :span="24">
                <el-card>
                    <my-form title="New Transaction Record" url="/createTransRecord" :columns="[
                        // pk_transaction_id, fk_responsible_employee_id, fk_customer_id, transaction_way, fk_promotion_id
                        { key: 'pk_transaction_id', label: 'Transaction ID' },
                        { key: 'fk_responsible_employee_id', label: 'Responsible Employee ID' },
                        { key: 'fk_customer_id', label: 'Customer ID' },
                        { key: 'transaction_way', label: 'Transaction Way' },
                        { key: 'fk_promotion_id', label: 'Promotion ID' }
                    ]">
                    </my-form>
                    <my-form title="Add Transaction Details" url="/addTransDetails" :columns="[
                        // pk_transaction_id, pk_transaction_detail_id, fk_product_id, fk_variant_id, purchasing_quantity
                        { key: 'pk_transaction_id', label: 'Transaction ID' },
                        { key: 'pk_transaction_detail_id', label: 'Transaction Detail ID' },
                        { key: 'fk_product_id', label: 'Product ID' },
                        { key: 'fk_variant_id', label: 'Variant ID' },
                        { key: 'purchasing_quantity', label: 'Purchasing Quantity' }
                    ]">
                    </my-form>
                    <my-form title="Finalize Transaction" url="/updateTransRecords" :columns="[
                        // pk_transaction_id, fk_promotion_id
                        { key: 'pk_transaction_id', label: 'Transaction ID' },
                        { key: 'fk_promotion_id', label: 'Promotion ID' }
                    ]" :is_post="false">
                    </my-form>
                </el-card>
            </el-col>
        </el-row>
    </div>
</template>

<script>
import MyTable from '@/components/MyTable.vue';
import MyForm from '@/components/MyForm.vue';

export default {
    data() {
        return {
            message: 'Hello Vue!'
        }
    },
    components: {
        MyTable,
        MyForm
    }
};
</script>