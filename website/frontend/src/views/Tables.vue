<template>
    <div>
        <el-row>
            <el-col :span="24">
                <my-table title="Customers" url="/showCustomers" :allowDelete="false" deleteKey="None"
                    deleteUrl="None">
                </my-table>
            </el-col>
        </el-row>
        <el-row>
            <el-col :span="24">
                <my-table title="Employees" url="/showEmployees" :allowDelete="false" deleteKey="None"
                    deleteUrl="None">
                </my-table>
            </el-col>
        </el-row>
        <el-row>
            <el-col :span="24">
                <my-table title="Product Management Records" url="/showProductManagement" :allowDelete="false"
                    deleteKey="None" deleteUrl="None">
                </my-table>
            </el-col>
        </el-row>
        <el-row>
            <el-col :span="24">
                <my-table title="Product Variants" url="/showProductVariants" :allowDelete="false" deleteKey="None"
                    deleteUrl="None">
                </my-table>
            </el-col>
        </el-row>
        <el-row>
            <el-col :span="24">
                <my-table title="Products" url="/showProducts" :allowDelete="false" deleteKey="None"
                    deleteUrl="None">
                </my-table>
            </el-col>
        </el-row>
        <el-row>
            <el-col :span="24">
                <my-table title="Reduction Promotions" url="/showReductionPromotions" :allowDelete="false"
                    deleteKey="None" deleteUrl="None">
                </my-table>
            </el-col>
        </el-row>
        <el-row>
            <el-col :span="24">
                <my-table title="Supplier Contacts" url="/showSupplierContacts" :allowDelete="false" deleteKey="None"
                    deleteUrl="None">
                </my-table>
            </el-col>
        </el-row>
        <el-row>
            <el-col :span="24">
                <my-table title="Suppliers" url="/showSuppliers" :allowDelete="false" deleteKey="None"
                    deleteUrl="None">
                </my-table>
            </el-col>
        </el-row>
        <el-row>
            <el-col :span="24">
                <my-table title="Supply Records" url="/showSupplyRecords" :allowDelete="false" deleteKey="None"
                    deleteUrl="None">
                </my-table>
            </el-col>
        </el-row>
        <el-row>
            <el-col :span="24">
                <my-table title="Transaction Details" url="/showTransDetails" :allowDelete="false" deleteKey="None"
                    deleteUrl="None">
                </my-table>
            </el-col>
        </el-row>
        <el-row>
            <el-col :span="24">
                <my-table title="Transaction Records" url="/showTransRecords" :allowDelete="false" deleteKey="None"
                    deleteUrl="None">
                </my-table>
            </el-col>
        </el-row>

        <el-row>
            <el-col :span="24">
                <my-table title="Variant Discounts" url="/showVariantDiscounts" :allowDelete="false" deleteKey="None"
                    deleteUrl="None">
                </my-table>
            </el-col>
        </el-row>
    </div>
</template>

<script>
import MyTable from '@/components/MyTable.vue';

export default {
    components: {
        MyTable
    }
};
</script>
