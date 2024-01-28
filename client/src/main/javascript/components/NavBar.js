import logo from "../../resources/images/logo.svg";
import '../../resources/stylesheets/NavBar.css'
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { faSearch } from '@fortawesome/free-solid-svg-icons';
import { faUser } from '@fortawesome/free-solid-svg-icons';

const NavBar = () => {
    return (
        <nav className="navbar">
            <img className="logo" src={logo} width={"24px"} alt={""} />
            <form className="search-bar">
                <label>
                    <FontAwesomeIcon icon={faSearch} />
                </label>
                <input type="text" placeholder="Search LiveFlock" />
            </form>
            <a onClick={() => console.log("xd")}>
                <FontAwesomeIcon icon={faUser} />
            </a>
        </nav>
    );
}

export default NavBar;