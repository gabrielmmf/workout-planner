<!-- <div align="center">
<a href="https://gabrielmmf-auth-todolist.netlify.app/">
<img alt="ToDo App logo" width="490px" src="https://github.com/gabrielmmf/authentication-react-todo-app/blob/main/public/readme/logo.png?raw=true"/>
</a>
</div> -->

<!-- <img alt="Proffy" src="./github/banner.png"> -->
<p align="center">
  <img alt="Repository's size: " src="https://img.shields.io/github/repo-size/gabrielmmf/authentication-react-todo-app?style=for-the-badge">
  <img alt="Last commit" src="https://img.shields.io/github/last-commit/gabrielmmf/authentication-react-todo-app?style=for-the-badge">
  <a href="https://github.com/gabrielmmf">
    <img alt="Made by Gabriel Fialho" src="https://img.shields.io/badge/made%20by-Gabriel%20Fialho-%237519C1?style=for-the-badge">
  </a>
<p>

---

### :triangular_ruler: Project Status

<h4>
I'm working in this project
</h4>

<!-- <h4>
The project has already been completed and deployed.
<br/>
But I'm always improving the code! 😀
<br/>
<br/>
👇
</h4> -->

<!-- ### :computer: [Deploy at Netlify](https://gabrielmmf-auth-todolist.netlify.app/) -->

---

## :scroll: Table of contents

1. [About](#bookmark_tabs-about)
2. [Database diagram](#file_cabinet-database-diagram)

<!-- 1. [About](#bookmark_tabs-about)
2. [Features](#heavy_check_mark-features)
3. [How to use](#crystal_ball-how-to-use)
4. [Database diagram](#file_cabinet-database-diagram)
5. [Technologies](#hammer-technologies)
6. [Services Used](#gear-services-used)
7. [Client Dependencies](#lock-client-dependencies)
8. [Server Dependencies](#closed_lock_with_key-server-dependencies)
9. [Project Roadmap](#round_pushpin-project-roadmap)
10. [Running the project](#dvd-running-the-project)
11. [Contributing](#memo-contributing)
12. [Author](#boy-author)
13. [Links](#link-links)
14. [License](#balance_scale-license) -->

---

## :bookmark_tabs: About

This is my project that allows you to login, logout and create new exercises, with the muscle group of the exercise, difficulty, type of exercise and create custom workouts with existing exercises. In addition, you can plan your week, including the workouts in any day of week that you want.

---

## :heavy_check_mark: Features

The main features of the application are:

- Sign Up
- Login
- Logout
- Create workouts
- Create exercises
- View workouts
- View exercises

---

<!-- ## :crystal_ball: How to use

### 1 - When you access, you will see the Login/SignUp page

![Login image](https://github.com/gabrielmmf/authentication-react-todo-app/blob/main/public/readme/login.png?raw=true)

![Signup image](https://github.com/gabrielmmf/authentication-react-todo-app/blob/main/public/readme/signup.png?raw=true)

### 2 - After the creation of your account, you will see your tasks

#### The completed tasks have a green accent color

![Signup image](https://github.com/gabrielmmf/authentication-react-todo-app/blob/main/public/readme/task_list.png?raw=true)

### 3 - When you create or edit a task, a popup is shown, allowing you to enter the information of the task and submit the changes

![Signup image](https://github.com/gabrielmmf/authentication-react-todo-app/blob/main/public/readme/create_or_edit.png?raw=true) -->

<!--
## :fire: Extra features

- [x] Feature 1
- [x] Feature 2
      -->

---

### :file_cabinet: Database diagram

![Database image](https://github.com/gabrielmmf/workout-planner/blob/main/public/readme/diagram.png?raw=true)

<!-- ### :hammer: Technologies

The following tools were used in the construction of the project:

- [React](https://reactjs.org/)
- [Node.js](https://nodejs.org/)
- [PostgreSQL](https://www.postgresql.org/)

---

## :gear: Services Used

- [Github](https://github.com/) - Code Versioning
- [Netlify](https://www.netlify.com/) - Frontend deploy
- [Cyclic.sh](https://www.cyclic.sh/) - Backend deploy
- [ElephantSQL](https://www.elephantsql.com/) - Database server

---

## :lock: Client dependencies

- [Dotenv](https://www.npmjs.com/package/dotenv)
  - Setup environment variables
- [React-cookie](https://www.npmjs.com/package/react-cookie)
  - Setup browser cookies to store the user session with an authentication token

## :closed_lock_with_key: Server dependencies

- [Bcrypt](https:closed_lock_with_key://www.npmjs.com/package/bcrypt)
  - Password encryption and decryption
- [Express](https://www.npmjs.com/package/express)
  - Backend design
- [Dotenv](https://www.npmjs.com/package/dotenv)
  - Setup environment variables
- [Jsonwebtoken](https://www.npmjs.com/package/jsonwebtoken)
  - Create authentication token
- [PG](https://www.npmjs.com/package/pg)
  - Connection with PostgreSQL
- [Dotenv](https://www.npmjs.com/package/dotenv)
  - Setup environment variables
- [Uuid](https://www.npmjs.com/package/uuid)
  - Unique id generation

--- -->

<!-- ### :round_pushpin: Project roadmap

- [x] Create and model postgres Local Database
  - [x] Create Users and Todos tables
  - [x] Insert first user
  - [x] Insert first todo
- [x] Create Backend
  - [x] Connect to database
  - [x] Create "todos/:userEmail" GET route
  - [x] Create "todos" POST route
    - [x] Generate unique id with uuid
  - [x] Create "todos" PUT route
  - [x] Create "todos/:id" delete route
  - [x] Create "signup" post route
    - [x] Generate hashed password with bcrypt
    - [x] Generate access token with jsonwebtoken
  - [x] Create "login" post route
    - [x] Check hashed password with bcrypt.compare
- [x] Create Main Page
  - [x] Create ListHeader Component
  - [x] Create ListItem Component
  - [x] Create Modal component for editting and creating tasks
- [x] Create Authentication Page
- [x] Setup Cookies

---

### :dvd: Running the Project:

#### You can test the application deployed [here](https://gabrielmmf-auth-todolist.netlify.app/)

#### Or you can run it in your system:

#### 1 - Clone the repository:

```bash
# Clone this repository
$ git clone https://github.com/gabrielmmf/authentication-react-todo-app

# Access the project folder in terminal/cmd
$ cd authentication-react-todo-app
```

#### 2(a) - Run the Frontend:

```bash
$ cd client
# Install the project dependencies
$ npm install
# or
$ yarn install

# Run the development server
$ npm start
# or
$ yarn start
```

#### 2(b) - Run the Backend:

```bash
$ cd server
# Install the project dependencies
$ npm install
# or
$ yarn install

# Run the development server
$ npm run dev
# or
$ yarn dev
```

Open [http://localhost:3000](http://localhost:3000) to access the app in your browser
 -->

---

### :memo: Contributing

Any contributions you make are **greatly appreciated**.

If you have a suggestion that would make this better, please fork the repo and create a pull request. You can also simply open an issue with the tag "enhancement".

After forking the project:

```bash
# Create your Feature Branch:
$ git checkout -b feature/NewFeature
# Commit your change:
$ git commit -m 'Add some Feature'
# Push to the Branch
$ git push origin feature/NewFeature
# Open a Pull Request
```

---

### :boy: Author

<div align="center"> Made with ❤️ by </div>
&nbsp;

<div align="center">
<a href="https://github.com/gabrielmmf">
 <img  width="120px" src="https://avatars.githubusercontent.com/u/77760042?v=4" alt="Gabriel Fialho profile photo"/>
 <br />
 <br />

 <a href="https://github.com/gabrielmmf">
    <img alt="Made by Gabriel Fialho" src="https://img.shields.io/badge/-Gabriel%20Fialho-%237519C1?style=for-the-badge">
  </a>
</div>
&nbsp;
  
 
<div align="center">
    👋🏽 Contact me!
<br/>
<br/>

[![Linkedin Badge](https://img.shields.io/badge/-Gabriel_Fialho-blue?style=flat-square&logo=Linkedin&logoColor=white&link=https://www.linkedin.com/in/gabrielmmfialho/)](https://www.linkedin.com/in/gabrielmmfialho/)

[![Github Badge](https://img.shields.io/badge/-Gabriel_Fialho-000?style=flat-square&logo=Github&logoColor=white&link=https://github.com/gabrielmmf)](https://github.com/gabrielmmf)

</div>

---

### :link: Links

- Deploy on Netlify: https://gabrielmmf-auth-todolist.netlify.app/
- Repository: https://github.com/gabrielmmf/authentication-react-todo-app

---

### :balance_scale: License

Distributed under the MIT License. See [LICENSE.txt](https://github.com/gabrielmmf/authentication-react-todo-app/blob/main/LICENSE.txt) for more information.
