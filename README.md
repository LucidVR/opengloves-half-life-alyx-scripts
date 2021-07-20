# OpenGloves Half-Life: Alyx Scripts

Half-Life: Alyx provides the ability to script. OpenGloves uses this ability to provide a force feedback integration with Half-Life: Alyx.

These scripts can be found on the steam workshop, which provides a one-click install. Alternatively, you can download the repository and install the scripts manually.  
In either case, there are some required steps to allow for the force feedback integration to work.

## Required Steps

### 1. Install Half-Life: Alyx Force Feedback Integration Middleman
The role of the middleman is to act as a way for the Half-Life: Alyx scripts to interact with the driver. Installing the program is vital to the force feedback in the game working.
* Navigate to OpenGloves Library Page
  * Ensure that OpenGloves is installed
* Navigate to "Manage My DLC" (This can also be found in Properties->DLC)
   * ![Manage DLCs](https://user-images.githubusercontent.com/39023874/126361363-7132a0ae-035d-45d1-845e-d38db32f8028.png)  


* Install the "OpenGloves - Half-Life: Alyx Force Feedback Integration"  
    * ![Install DLC](https://user-images.githubusercontent.com/39023874/126361319-ab6df0d8-f038-4853-bb40-59fdad5f3843.png)  

When installed, you will have a new launch option when clicking "Launch" on OpenGloves to launch the middleman. It is important to make sure that the middleman is launched before you go to lauch Half-Life: Alyx.

   * ![Launch](https://user-images.githubusercontent.com/39023874/126361235-21bac8f8-e4d0-4de9-9b47-3a63839b4c6c.png)  
   * ![Launch Options](https://user-images.githubusercontent.com/39023874/126361283-3ebb4856-722d-4a03-a20b-44914d392059.png)

## 2. Install Workshop Content
* Navigate to: https://steamcommunity.com/sharedfiles/filedetails/?id=2541197982
* Click "+ Subscribe"
  * The scripts should now install. A restart of the Steam Client (including exiting via the tray icon) may be necessary

## 3. Set Half-Life: Alyx Launch Properties
* Open the Half-Life: Alyx Properties page:
   * ![Half-Life: Alyx Properties](https://user-images.githubusercontent.com/39023874/126360930-fc5a8b15-2504-4544-8cfd-5c111844c4c7.png)
* Add `-condebug` to the launch options
   * ![image](https://user-images.githubusercontent.com/39023874/126361181-fcfd1b31-6a2b-47f0-9ab0-17dba55bc766.png)

Feel free to open an Issue if you run into problems, or join our Discord Server: https://discord.gg/RjV9T8jN2G
