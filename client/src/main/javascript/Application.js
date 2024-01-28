import '../resources/stylesheets/Application.css';
import PostPreview from "./components/PostPreview";
import BoardsGrid from "./components/BoardsGrid";
import NavBar from "./components/NavBar";
import Account from "./components/Account";

function Application() {
    return (
        <>
            <Account account_username={user1} />
        </>
    );
}

export default Application;
