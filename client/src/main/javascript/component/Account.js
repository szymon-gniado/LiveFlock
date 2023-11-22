import {useEffect, useState} from "react";
import {getAccount} from "../hook/getRequest";

function Account() {

    const [account, setAccount] = useState({});
    const [state, setState] = useState("loading");
    const [error, setError] = useState(null)


    useEffect(() => {
        console.log(getAccount("localhost:8080/accounts/user1903"));
    }, []);

    const {id, email, username, password, display_name, creation_date, avatar} = account;
    const body = (<>
        <ul>
            <li>id: {id}</li>
            <li>email: {email}</li>
            <li>username: {username}</li>
            <li>password: {password}</li>
            <li>display name: {display_name}</li>
            <li>creation name: {creation_date}</li>
            <li>avatar: {avatar}</li>
        </ul>
    </>)
    switch (state) {
        case "error":
            return <>{error}</>;
        case "loading":
            return <>Loading...</>;
        case "fetched":
            return body;
        default:
            return <>404 Page Not Found</>
    }

}

export default Account;
