*** Settings ***
Documentation    PROBLEM:
...              You want to output a text message or variable to the log generated by Robot Framework.
...              DISCUSSION:
...              Congratulations!  You have created your first Robot Framework script which outputs
...              a text message and a variable to the log and also the console.
...              This recipe only using keywords from BuiltIn standard library so there is no Library import.
Force Tags       py3.7    py3.8    py3.9

*** Variables ***
${recipe}         Recipe 1.1 Hello World Logging
${level}          Beginner
${category}       Internal Library: BuiltIn
${name}           Alan Turing

*** Test Cases ***
Sending Ouput To Log and Console
    [Documentation]    Output variables & text messages to the log, console or both.
    Log Variables
    Log    Hello World!
    Log    Hello ${name}!    console=yes
    Log To Console    Hello World again, this time only output to the console.
