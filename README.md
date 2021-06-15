# Enigma Self Assessment

## Functionality

While all tests are passing for each tested method within a class, there seems to be some fault in the functionality when 
enigma is run with the text files. It seems that there may be an issue with my decrypt method that is preventing the text file
from being decrypted properly. 

## Object Oriented Programming 

My project is constructed with 2 classes and a module: a Key class, an Enigma class, and a Shiftable module. The Key class 
demonstrates single responsiblity by being the only component within the project that is responsible for generating a random
5 digit key. The Enigma class contains both the information and functionality of the encryption and decryption process, as well
as the information needed for the shifting process. The shifting functionality lives in the Shiftable module, and holds 
functions that are able to communicate and live within the Enigma class for proper and cleaner functionality. 

## Ruby Conventions and Mechanics

Indentation, spacing, syntax and other conventions remain consistent throughout Enigma, and I am able
to explain functionality line by line. 

## Test Driven Development

Each of my tests are set up to test a function as specificially as possible. SimpleCov reports 100% test coverage across 
each class and module, though there is a helper method within the Enigma class that is not being tested specifically. 



