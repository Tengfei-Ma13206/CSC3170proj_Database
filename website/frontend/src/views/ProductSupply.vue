<template>
    <div>
        <el-row>
            <el-col :span="24">
                <my-table title="Product Supply" url="/productSupply" :allowDelete="false" deleteKey="None"
                    deleteUrl="None">
                </my-table>
            </el-col>
        </el-row>
        <el-row>
            <el-col :span="24">
                <my-table title="Supplier" url="/supplier" :allowDelete="false" deleteKey="None" deleteUrl="None">
                </my-table>
            </el-col>
        </el-row>
        <el-row>
            <el-col :span="24">
                <my-table title="Warehouse" url="/warehouse" :allowDelete="false" deleteKey="None" deleteUrl="None">
                </my-table>
            </el-col>
        </el-row>
        <el-row>
            <el-col :span="24">
                <my-form title="Update Warehouse" url="/updateWarehouse" :columns="[
                    //product_id,variant_id,quantity,supplier_id,purchase_price,supply_record_id,supply_date,pay_term
                    { key: 'product_id', label: 'Product ID' },
                    { key: 'variant_id', label: 'Variant ID' },
                    { key: 'quantity', label: 'Quantity' },
                    { key: 'supplier_id', label: 'Supplier ID' },
                    { key: 'purchase_price', label: 'Purchase Price' },
                    { key: 'supply_record_id', label: 'Supply Record ID' },
                    { key: 'supply_date', label: 'Supply Date' },
                    { key: 'pay_term', label: 'Pay Term' }
                ]">
                </my-form>
            </el-col>
        </el-row>
        <el-row>
            <el-col :span="24">
                <el-card>
                    <my-form title="New Supplier" url="/createSupplier" :columns="[
                        //supplier_id, company_name, company_address, company_website
                        { key: 'supplier_id', label: 'Supplier ID' },
                        { key: 'company_name', label: 'Company Name' },
                        { key: 'company_address', label: 'Company Address' },
                        { key: 'company_website', label: 'Company Website' },
                    ]">
                    </my-form>
                    <my-form title="Add Supplier Contacts" url="/addSupplierContacts" :columns="[
                        //contact_id, supplier_id, contact_name, contact_title, phone_number, email
                        { key: 'contact_id', label: 'Contact ID' },
                        { key: 'supplier_id', label: 'Supplier ID' },
                        { key: 'contact_name', label: 'Contact Name' },
                        { key: 'contact_title', label: 'Contact Title' },
                        { key: 'phone_number', label: 'Phone Number' },
                        { key: 'email', label: 'Email' },
                    ]">
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