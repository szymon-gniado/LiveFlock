import React from 'react';
import ReactDOM from 'react-dom/client';
import Application from './main/javascript/Application';
import reportWebVitals from './main/javascript/reportWebVitals';
import '@fortawesome/fontawesome-free/css/all.css';

const root = ReactDOM.createRoot(document.getElementById('root'));

root.render(
    <React.StrictMode>
        <Application/>
    </React.StrictMode>
);

reportWebVitals();