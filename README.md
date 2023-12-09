# Luacat5's superModule for Roblox
The aim of this module is to enable multiple inheritance in lua through a basic "interface".

## Demo
look at the Testing folder for more detail.

The following is an example Class:
![alt text](https://github.com/Luacat5/super-module/blob/multiple_inheritance/DemoImages/Example%20Class.png)

+ The "module" table acts as an input for methods of the class.
+ The class function itself is returned using the parameters defined in the API section.
+ Notice that the "module" table, usually used for the class in common existing methods for classes, is not the variable we are returning.

The following is an example Class with multiple inheritance:

![alt text](https://github.com/Luacat5/super-module/blob/multiple_inheritance/DemoImages/Example%20Inherited%20Class.png)

+ The inherited class is initialized the same as a default class.
+ Notice here; the class is defined using the class data of the previous classes as parameters.

## API Reference

#### class(methods, ...classes) ({ variables }, constructor) -> classData
| parameter | input type | function & usage |
| :---- | :---- | :---|
|method | table | defines the methods to be used for the constructor|
| ...classes | classData | the classes the resulting class will inherit methods and variables from|
| variables | table (containing any) | list of variables that the class will introduce|
| constructor| function| a function to be ran after a new object is initialized.| 

#### classData.new() -> classObject
+ returns a class object from the given classData