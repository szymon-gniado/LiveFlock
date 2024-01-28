import {useEffect, useState} from "react";

const useFetch = (url) => {
    const [status, setStatus] = useState("pending");
    const [error, setError] = useState(null);
    const [data, setData] = useState({});

    async function getAccount(url) {
        try {
            const response = await fetch(url);
            setStatus("ok");
            setData(await response.json())
        } catch (error) {
            setStatus("error");
            setError(error);
        }
    }

    useEffect(() => {
        getAccount(url);
    }, [url]);
    return [status, error, data];
}

export default useFetch;