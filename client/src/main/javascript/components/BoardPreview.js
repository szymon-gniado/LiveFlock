import logo from "../../resources/images/logo.svg";
import "../../resources/stylesheets/BoardPreview.css";

const BoardPreview = () => {
    return (
        <a>
            <article>
                <img className="board-image" src={logo} width={"144px"} alt={""}/>
                <h1>Board Name</h1>
                <p>
                    Join our community of passionate travelers! Share your favorite
                    destinations, travel tips, and memorable experiences. Whether you're a
                    seasoned explorer or planning your first adventure, this board is the
                    perfect place to connect with fellow travel enthusiasts.
                </p>
                <div className="board-meta">
        <span className="meta-item">
          <i className="fas fa-users"></i> 120 Members
        </span>
                    <span className="meta-item">
          <i className="far fa-calendar-alt"></i> July 15, 2022
        </span>
                </div>
            </article>
        </a>
    );
}

export default BoardPreview;
