export async function getAccount(url) {
    return await fetch(url)
        .then(response => {
            if (response.ok) return response.json();
            throw response;
        })
        .then(data => {
            return data;
        })
        .catch(error => {
            return error;
        })
        .finally((state, data, error) => {
        })
}