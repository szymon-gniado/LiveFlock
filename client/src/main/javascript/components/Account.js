import useFetch from "../hooks/useFetch";

function Account({account_username = ""}) {

    const [status, error, account] = useFetch("http://localhost:8080/accounts/" + account_username);
    const {id, email, username, password, display_name, creation_date, avatar} = account;
    const body = (
        <ul>
            <li>id: {id}</li>
            <li>email: {email}</li>
            <li>username: {username}</li>
            <li>password: {password}</li>
            <li>display name: {display_name}</li>
            <li>creation date: {creation_date}</li>
            <li>avatar: {avatar}</li>
        </ul>
    )
    switch (status) {
        case "pending":
            return <p>Loading...</p>;
        case "ok":
            return body;
        case "error":
            return <p>{error.toString()}</p>;
        default:
            return <p>404 Page Not Found</p>
    }

}

export default Account;
