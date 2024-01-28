import logo from "../../resources/images/logo.svg";
import '../../resources/stylesheets/PostPreview.css'
import ReactMarkdown from 'react-markdown';

const PostPreview = () => {
    const content = `
  # Welcome to My App

  This is a sample post written in **Markdown**. You can include:

  - Lists
  - **Bold** and *italic* text
  - [Links](https://example.com)
  - Images ![Image Alt Text](url-to-image.jpg)
  
  Enjoy your time in my app!`;
    return (
        <article className="post-preview">
            <p>
                <ul className="post-links">
                    <li><a><img src={logo} alt="" width="24px"/></a></li>
                    <li><a>Board Name</a></li>
                    <li><a>Posted by user</a></li>
                    <li>2h ago</li>
                </ul>
            </p>
            <h1>Post Title </h1>
            <p>
                <ReactMarkdown>{content}</ReactMarkdown>
            </p>
        </article>
    )
}

export default PostPreview;