import axios from "axios";

window.axios = axios
axios.defaults.withCredentials = false
// axios.defaults.baseURL = "http://localhost:8081/api"
let backendUrl = "https://restaurant-server-v2-dot-if-c-01-project.df.r.appspot.com/api"
axios.defaults.baseURL = backendUrl
