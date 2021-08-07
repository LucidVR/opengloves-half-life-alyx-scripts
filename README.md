# OpenGloves Half-Life: Alyx Scripts

Half-Life: Alyx provides the ability to script. OpenGloves uses this ability to provide a force feedback integration with Half-Life: Alyx.

There are some required steps in order to get this integration to work.  
## Required Steps

## 1. Install Scripts
* The `game` folder of this repository contains the files needed for the integration, and has the same file structure as that of Half-Life: Alyx
  * Download the repository, unzip, and copy the `game` directory into the root `Half Life Alyx` game install directory. When prompted, click "Replace the files in this destination"
![image](https://user-images.githubusercontent.com/39023874/128605473-1f520079-610f-442c-a734-8d151d8663b8.png)
* As a sanity check, you can navigate to `Half-Life Alyx\game\hlvr\scripts\vscripts`. There, you should see `opengloves.lua`
## 2. Set Half-Life: Alyx Launch Properties
* Open the Half-Life: Alyx Properties page:
   * ![Half-Life: Alyx Properties](https://user-images.githubusercontent.com/39023874/126360930-fc5a8b15-2504-4544-8cfd-5c111844c4c7.png)
* Add `-condebug` to the launch options
   ![image](https://user-images.githubusercontent.com/39023874/126361181-fcfd1b31-6a2b-47f0-9ab0-17dba55bc766.png)

### 3. Install Half-Life: Alyx Force Feedback Integration
The role of the middleman is to act as a way for the Half-Life: Alyx scripts to interact with the driver. Installing the program is vital to the force feedback in the game working.
* Navigate to OpenGloves Library Page
  * Ensure that OpenGloves is installed
* Navigate to "Manage My DLC" (This can also be found in Properties->DLC)
   * ![Manage DLCs](https://user-images.githubusercontent.com/39023874/126361363-7132a0ae-035d-45d1-845e-d38db32f8028.png)  


* Install the "OpenGloves - Half-Life: Alyx Force Feedback Integration"  
    * ![Install DLC](https://user-images.githubusercontent.com/39023874/126361319-ab6df0d8-f038-4853-bb40-59fdad5f3843.png)  

When installed, you will have a new launch option when clicking "Launch" on OpenGloves to launch the middleman. It is important to make sure that the middleman is launched before you go to lauch Half-Life: Alyx.  
![Launch](https://user-images.githubusercontent.com/39023874/126361235-21bac8f8-e4d0-4de9-9b47-3a63839b4c6c.png)  
![Launch Options](https://user-images.githubusercontent.com/39023874/126361283-3ebb4856-722d-4a03-a20b-44914d392059.png)

* When launched, you should be presented with a screen which looks like this:
![image](https://user-images.githubusercontent.com/39023874/128605649-af8cf95a-e57f-460c-9460-e195e4803919.png)

* Copy the root `Half Life Alyx` install directory into the path input
  * Click `Save` to save these settings for your next launch

* Clicking `Begin Half-Life: Alyx Integration` to start the force feedback integration
* Launch Half-Life: Alyx and force feedback will be activated

## Troubleshooting
* If you have only one glove built, you might run into issues with the force feedback activating on the wrong hand. If you go to pick up an object and nothing happes, try enable the "Invert Hands" setting in the integration configuration

Feel free to open an Issue if you run into problems, or join our Discord Server: https://discord.gg/RjV9T8jN2G
