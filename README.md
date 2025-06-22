# Design and Simulation of Robot Movement Control Using Web Interface and MySQL
The project presents a robot simulation system controlled through a simple web interface. Movement commands and positions are stored in a MySQL database for tracking and analysis.
## Table of content
*[Project Overiew](https://github.com/shoogalmmr/RobotDash#project-overview)*

*[Web Interface](https://github.com/shoogalmmr/RobotDash#web-interface)*

*[Project Components](https://github.com/shoogalmmr/RobotDash/blob/main/README.md#project-components)*

*[Project Goals](https://github.com/shoogalmmr/RobotDash/tree/main#project-goals)*

*[Kay Features](https://github.com/shoogalmmr/RobotDash?tab=readme-ov-file#key-features)*

## Project Overview

This project involves the design of an interactive simulation system that allows users to control the movement of a virtual robot through a user-friendly web interface. The robot is visually represented as a green square that moves across the screen based on directional commands such as "right", "left", "forward", "backward" , and "stop".

The system is connected to a MySQL database via phpMyAdmin, where all movement commands issued by the user are recorded, along with the robot's current position represented by horizontal and vertical coordinates. This logging allows for the analysis and monitoring of the robot’s behavior over time.

This project serves as a foundational step toward developing intelligent robot control systems and can be expanded in the future to control a physical robot or integrate additional technologies such as artificial intelligence and path tracking.

## Web Interface
The web page displays a set of control buttons used to direct the movement of a robot. A simulation of the robot is visually represented by a green square that moves on the screen in response to user commands.

<img src= "https://github.com/user-attachments/assets/fe59667a-b353-44f9-ae09-2ecfbcda808b">

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

#### Example 

When the robot is moved, each movement direction along with its latest position is stored in the database.
For example, if the robot is moved to the right, the system records this command (right) along with the updated horizontal and vertical positions in the ```positions```table.
This serves as a clear example of how every action taken through the control interface is logged and tracked in the database for monitoring and analysis.

Example stored data:

<img src= "https://github.com/user-attachments/assets/e651646f-0748-4708-8fd9-e6d432f73b05">
<img src= "https://github.com/user-attachments/assets/e6ab7715-0a05-4903-be6b-72350debe775">

### **4- Robot Communication Logic:**

- The robot reads the latest records from the positions table.

- It determines its next move based on the command and updates its horizontal and vertical coordinates accordingly.

- The robot can be programmed using Arduino C, Python, or another suitable microcontroller-based language.


## Project Goals:

- Simplify remote robot control through a user-friendly interface.

- Record and track all movement data for performance analysis.

- Create a scalable system that can be enhanced with additional features (e.g., camera integration or voice control).

## Key Features:

- Interactive and responsive control panel.

- Real-time data storage and retrieval.

- Future-ready architecture for integration with AI or mobile applications.
