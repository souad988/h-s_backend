
<a name="readme-top"></a>

  <h3><b>H&S_backend</b></h3>

</div>

<!-- TABLE OF CONTENTS -->

# 📗 Table of Contents

- [📖 About the Project](#about-project)
  - [🛠 Built With](#built-with)
    - [Tech Stack](#tech-stack)
    - [Key Features](#key-features)
- [💻 Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Setup](#setup)
  - [Install](#install)
  - [Usage](#usage)
  - [Run tests](#run-tests)
- [👥 Authors](#authors)
- [🔭 Future Features](#future-features)
- [🤝 Contributing](#contributing)
- [⭐️ Show your support](#support)
- [🙏 Acknowledgements](#acknowledgements)
- [📝 License](#license)

<!-- PROJECT DESCRIPTION -->

# 📖 [H&S_backend] <a name="about-project"></a>

**[H&S_backend]**

The [H&S_backend] is a robust Rails server-side application meticulously designed to serve as the backbone for our (H&S) eCommerce platform. It plays a pivotal role by delivering essential API endpoints and services crucial for the seamless functioning of our application. Additionally, [H&S_backend] hosts the user-friendly admin portal, empowering efficient management and oversight of our H&S eCommerce ecosystem.

![drawSQL-e-com-export-2024-02-02](https://github.com/souad988/h-s_backend/assets/59707859/8a09668f-6d51-44d7-b22c-4d6c8a9f9f26)

## 🛠 Built With <a name="built-with"></a>

### Tech Stack <a name="tech-stack"></a>

<details>
  <summary>Server</summary>
  <ul>
    <li><a href="https://rails.com/">Rails</a></li>
  </ul>
</details>

<details>
<summary>Database</summary>
  <ul>
    <li><a href="https://www.postgresql.org/">PostgreSQL</a></li>
  </ul>
</details>

### Frontend Link
  https://github.com/souad988/react_frontend/pull/1
<!-- Features -->

### Key Features <a name="key-features"></a>

- **[Setup rails ]**
- **[Create api endpoint]**

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- GETTING STARTED -->

## 💻 Getting Started <a name="getting-started"></a>

To get a local copy up and running, follow these steps.

### Prerequisites

In order to run this project you need:

  rails -v 7.0.6
  postgresql

### Setup

Clone this repository to your desired folder:

  cd my-folder
  git clone git@github.com:souad988/my_new_rails_app.git


### Install

Install this project with:

  bundle install (install all dependencies)
  Configure config/database.yml Update the username and password fields if your PostgreSQL installation requires authentication
  create a new api key in sendGrid then store it in credentials.yml
  generate and save devise jwt secret key: 
  bundle exec rake secret
  EDITOR='code --wait' rails credentials:edit
  Then we add a new key: value in the credentials.yml file.
    # Other secrets...  
    # Used as the base secret for Devise-JWT 
    devise_jwt_secret_key: (copy and paste the generated secret here)
    HS_API_KEY=<key from sendGrid>
    secret_key_base: 
    SENDGRID_API_KEY: 
    devise_jwt_secret_key: 
  rails db:create
  rails db:migrate
  rails db:seed

### Usage

To run the project, execute the following command:

  rails server


<!-- AUTHORS -->

## 👥 Authors <a name="authors"></a>

👤 **Author1**

- GitHub: [@githubhandle](https://github.com/souad988)
- LinkedIn: [LinkedIn](https://www.linkedin.com/in/souad-el-mansouri/)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- FUTURE FEATURES -->

## 🔭 Future Features <a name="future-features"></a>

- [ ] **[Add Order feature]**
- [ ] **[Add Payment feature]**
- [ ] **[Add Delivery feature]**
      
<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTRIBUTING -->

## 🤝 Contributing <a name="contributing"></a>

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](../../issues/).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- SUPPORT -->

## ⭐️ Show your support <a name="support"></a>

If you like this project please show your support by adding a star 

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ACKNOWLEDGEMENTS -->

## 🙏 Acknowledgments <a name="acknowledgements"></a>

I would like to thank you for your visit. 

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LICENSE -->

## 📝 License <a name="license"></a>

This project is [MIT](./LICENSE) licensed.

<p align="right">(<a href="#readme-top">back to top</a>)</p>
