import axios from 'axios';

// Create an axios instance with a custom config
const apiClient = axios.create({
    baseURL: 'http://localhost:3000',
    timeout: 10000, // optional timeout configuration
});

// Export the axios instance
export default apiClient;
