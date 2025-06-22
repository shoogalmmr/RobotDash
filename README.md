## Overview
This project involves the creation of a dynamic web-based control panel that allows users to control a robot's movement in real time through interactive directional buttons. The system is seamlessly integrated with a MySQL database using phpMyAdmin, where it records each movement command along with the robot's horizontal and vertical position



## Interface
The web page displays a set of control buttons used to direct the movement of a robot. A simulation of the robot is visually represented by a green square that moves on the screen in response to user commands.



<img src= "https://github.com/user-attachments/assets/fe59667a-b353-44f9-ae09-2ecfbcda808b" width="800" height="400">


## Project Components:
### **1- User Interface (Frontend):**

- Developed using HTML, CSS, and JavaScript.

- Includes directional buttons such as Forward, Backward, Left, Right, and Stop.

- Provides a clear and responsive layout to control the robot intuitively.

### **2- Backend & Database Integration:**

- PHP is used to connect the robot control interface to the database.

- When any control button is clicked on the web interface, the corresponding command is sent to the database.

- The following data is recorded for each command:

command: The current direction of the robot.

position_horizontal: The robot’s horizontal position.

position_vertical: The robot’s vertical position.

id: An auto-incremented identifier for each movement.

### **3- Database (MySQL - phpMyAdmin):**

- The database includes a table named positions that stores all robot movement data.

- The main columns in the table are:

id: A unique identifier for each entry.

command: The issued command (e.g., "left", "right", "forward").

position_horizontal: The robot’s horizontal position.

position_vertical: The robot’s vertical position.

## قاعده البيانات 
عند تحريك الروبوت يقوم بتخزين اتجاهات تحركه . فمثلا قمت بتحريكه لليمين فقام بتخزين حركته و موقعه الاخير في قاعده البيانات

<img src= "https://github.com/user-attachments/assets/e651646f-0748-4708-8fd9-e6d432f73b05" width="800" height="400">
<img src= "https://github.com/user-attachments/assets/e6ab7715-0a05-4903-be6b-72350debe775" width="800" height="400">

## Project Goals:

- Simplify remote robot control through a user-friendly interface.

- Record and track all movement data for performance analysis.

- Create a scalable system that can be enhanced with additional features (e.g., camera integration or voice control).

## Key Features:

- Interactive and responsive control panel.

- Real-time data storage and retrieval.

- Future-ready architecture for integration with AI or mobile applications.
