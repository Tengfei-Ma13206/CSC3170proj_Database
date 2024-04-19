<template>
    <div class="container">
        <div class="background-image"></div>
        <div class="centered-text">Welcome to Supermarket Management Website!</div>
    </div>
</template>

<script>
</script>

<style lang="less" scoped>
.container {
    display: flex;
    justify-content: center;
    align-items: center;
    position: fixed;
    width: 100%;
    height: 100%;
    top: 0;
    left: 0;
    background: rgba(0, 0, 0, 0.5); /* Semi-transparent black overlay to darken the image */
}

.background-image {
    background-image: url('../assets/home.png');
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
    position: absolute;
    width: 100%;
    height: 100%;
    filter: blur(12px) brightness(0.5); /* Apply a blur effect and darken the image */
    z-index: -1;
}

.centered-text {
    color: #ebeff9; /* Bright white for better contrast */
    font-size: 58px; /* Increased font size */
    font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif; /* Aesthetic font family */
    font-weight: bold; /* Bold text for better visibility */
    text-align: center;
    text-shadow: 4px 4px 8px #000000; /* Larger shadow for better legibility */
    left: 15%;
    z-index: 10;
    position: absolute;
}
</style>
