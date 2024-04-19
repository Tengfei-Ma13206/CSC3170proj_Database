<template>
    <div class="personal-center">
      <el-card class="box-card">
        <div slot="header" class="header-content">
          <span>Personal Center</span>
        </div>
  
        <div class="user-info">
          <img src="../assets/logo.png" alt="avatar" class="el-avatar" />
          <div class="user-details">
            <h3>{{ employee.name }}</h3>
            <p><strong>Email:</strong> {{ employee.email }}</p>
            <p><strong>Position:</strong> {{ employee.job }}</p>
            <p><strong>Salary:</strong> {{ employee.salary | currency }}</p>
            <p><strong>Work Schedule:</strong> {{ employee.workSchedule }}</p>
          </div>
        </div>
  
        <el-progress :percentage="employee.performance" status="success"></el-progress>
      </el-card>
    </div>
  </template>
  
  <script>
  import apiClient from '@/services/apiClient';
  
  export default {
    data() {
      return {
        employee: {
          name: "Anna Smith",
          avatar: "../assets/logo.png",
          salary: 0,  // Initialize salary to 0 until fetched
          email: "anna.smith@example.com",
          job: "Cashier",
          performance: 75,
          workSchedule: "Mon-Fri 9:00-17:00",
          id: "14"
        }
      };
    },
    filters: {
      currency(value) {
        const number = parseFloat(value);
        if (!isNaN(number)) {
          return new Intl.NumberFormat('en-US', { style: 'currency', currency: 'USD' }).format(number);
        }
        return value;
      }
    },
    methods: {
      fetchSalary() {
        apiClient.get(`/personalSalary/${this.employee.id}`)
          .then(response => {
            this.employee.salary = response.data.salary;
            this.employee.workSchedule = response.data.work_schedule || 'Not specified';
            console.log('Salary and schedule data retrieved:', response.data);
          })
          .catch(error => {
            console.error('Failed to fetch salary and schedule', error);
            this.employee.salary = 'Unavailable';
            this.employee.workSchedule = 'Unavailable';
          });
      }
    },
    created() {
      this.fetchSalary();
    }
  };
  </script>
  
  <style scoped>
  .personal-center {
    width: 100%;
    max-width: 1200px;
    margin: 30px auto;
  }
  
  .header-content {
    font-size: 20px;
    color: #333;
  }
  
  .user-info {
    display: flex;
    align-items: center;
    margin-top: 20px;
  }
  
  .user-details {
    margin-left: 20px;
  }
  
  .el-avatar {
    border: 2px solid #f2f2f2;
  }
  
  .box-card {
    border-radius: 8px;
    padding: 20px;
  }
  
  .box-card p {
    margin: 5px 0;
    color: #666;
  }
  
  .el-progress {
    margin-top: 15px;
  }
  </style>
  