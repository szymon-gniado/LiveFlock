## Installation

1. Clone the repository and compose:
   
   ```shell
   docker rm liveflock-database live-flock-client-1 liveflock-service
   docker image rm liveflock-client liveflock-service
   docker network rm live-flock_default
   git clone git@github.com:szymon-gniado/live-flock.git
   cd live-flock
   docker-compose up
   
5. Access the application at:
   
   ```shell
   http://localhost:3000
   ```
## Usage
 1. User can be added by entering a username into input field and submiting form.
 2. After user is added you can refresh the page to see it appear on the users' list

## Authors

[Szymon Gniado](https://github.com/szymon-gnado)

If you'd like to contribute to this project, please see the [Contributing Guidelines](CONTRIBUTING.md).

## License
This project is licensed under the [GPL-3.0 License](https://www.gnu.org/licenses/gpl-3.0.en.html).
