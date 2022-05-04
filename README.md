# pico-project-init

The goal of this script is to make it easy to generate new RP2040 projects from the commandline. While there is a great GUI tool from Raspberry Pi,
this simply creates the basic framework for your project to get started. My hope is that it helps avoid some of the confusion with setting up a new RP2040
project from the commandline using the Pico SDK instructions.

### Usage ###

To use this script, it's important to know the parameters for this to work successfully.

1. You need to make sure you clone down the [Pico SDK]() to the same directory level that your project will be stored. This script will rely on that being the case.
2. Clone down this repo in the same directory the Pico SDK is cloned to. Then move the `init_pico_project.sh` file outside the repo directory.
3. You will need to pass in your project name as an argument into the shell script `./init_pico_project.sh my_projects` 
4. finally, `cd my_project` and type `ls` to make sure there is a `CMakeLists.txt` and `pico_sdk_import.cmake` file in the project directory.

You're now good to go on your pico project!

### Troubleshooting 

You may encounter where you use a project name with a space in it, you will need to either use a `_` or a `-` between the words of your project name. Depending on your system, it might support escape characters to get the space in between each word.

### Contributing

If you want to help expand this, feel free to branch and submit a PR! Anything that could add options or make this more robust is definitely welcome.

### Questions?

Open an issue and I'll try to answer as best as possible!
