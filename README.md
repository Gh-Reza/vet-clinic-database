## Getting Started

This repository includes files with plain SQL that can be used to recreate a database:

- Use [schema.sql](./schema.sql) to create all tables.
- Use [data.sql](./data.sql) to populate tables with sample data.
- Check [queries.sql](./queries.sql) for examples of queries that can be run on a newly created database. **Important note: this file might include queries that make changes in the database (e.g., remove records). Use them responsibly!**

<a name="readme-top"></a>

<!-- TABLE OF CONTENTS -->

# 📗 Table of Contents

- [📖 About the Project](#about-project)
  - [🛠 Built With](#built-with)
    - [Tech Stack](#tech-stack)
    - [Key Features](#key-features)
  - [🚀 Live Demo](#live-demo)
- [💻 Getting Started](#getting-started)
  - [Setup](#setup)
  - [Prerequisites](#prerequisites)
  - [Usage](#usage)
- [👥 Authors](#authors)
- [🔭 Future Features](#future-features)
- [🤝 Contributing](#contributing)
- [⭐️ Show your support](#support)
- [🙏 Acknowledgements](#acknowledgements)
- [📝 License](#license)

<!-- PROJECT DESCRIPTION -->

# 📖 [vet_clinic] <a name="about-project"></a>

> Describe your project in 1 or 2 sentences.

**[vet_clinic]** is a project that contains SQL files that can be used to create a database for a veterinary clinic.

## 🛠 Built With <a name="built-with"></a>

### Tech Stack <a name="tech-stack"></a>

> List of the technologies used in this project

<details>
<summary>Database</summary>
  <ul>
    <li><a href="https://www.postgresql.org/">PostgreSQL</a></li>
  </ul>
</details>

<!-- Features -->

### Key Features <a name="key-features"></a>

> Describe between 1-3 key features of the application.
    - [x] **[Create a database]**
    - [x] **[Create tables]**
    - [x] **[Add sample data]**

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- GETTING STARTED -->

## 💻 Getting Started <a name="getting-started"></a>

To get a local copy up and running, follow these steps.

### Prerequisites

In order to run this project you need:

 - [x] **Install postgresql**
- [PostgreSQL](https://www.postgresql.org/download/)

### Setup

Clone this repository to your desired folder:

```sh
  git clone https://github.com/Gh-Reza/vet-clinic-database.git
```
### Usage

To run the project, follow these steps:

- Open psql in your terminal
- Create a database using the following command:

```sh
  CREATE DATABASE vet_clinic;
```
- Connect to the database using the following command:

```sh
  \c vet_clinic
```
- For creating table, copy and paste the queries from [schema.sql](./schema.sql) file.
- For adding sample data, copy and paste the queries from [data.sql](./data.sql) file.

<!-- AUTHORS -->

## 👥 Authors <a name="Reza"></a>


👤 **Reza**

- GitHub: [@Gh-Reza](https://github.com/Gh-Reza)
- LinkedIn: [LinkedIn](https://www.linkedin.com/in/reza-merzaie/)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- FUTURE FEATURES -->

## 🔭 Future Features <a name="future-features"></a>

> Describe 1 - 3 features you will add to the project.

- [ ] **[Query and update the animals table]**
- [ ] **[Query multiple tables]**
- [ ] **[Add 'join table' for visites]**
- [ ] **[Database performance audit]**
- [ ] **[Add database schema diagram]**


<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTRIBUTING -->

## 🤝 Contributing <a name="contributing"></a>

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](../../issues/).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- SUPPORT -->

## ⭐️ Show your support <a name="support"></a>

> Write a message to encourage readers to support your project

If you like this project, please give it a ⭐️!

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ACKNOWLEDGEMENTS -->

## 🙏 Acknowledgments <a name="acknowledgements"></a>

I would like to thank Microverse for the opportunity to work on this project.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LICENSE -->

## 📝 License <a name="license"></a>

This project is [MIT](./LICENSE) licensed.

<p align="right">(<a href="#readme-top">back to top</a>)</p>
