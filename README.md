# Design and Simulation of Robot Movement Control Using Web Interface and MySQL
The project presents a robot simulation system controlled through a simple web interface. Movement commands and positions are stored in a MySQL database for tracking and analysis.
## Table of content
*[Project Overiew](https://github.com/shoogalmmr/RobotDash#project-overview)*

*[Web Interface](https://github.com/shoogalmmr/RobotDash#web-interface)*

*[Project Components](https://github.com/shoogalmmr/RobotDash/tree/main#project-components)*

*[Project Goals](https://github.com/shoogalmmr/RobotDash/tree/main#project-goals)*

*[Kay Features](https://github.com/shoogalmmr/RobotDash?tab=readme-ov-file#key-features)*

## Project Overview

This project involves the design of an interactive simulation system that allows users to control the movement of a virtual robot through a user-friendly web interface. The robot is visually represented as a green square that moves across the screen based on directional commands such as "right", "left", "forward", "backward" , and "stop".

The system is connected to a MySQL database via phpMyAdmin, where all movement commands issued by the user are recorded, along with the robot's current position represented by horizontal and vertical coordinates. This logging allows for the analysis and monitoring of the robot’s behavior over time.

This project serves as a foundational step toward developing intelligent robot control systems and can be expanded in the future to control a physical robot or integrate additional technologies such as artificial intelligence and path tracking.

## Project Components:

### **1- User Interface (Frontend):**

- Developed using HTML, CSS, and JavaScript.

- Includes directional buttons such as Forward, Backward, Left, Right, and Stop.

- Provides a clear and responsive layout to control the robot intuitively.

### **2- Backend & Database Integration:**

- PHP is used to connect the robot control interface to the database.

- When any control button is clicked on the web interface, the corresponding command is sent to the database.

- The following data is recorded for each command:

```command```: The current direction of the robot.

```position_horizontal```: The robot’s horizontal position.

```position_vertical```: The robot’s vertical position.

```id```: An auto-incremented identifier for each movement.

### **3- Database (MySQL - phpMyAdmin):**

- The database includes a table named ```positions``` that stores all robot movement data.

- The main columns in the table are:

```id```: A unique identifier for each entry.

```command```: The issued command (e.g., "left", "right", "forward").

```position_horizontal```: The robot’s horizontal position.

```position_vertical```: The robot’s vertical position.

### **4- Robot Communication Logic:**

- The robot reads the latest records from the positions table.

- It determines its next move based on the command and updates its horizontal and vertical coordinates accordingly.

- The robot can be programmed using Arduino C, Python, or another suitable microcontroller-based language.

## Project Goals:

- Simplify remote robot control through a user-friendly interface.

- Record and track all movement data for performance analysis.

- Create a scalable system that can be enhanced with additional features (e.g., camera integration or voice control).

## Key Features
- **User-Friendly Interactive Interface**
Allows users to control the robot easily through clear directional buttons.

- **Real-Time Visual Simulation**
The robot is represented by a green square that moves instantly based on user commands.

- **Automatic Data Logging**
Every movement command is recorded along with the robot’s position in a MySQL database for tracking and analysis.

- **Efficient Web-to-Database Integration**
Utilizes PHP and phpMyAdmin to ensure smooth communication and data updates.

- **Movement History Tracking**
Stored data in the positions table allows users to analyze robot behavior over time.

## Technologies Used 
- HTML, CSS, JavaScript

- PHP

- MySQL

- phpMyAdmin

## User Interface
The web page displays a set of control buttons used to direct the movement of a robot. A simulation of the robot is visually represented by a green square that moves on the screen in response to user commands.

<img src= "https://github.com/user-attachments/assets/fe59667a-b353-44f9-ae09-2ecfbcda808b">

## How It Works 

When a user interacts with the web interface and clicks a movement button (e.g., Right, Left, Forward, Backward, or Stop), the system performs the following steps:

1- The selected command is sent to the server using PHP.

2- The system calculates or updates the robot's current position (horizontal and vertical).

3- The command along with the updated position is inserted into the ```positions``` table in the MySQL database.

4- The robot (represented by a green square on the screen) moves accordingly based on the command.

5- The interface remains responsive, allowing real-time interaction.

This logging mechanism ensures that every movement is tracked, recorded, and can be analyzed later for behavior monitoring or debugging.

ebugging.

### Example stored data in ```positions``` table:

<img src= "https://github.com/user-attachments/assets/e651646f-0748-4708-8fd9-e6d432f73b05">


|id	|position_horizontal|position_vertical|command|
|-------|-------|-------|--------|
511 |	-25	| 115 |	right |
510	| -55	| 115 | right |
509	| -60 |	115	| right |
508	| -65 | 115 |	right |
507 | -70 | 115 | stop |

This example demonstrates how each action from the interface is stored in the database, along with its corresponding coordinates. The attached image clearly shows the robot's movement within the interface and how the position updates visually as each command is executed.

##  Database Structure 

The project uses a single table named ```positions``` to store all movement data of the robot. Below is a description of the table and its fields:

Table: ```positions```

Field |	Type | Description |
|--------------------------|-------------------|---------------------------------|
```id```	| INT(11)	| Auto-incremented unique ID for each entry |
```position_horizontal```	| INT(11)	| The horizontal coordinate of the robot |
```position_vertical``` |	INT(11)	| The vertical coordinate of the robot |
```command``` |	VARCHAR(10)	| The direction command (e.g., left, right)|

This table is managed using phpMyAdmin and is connected to the system through PHP. Every time a movement command is issued, a new record is added with the direction and updated position.

## Installation 
Follow the steps below to run the robot control simulation project locally on your machine using XAMPP and phpMyAdmin:

### **Requirements**
- XAMPP (to run Apache and MySQL)

- A modern web browser (e.g., Chrome, Firefox)

### **Setup Instructions**
**Step 1: Start XAMPP**

1- Open XAMPP Control Panel.

2- Start both Apache and MySQL modules.

**Step 2: Create the Database**

1- Open your browser and go to http://localhost/phpmyadmin

2- Create a new database, e.g., MovableDB.

3- Import the provided SQL structure:

- Go to the Import tab.

- Choose the positions.sql file https://github.com/shoogalmmr/RobotDash/blob/main/positions.sql or manually copy the code inside it to create the positions table in the database.

**Step 3: Place Project Files**

Copy the entire robotcontrol/ folder https://github.com/shoogalmmr/RobotDash/tree/main/robotcontrol (which contains the following files) into the htdocs directory inside your XAMPP installation:

*index.html, styles.css, script.js, save_position.php, get_last_position.php, db_config.php*

**Step 4: Configure Database Connection**

Open the db_config.php file https://github.com/shoogalmmr/robotcontrol/db_config.php and ensure that the database connection settings are correctly configured based on your local environment.

*Note: Make sure that the database name used in this file matches exactly the name of the database you created in phpMyAdmin (e.g., MovableDB). Otherwise, the connection will not work properly.*


**Step 5: Run the Project**
Open your browser and go to:
http://localhost/robotcontrol/index.html

You should now see the robot control interface. Try clicking movement buttons and watch the robot move while the position is saved in the database.

*Test It*
Open phpMyAdmin and check the positions table to verify that commands and positions are being recorded correctly.


##  Future Improvements
- **Integrate with a Physical Robot Using Arduino or Raspberry Pi**
Transform the simulation into a real-world robot control system.

- **Add Artificial Intelligence Capabilities**
Enable autonomous decision-making, such as obstacle avoidance and path following.

- **Real-Time Tracking with GPS or Map Integration**
Monitor the robot’s location accurately in real environments.

- **Analytics Dashboard**
Display charts and statistics about robot movements and command frequency.





