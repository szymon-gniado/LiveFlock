import useFetch from "../hooks/useFetch";
import React, {useState} from "react";
import UseFetch from "../hooks/useFetch";

function Account() {

    const [formData, setFormData] = useState({
        username: '',
    });
    const [status, error, accounts] = useFetch("http://localhost:8080/accounts");

    const handleChange = (e) => {
        const { username, value } = e.target;
        setFormData({username: value });
    };

    // Handler function to submit form data
    const handleSubmit = (e) => {
        e.preventDefault();
        // Send form data to the server using fetch or any other method
        fetch('http://localhost:8080/accounts', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify(formData)
        })
            .then(response => {
                if (response.ok) {
                    console.log('Form submitted successfully');
                    setFormData({ username: '' });
                } else {
                    throw new Error('Form submission failed');
                }
            })
            .catch(error => {
                console.error('Form submission error:', error);
            });
    };

    return (
        <>
            <form onSubmit={handleSubmit}>
                <label>
                    Add new user:
                    <input type="text" name="name" value={formData.username} onChange={handleChange}/>
                </label>
                <button type="submit">Add</button>
            </form>
            List of users:
            <ul>
                {status === 'loading' && <p>Loading...</p>}
                {status === 'error' && <p>Error: {error}</p>}
                {Array.isArray(accounts) && accounts.map((account) => (<li key={account.id}>{account.username}</li>))}
            </ul>
        </>
    )


}

export default Account;
