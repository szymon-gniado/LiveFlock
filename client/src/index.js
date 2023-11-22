import React from 'react';
import ReactDOM from 'react-dom/client';
import './main/resources/stylesheets/index.css';
import Application from './main/javascript/Application';
import reportWebVitals from './main/javascript/reportWebVitals';

const root = ReactDOM.createRoot(document.getElementById('root'));

root.render(
    <React.StrictMode>
        <Application/>
    </React.StrictMode>
);

reportWebVitals();