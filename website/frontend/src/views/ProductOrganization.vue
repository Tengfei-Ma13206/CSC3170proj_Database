<template>
    <div>
        <el-row>
            <el-col :span="24">
                <el-card>
                    <my-table title="Products List" url="/allProductInfo"></my-table>
                    <el-col :span="12">
                        <my-form title="Remove Product" url="/rmProduct" :columns="[
                            // product_id
                            { key: 'product_id', label: 'Product ID' }
                        ]" :inline="true" button_text="Delete" button_type="danger"
                            message_error="Fail to delete the product."
                            message_success="Successfully delete the product.">
                        </my-form>
                    </el-col>
                    <el-col :span="12">
                        <my-form title="Remove Variant" url="/rmVariant" :columns="[
                            // product_id
                            { key: 'product_id', label: 'Product ID' },
                            { key: 'variant_id', label: 'Variant ID' }
                        ]" :inline="true" button_text="Delete" button_type="danger"
                            message_error="Fail to delete the variant."
                            message_success="Successfully delete the variant.">
                        </my-form>
                    </el-col>
                </el-card>
            </el-col>
        </el-row>
        <el-row>
            <el-col :span="24">
                <my-table title="Shelves to Replenish" url="/checkReplenishment"></my-table>
            </el-col>
        </el-row>
        <el-row>
            <el-col :span="12">
                <my-form title="New Product" url="/createProduct" :columns="[
                    // product_id, product_name, category, description
                    { key: 'product_id', label: 'Product ID' },
                    { key: 'product_name', label: 'Product Name' },
                    { key: 'category', label: 'Category' },
                    { key: 'description', label: 'Description' },
                ]">
                </my-form>
            </el-col>
            <el-col :span="12">
                <my-form title="New Variant" url="/createVariant" :columns="[
                    // product_id, variant_id, variant_name, variant_unit, variant_unit_price, variant_description
                    { key: 'product_id', label: 'Product ID' },
                    { key: 'variant_id', label: 'Variant ID' },
                    { key: 'variant_name', label: 'Variant Name' },
                    { key: 'variant_unit', label: 'Variant Unit' },
                    { key: 'variant_unit_price', label: 'Variant Unit Price' },
                    { key: 'variant_description', label: 'Variant Description' },
                ]">
                </my-form>
            </el-col>
        </el-row>
        <el-row>
            <el-col :span="24">
                <my-form title="Update Shelf" url="/updateShelf" :columns="[
                    // pk_management_record_id, responsible_employee_id, product_id, variant_id, warehouse_change_quantity, shelf_change_quantity
                    { key: 'pk_management_record_id', label: 'Management Record ID' },
                    { key: 'responsible_employee_id', label: 'Responsible Employee ID' },
                    { key: 'product_id', label: 'Product ID' },
                    { key: 'variant_id', label: 'Variant ID' },
                    { key: 'warehouse_change_quantity', label: 'Warehouse Change Quantity' },
                    { key: 'shelf_change_quantity', label: 'Shelf Change Quantity' }
                ]">
                </my-form>
            </el-col>
        </el-row>
    </div>
</template>

<script>
import MyTable from '@/components/MyTable';
import MyForm from '@/components/MyForm.vue';

export default {
    components: {
        MyTable,
        MyForm
    }
};
</script>
