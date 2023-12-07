# Luacat5's superModule for Roblox
The aim of this module is to enable multiple inheritance in lua through a basic "interface".



## Demo

Insert gif or link to demo

First create a basic class:

step1.png

![Alt text](relative%20path/to/step1.png?raw=true "Title")

next use the Super.init method:

![Alt text](relative%20path/to/step2.png?raw=true "Title")

then finally use the Super.new method to create a class with all the variables in the super class, and all the methods in our inheriting class.

![Alt text](relative%20path/to/step3.png?raw=true "Title")

Done!
## API Reference

#### Super.init(class, superClass) {}
Configures the inheriting class to inherit all of the methods of the super class. The table at the end coresponds to a list of methods to not include. By default:

    {

        new = false 

    }



#### super.new(class)
to create a new instance of class with inherited variables from superClass.

#### Super(class, method)(variables, ... )
calls the method from the superClass given the variables.