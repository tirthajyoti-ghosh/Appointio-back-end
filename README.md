<!--
*** Thanks for checking out this README Template. If you have a suggestion that would
*** make this better, please fork the repo and create a pull request or simply open
*** an issue with the tag "enhancement".
*** Thanks again! Now go create something AMAZING! :D
-->

<!-- PROJECT SHIELDS -->
<!--
*** I'm using markdown "reference style" links for readability.
*** Reference links are enclosed in brackets [ ] instead of parentheses ( ).
*** See the bottom of this document for the declaration of the reference variables
*** for contributors-url, forks-url, etc. This is an optional, concise syntax you may use.
*** https://www.markdownguide.org/basic-syntax/#reference-style-links
-->
[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![License: MIT][license-shield]][license-url]
[![LinkedIn][linkedin-shield]][linkedin-url]

<!-- PROJECT LOGO -->
<br />
<p align="center">
  <a href="https://github.com/tirthajyoti-ghosh/final-capstone-backend">
    <img src="https://user-images.githubusercontent.com/57726348/95655344-3ae8de00-0b24-11eb-9c34-1fac11fecfcc.png" alt="Logo" width="195" height="115">
  </a>

  <h3 align="center">Appointio (back-end)</h3>

  <p align="center">
    Rails back-end to <a href="https://github.com/tirthajyoti-ghosh/final-capstone-frontend">this</a> React web app.
    <br />
    <a href="https://github.com/tirthajyoti-ghosh/final-capstone-backend"><strong>Explore the docs »</strong></a>
    <br />
    <br />
    <a href="https://github.com/tirthajyoti-ghosh/final-capstone-backend">View Demo</a>
    ·
    <a href="https://github.com/tirthajyoti-ghosh/final-capstone-backend/issues">Report Bug</a>
    ·
    <a href="https://github.com/tirthajyoti-ghosh/final-capstone-backend/issues">Request Feature</a>
  </p>
</p>

<!-- TABLE OF CONTENTS -->
## Table of Contents

* [Getting Started](#getting-started)
  * [Prerequisites](#prerequisites)
  * [Installation](#installation)
* [Roadmap](#roadmap)
* [Contributing](#contributing)
* [License](#license)
* [Contact](#contact)
* [Acknowledgements](#acknowledgements)

## Project details

### Models

* User
* Apartments
* Types
* Appointments

#### ERD

![image](https://user-images.githubusercontent.com/57726348/95857620-80521900-0d79-11eb-93df-2508bb9bb3cc.png)

### Controllers

* Sessions and registrations - for creating and logging in/out users
* ... other model respective controllers

### Changes made to convert vanilla rails app to API worthy

* Add `rack-cors` gem to configure CORS
* Add session store initializer to accept and send cookies to front-end

## Tests

* Used `rspec-rails` for testing routes, models and controllers (as requests). 
* Used `shoulda-matchers` to test routes and models.

## Seeding database

Added seed for populating initial data to the database.

## Deployed to Heroku

https://tg-appointio.herokuapp.com/

### Built With

* Ruby v2.7.1
* Rails v6.0.3.3
* Postgresql 12
* Gems used:
  * Faker - seeding the database
  * Rack-CORS - allowing cross-origin resource sharing
  * Rubocop - ensuring code standards
  * Testing:
    * Database cleaner
    * RSpec-rails
    * Shoulda-matchers

<!-- GETTING STARTED -->
## Getting Started

To get a local copy up and running follow these simple steps.

### Prerequisites

* Ruby v2.7.1
* Rails v6.0.3.3
* Postgresql 12

### Installation

1. Clone the repo

    ```sh
    git clone https://github.com/tirthajyoti-ghosh/final-capstone-backend.git
    ```

2. Install Gems

    ```sh
    bundle install
    ```

3. Create database

    ```sh
    rails db:create
    ```

4. Migrate database

    ```sh
    rails db:migrate
    ```

5. Seed database

    ```sh
    rails db:seed
    ```

6. Start local server

    ```sh
    rails server
    ```

7. Visit `http://localhost:3000/` in your browser.

## Run tests

Run this command in your terminal

```sh
rspec
```

<!-- ROADMAP -->
## Roadmap

Implement admin panel.

<!-- CONTRIBUTING -->
## Contributing

Contributions are what make the open source community such an amazing place to be learn, inspire, and create. Any contributions you make are **greatly appreciated**.

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

<!-- LICENSE -->
## License

Distributed under the MIT License. See `LICENSE` for more information.

<!-- CONTACT -->
## Contact

👤 **Tirthajyoti Ghosh**

- Website: [tirthajyoti](https://tirthajyoti-ghosh.github.io/Portfolio/)
- GitHub - [@tirthajyoti-ghosh](https://github.com/tirthajyoti-ghosh)
- Twitter - [@terrific_ghosh](https://twitter.com/terrific_ghosh)
- LinkedIn - [linkedin](https://www.linkedin.com/in/tirthajyoti-ghosh/)

Project Link: [https://github.com/tirthajyoti-ghosh/final-capstone-backend](https://github.com/tirthajyoti-ghosh/final-capstone-backend)

<!-- ACKNOWLEDGEMENTS -->
## Acknowledgements

* Apartment images from GettyImages
* Logo and README icon from Icons8
* [Img Shields](https://shields.io)

<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/tirthajyoti-ghosh/final-capstone-backend.svg?style=flat-square
[contributors-url]: https://github.com/tirthajyoti-ghosh/final-capstone-backend/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/tirthajyoti-ghosh/final-capstone-backend.svg?style=flat-square
[forks-url]: https://github.com/tirthajyoti-ghosh/final-capstone-backend/network/members
[stars-shield]: https://img.shields.io/github/stars/tirthajyoti-ghosh/final-capstone-backend.svg?style=flat-square
[stars-url]: https://github.com/tirthajyoti-ghosh/final-capstone-backend/stargazers
[issues-shield]: https://img.shields.io/github/issues/tirthajyoti-ghosh/final-capstone-backend.svg?style=flat-square
[issues-url]: https://github.com/tirthajyoti-ghosh/final-capstone-backend/issues
[license-shield]: https://img.shields.io/badge/License-MIT-yellow.svg
[license-url]: https://github.com/tirthajyoti-ghosh/final-capstone-backend/blob/development/LICENSE
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=flat-square&logo=linkedin&colorB=555
[linkedin-url]: https://www.linkedin.com/in/tirthajyoti-ghosh/
