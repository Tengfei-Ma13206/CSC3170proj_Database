export default {
    state: {
        isCollapse: false
    },
    mutations: {
        toggleCollapse(state) {
            state.isCollapse = !state.isCollapse
        }
    },
}