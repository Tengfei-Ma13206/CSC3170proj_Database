<template>
    <el-card>
        <div slot="header">
            <span>{{ title }}</span>
        </div>
        <el-form ref="insertForm" :model="newRow" size="mini" :inline="inline">
            <el-form-item v-for="column in columns" :label="column.label" :key="column.key">
                <el-input v-model="newRow[column.key]"></el-input>
            </el-form-item>
            <el-form-item>
                <el-button :type="button_type" @click="insertRow">{{ button_text }}</el-button>
            </el-form-item>
        </el-form>
    </el-card>
</template>

<script>
import apiClient from '@/services/apiClient';

export default {
    data() {
        return {
            newRow: {}
        };
    },
    methods: {
        insertRow() {
            if (!this.is_post) {
                apiClient.patch(this.url, this.newRow)
                    .then(() => {
                        this.$message({
                            message: this.message_success,
                            type: 'success'
                        });
                        this.$emit('inserted');
                    })
                    .catch(() => {
                        this.$message({
                            message: this.message_error,
                            type: 'error'
                        });
                    });
                return;
            }
            apiClient.post(this.url, this.newRow)
                .then(() => {
                    this.$message({
                        message: this.message_success,
                        type: 'success'
                    });
                    this.$emit('inserted');
                })
                .catch(() => {
                    this.$message({
                        message: this.message_error,
                        type: 'error'
                    });
                });
        }
    },
    props: {
        title: {
            type: String,
            default: 'Default Title'
        },
        url: String,
        columns: Array,
        inline: {
            type: Boolean,
            default: false
        },
        button_text: {
            type: String,
            default: 'Insert New Row'
        },
        message_success: {
            type: String,
            default: 'Row inserted successfully'
        },
        message_error: {
            type: String,
            default: 'Failed to insert row'
        },
        button_type: {
            type: String,
            default: 'primary'
        },
        is_post: {
            type: Boolean,
            default: true
        }
    },
    created() {
        // Initialize newRow with properties based on columns
        this.columns.forEach(column => {
            this.$set(this.newRow, column.key, '');
        });
    }
};
</script>

<style scoped>
.el-card {
    margin-top: 15px;
    margin-bottom: 15px;
    margin-left: 15px;
    margin-right: 15px;
}
</style>
