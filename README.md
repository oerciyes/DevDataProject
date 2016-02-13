# DevDataProject
Course Project for Coursera Developing Data Products Course


This repository contains the files and the documentation for the Expected Time Calculator application. The files for the app are:

- ui.R 
- server.R


ABOUT THE EXPECTED TIME CALCULATION TECHNIQUE (a.k.a the PERT Technique)
------------------
PERT (program evaluation review technique) is a technique that uses optimistic, pessimistic, and realistic time estimates to calculate the expected time for a particular task. This technique helps you obtain a better time estimate when you are uncertain as to how much time a task will require to be completed.

The optimistic (o) and pessimistic (p) times reflect the minimum and maximum possible periods of time for an activity to be completed. The realistic time (r), or most likely time, reflects the project manager’s “best guess” of the amount of time the activity will require for completion. Once each of these estimates is made for an activity, an expected completion time (ET) can be calculated for that activity. 

Because the expected completion time should be closer to the realistic time (r), the realistic time is typically weighted 4 times more than the optimistic (o) and pessimistic (p) times. Once you add these values together, that sum must be divided by 6 to determine the ET. 

This equation is shown in the following formula:
ET = (o + 4r + p) /6

where

ET = expected time for the completion for an activity
o = optimistic completion time for an activity
r = realistic completion time for an activity
p = pessimistic completion time for an activity



ABOUT THE APP
------------------
The Expected Time Calculator app is published at this address:

https://oerciyes.shinyapps.io/ExpectedTimeCalculator/

This is a very simple app. In order to calculate the expected time for a business task, just enter the optimistic (shortest), pessimistic (longest), and the realistic time that you would expect the task to take. The app will calculate the expected time for the task, using the appropriate formula. 

Here you can find a presentation that provides more detailed information regarding the app and the business term Expected Time:

http://rpubs.com/oerciyes/152487
