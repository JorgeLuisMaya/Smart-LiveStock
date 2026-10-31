// Import the functions you need from the SDKs you need
import { initializeApp } from "firebase/app";
import { getAnalytics } from "firebase/analytics";
// TODO: Add SDKs for Firebase products that you want to use
// https://firebase.google.com/docs/web/setup#available-libraries

// Your web app's Firebase configuration
// For Firebase JS SDK v7.20.0 and later, measurementId is optional
const firebaseConfig = {
  apiKey: "AIzaSyA3Jd36M8nIK2H_9d8gxRTNroYbaEaW_LQ",
  authDomain: "smart-livestock-a7e75.firebaseapp.com",
  projectId: "smart-livestock-a7e75",
  storageBucket: "smart-livestock-a7e75.firebasestorage.app",
  messagingSenderId: "131230376457",
  appId: "1:131230376457:web:d09d077cc5d42004744ed8",
  measurementId: "G-KNTN1H3807"
};

// Initialize Firebase
const app = initializeApp(firebaseConfig);
const analytics = getAnalytics(app);