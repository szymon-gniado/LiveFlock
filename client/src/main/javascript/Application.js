import logo from '../resources/images/logo.svg';
import '../resources/stylesheets/App.css';
import Account from "./component/Account";

function Application() {
    return (
        <>
            <img alt="" src={logo} width={"128px"}/>
            <Account/>
        </>
    );
}

export default Application;
