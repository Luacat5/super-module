# Luacat5's superModule for Roblox
The aim of this module is to enable multiple inheritance in lua through a basic "interface".

## Demo
look at the Testing folder for an example of creating multiple inherited classes

## API Reference

#### class(methods, ...classes) ({ variables }, constructor) -> classData
+ "method" defines the methods to be introduced in this class.
+ "...classes" are the classes the new class will extend. Note you may list as many classes as you want.
+ "variables" defines the variables to be introduced in this class.
+ "constructor" defines an additional constructor to run when the classObject.new is ran.

#### classData.new() -> classObject
+ returns a class object from the given classData