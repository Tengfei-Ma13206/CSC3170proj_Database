<template>
    <div>
        <el-row>
            <el-col :span="24">
                <my-form title="New Employee" url="/addEmployee" :columns="[
                    { key: 'pk_employee_id', label: 'Employee ID' },
                    { key: 'job_position', label: 'Job Position' },
                    { key: 'salary', label: 'Salary' },
                    { key: 'phone_number', label: 'Phone Number' },
                    { key: 'work_schedules', label: 'Work Schedules' }
                    // pk_employee_id, job_position, salary, phone_number, work_schedules
                ]">
                </my-form>
            </el-col>
        </el-row>
        <el-row>
            <el-col :span="12">
                <my-table title="Salesmans" url="/salesman" :allowDelete="true" deleteKey="employee_id"
                    deleteUrl="/dismission">
                </my-table>
            </el-col>
            <el-col :span="12">
                <my-table title="Warehouse Keepers" url="/warehouseKeeper" :allowDelete="true" deleteKey="employee_id"
                    deleteUrl="/dismission">
                </my-table>
            </el-col>
        </el-row>
        <el-row>
            <my-table title="Salaries" url="/salary"></my-table>
        </el-row>
    </div>
</template>

<script>
import MyForm from '@/components/MyForm';
import MyTable from '@/components/MyTable';

export default {
    components: {
        MyForm,
        MyTable
    }
};
</script>