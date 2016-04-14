# Project 3 Evaluation

## Back-End Technology

**Performing.** Good job here setting up a Rails app/API with two models. For next iterations of this application, I would think about how you could reorganize your data so that so much isn't stored in the Snack model. In fact, I imagine that as you build this you will realize that current attributes (e.g. country) may blossom into models themselves. Just something to think about and by no means **THE** way of building out your application.

Also look at my note about `include:` in the `snacks_controller`. It could make accessing information on the front-end a bit easier! [This StackOverflow post](http://stackoverflow.com/questions/9983436/nesting-json-include-in-rails) could be helpful too.

## Front-End Technology

**Performing.** Good implementation of all the Angular we learned in class. Snack create functionality doesn't seem to be working (although not for lack of trying). I left some notes about that in my inline comments (tl;dr - not sure why it's not working but I'm going to look into it).

Also See a custom directive in there. A big refactoring exercise would be to separate different components into their own files. Also, if you notice any other repeated bits of code in your view, think about other custom directives you could build!

## Code Quality

**Performing.** No complaints here! Was easy to read your code. Might be helpful for other people reading your code to include some comments with your longer Angular controller methods. Again, a stretch goal would be to refactor Angular components into separate files so it's even easier to located a given section of your front-end code.

Make sure to look at the code comments I left in your app. [Check them out here]().

## Deployment and Functionality

**Performing.** Your deployed application seems to mirror your local one (although that includes the Create Snack bug). If you're feeling adventurous, try deploying this bad boy on Digital Ocean!

## Planning / Process / Submission

**Performing.** Clear you did plenty of planning based on the docs in the `planning` folder. Would have liked to see a readme, however. It's the first thing anybody looking at your repo will see, and the first place they will look for info on your application. First thing you should do when revisiting this project is to add one. You can include some of the information from your planning docs in there, along with more practical information like a link to your deployed application and installation instructions.
