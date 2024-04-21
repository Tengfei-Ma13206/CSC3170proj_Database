<template>
    <el-card style="margin-top: 20px; height: auto;">
        <h3 style="margin: 0 0 20px 0; padding: 10px;">{{ title }}</h3>
        <div v-if="showCharts">
            <div ref="barchart" style="width: 50%; height: 500px; display: inline-block;"></div>
            <div ref="piechart" style="width: 50%; height: 500px; display: inline-block;"></div>
        </div>
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
import * as echarts from 'echarts';

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
        deleteUrl: String,
        showCharts: {
            type: Boolean,
            default: false
        },
        barLabelColumn: {
            type: String,
            default: ''
        },
        barDataColumns: {
            type: Array,
            default: () => ['', '']
        },
        pieLabelColumn: {
            type: String,
            default: ''
        },
        pieQuantityColumn: {
            type: String,
            default: ''
        }
    },
    computed: {
        columns() {
            return this.tableData.length > 0 ? Object.keys(this.tableData[0]) : [];
        }
    },
    mounted() {
        this.fetchData();
        this.setupRefresh();
        // sleep for 1 second to wait for the data to be fetched
        setTimeout(() => {
            if (this.showCharts) {
                this.initCharts();
            }
        }, 1000);
        if (this.showCharts) {
            this.initCharts();
        }
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
        setupRefresh() {
            this.refreshInterval = setInterval(this.fetchData, 100000); // Adjust for better effects
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
            // remove the row from the tableData
            this.tableData.splice(index, 1);
        },
        initCharts() {
            var barOptions = {
                xAxis: {
                    data: this.tableData.map(item => item[this.barLabelColumn]),
                    axisLabel: {
                        // x-axis label
                        show: false
                    }
                },
                yAxis: {},
                series: this.barDataColumns.map(column => ({
                    type: 'bar',
                    data: this.tableData.map(item => item[column])
                })),
                tooltip: {
                    trigger: 'axis',
                    axisPointer: {
                        type: 'shadow'
                    }
                }

            };
            console.log('barOptions:', barOptions);
            var pieOptions = {
                legend: {
                    orient: 'vertical',
                    x: 'left',
                    data: this.tableData.map(item => item[this.pieLabelColumn])
                },
                series: [
                    {
                        type: 'pie',
                        radius: ['50%', '70%'],
                        avoidLabelOverlap: false,
                        label: {
                            show: false,
                            position: 'center'
                        },
                        labelLine: {
                            show: false
                        },
                        emphasis: {
                            label: {
                                show: true,
                                fontSize: '30',
                                fontWeight: 'bold'
                            }
                        },
                        data: this.tableData.map(item => ({
                            value: item[this.pieQuantityColumn],
                            name: item[this.pieLabelColumn]
                        }))
                    }
                ]
            };
            var barchart = echarts.init(this.$refs.barchart);
            barchart.setOption(barOptions);
            var piechart = echarts.init(this.$refs.piechart);
            piechart.setOption(pieOptions);
        }
    }
}
</script>
