<template>
  <div class="llm-container">
    <div class="chat-box">
      <div class="messages">
        <div v-for="(message, index) in messages" :key="index" class="message" :class="{'user-message': !message.isResponse, 'response-message': message.isResponse}">
          <img :src="message.isResponse ? llmLogo : userLogo" class="logo">
          <div class="message-content">
            <p>{{ message.text }}</p>
          </div>
        </div>
      </div>
      <div class="input-area">
        <input v-model="userInput" @keyup.enter="sendMessage" placeholder="Type your query..." />
        <button @click="sendMessage">Send</button>
      </div>
    </div>
  </div>
</template>


<script>
import userLogo from '@/assets/user-logo.png';
import llmLogo from '@/assets/llm-logo.png';
export default {
  data() {
    return {
      userInput: '',
      messages: [],
      userLogo: userLogo,
      llmLogo: llmLogo
    };
  },
  methods: {
    sendMessage() {
      if (this.userInput.trim() === '') return;

      // Add user message
      // this.messages.push({ text: 'User: ', isResponse: false });
      // this.messages.push({ text: '----------------', isResponse: false });
      this.messages.push({ text: this.userInput, isResponse: false });
      // this.messages.push({ text: '----------------', isResponse: false });

      // Send the user input to the backend and get the response
      this.fetchResponse(this.userInput);

      // Clear input field
      this.userInput = '';
    },
    async fetchResponse(query) {
      try {
        console.log("Sending query:", query);
        const response = await fetch('http://localhost:8000/api/query', {
          method: 'POST',
          headers: {
            'Content-Type': 'application/json'
          },
          body: JSON.stringify({ question: query })
        });
        if (response.ok) {
          const data = await response.json();
          // this.messages.push({ text: 'LLM: ', isResponse: true });
          // this.messages.push({ text: '================', isResponse: true });
          this.messages.push({ text: data.response, isResponse: true });
          // this.messages.push({ text: '================', isResponse: true });

        } else {
          console.error('Failed to fetch response');
        }
      } catch (error) {
        console.error('Error:', error);
      }
    }
  }
};
</script>

<style scoped>
.llm-container {
  background-color: white;
  width: 100%;
  height: 100vh;
  display: flex;
  align-items: center;
  justify-content: center;
}

.chat-box {
  width: 90%;
  max-width: 600px;
  height: 80vh;
  border: 2px solid black;
  display: flex;
  flex-direction: column;
  justify-content: space-between;
  background-color: #f9f9f9;
}

.messages {
  overflow-y: auto;
  padding: 20px;
  height: calc(100% - 60px);
}

.message {
  display: flex;
  align-items: center;
  margin-bottom: 12px;
}

.logo {
  width: 40px;
  height: 40px;
  margin-right: 10px;
}

.message-content {
  flex: 1;
}

.user-message p {
  text-align: left;
  padding: 8px;
  background-color: #blue;
  color: black;
  border-radius: 12px;
  display: inline-block;
}

.response-message p {
  text-align: left;
  padding: 8px;
  background-color: #gray;
  color: black;
  border-radius: 12px;
  display: inline-block;
}

.input-area {
  display: flex;
  padding: 10px;
}

input {
  flex-grow: 1;
  margin-right: 8px;
  padding: 8px;
  border: 1px solid #ccc;
}

button {
  padding: 10px 20px;
  cursor: pointer;
  background-color: #4CAF50;
  color: white;
  border: none;
}
</style>
