<template>
    <el-card style="margin-top: 20px; height: 460px;">
        <h3 style="margin: 0 0 20px 0; padding: 10px;">{{ title }}</h3>
        <div style="height: 360px; overflow-y: auto;">
            <el-table :data="tableData" style="width: 100%">
                <el-table-column v-for="key in columns" :key="key" :prop="key"
                    :label="key.replace(/_/g, ' ').toUpperCase()">
                </el-table-column>
                <el-table-column v-if="allowDelete" label="Actions">
                    <template v-slot="scope">
                        <el-button size="mini" v-if="allowDelete" type="danger"
                            @click="deleteRow(scope.$index)">Delete</el-button>
                    </template>
                </el-table-column>
            </el-table>
        </div>
    </el-card>
</template>

<script>
import apiClient from '@/services/apiClient';

export default {
    data() {
        return {
            tableData: [],
            refreshInterval: null
        };
    },
    props: {
        title: {
            type: String,
            default: 'Default Title'
        },
        url: String,
        allowDelete: {
            type: Boolean,
            default: false
        },
        deleteKey: String,
        deleteUrl: String
    },
    computed: {
        columns() {
            return this.tableData.length > 0 ? Object.keys(this.tableData[0]) : [];
        }
    },
    mounted() {
        this.fetchData();
        this.setupRefresh();
    },
    beforeDestroy() {
        if (this.refreshInterval) {
            clearInterval(this.refreshInterval);
        }
    },
    methods: {
        fetchData() {
            apiClient.get(this.url)
                .then(response => {
                    // turncate if too long
                    this.tableData = response.data.slice(0, 500);
                })
                .catch(error => {
                    console.error('Error fetching data:', error);
                });
        },
        formatNumber(value, decimals) {
            return Number(value).toFixed(decimals);
        },
        setupRefresh() {
            this.refreshInterval = setInterval(this.fetchData, 10000);
        },
        deleteRow(index) {
            const id = this.tableData[index][this.deleteKey];
            // if deleteKey is not in the tableData, raise an error
            if (!id) {
                console.error('deleteKey not found in tableData:', this.deleteKey);
                return;
            }
            console.log('Deleting row with id:', id);
            apiClient.post(this.deleteUrl, { [this.deleteKey]: id })
                .then(() => {
                    console.log('Row deleted successfully');
                })
                .catch(error => {
                    console.error('Error deleting row:', error);
                });
        }
    },
}
</script>

<style lang="less" scoped>
h3 {
    text-align: center;
    color: #333;
}
.el-card {
    margin-top: 15px;
    margin-bottom: 15px;
    margin-left: 15px;
    margin-right: 15px;
}
</style>
