# City Quiz

## About
This app consists in 4 images and in every round you will be asked to match a city to the images. 
You have to select one of the images and see if you selected the correct one. 
Every time you select an image, you'll see an alert telling you if you hit was correct or not. 
For each round you receive a score. 
You can reset your game and start all over again.

### Currently in 
[Step 9](#step-9:-repeat-the-same-steps-for-all-buttons)

### Step 1: Create a project
 - Create a new project 
 - Select iPhone SE as your simulator
 - Open Main.storyboard
 - In View as: select iPhone SE
 - Run the app
 
### Step 2: Add City to the Game 
- Go to Main.Storyboard
- Go to the inspectors panel, and down you have 4 buttons. Click the 3rd.
- In the search bar write label, and drag the label to the middle of the viewController and centre it.
- Double click in the button to edit it’s title and write “London”
- With the label selected, go to your right, to the utilities panel.
- Select the 4th button from the left, the attributes inspector: here is where we can change some attributes of the label
- Go to colour and select Light Gray Color.
- In the alignment section choose center.
- Now select the size inspector, which is the next button the the right 
- Set the size of the label to 150 x35.
- Run the app. We have our city showing.
- Make sure you are in the Main.storyboard
- In your right up you have 2 groups of 3 buttons: in the first one, select the second button.
- That will open the Assistant Editor. Make sure you have Automatic selected.
- Now from the storyboard, hold down the control key and drag from the label to the code file
- Set the name to “cityLabel” and click connect.
- Here in the code file we see a method called viewDidLoad. So this method is called automatically by iOS every time it loads the viewController from the storyboard and it’s ready to put it in the screen.
- So we are going to set here the text of the label to “Barcelona”

### Step 3: Connect Label to code file
- Make sure you are in the Main.storyboard
- In your right up you have 2 groups of 3 buttons: in the first one, select the second button.
- That will open the Assistant Editor. Make sure you have Automatic selected.
- Now from the storyboard, hold down the control key and drag from the label to the code file
- Set the name to “cityLabel” and click connect.
- Here in the code file we see a method called viewDidLoad. So this method is called automatically by iOS every time it loads the viewController from the storyboard and it’s ready to put it in the screen.
- So we are going to set here the text of the label to “Barcelona”

### Setp 4: Buttons and Actions 
- Go to Main.Storyboard
- Go to the inspectors panel, and down you have 4 buttons. Click the 3rd.
- In the search bar write button, and drag the button to the middle of the viewController and centre it.
- Double click in the button to edit it’s title and write “Hit me!”
- Select the button
- Go to the first group of buttons in the top right corner 
- Click the middle button: the assistant editor
- Make sure you have selected Automatic in the jump bar
- Holding the control key, drag from the button to the code file
- Select Action in the connection dropdown
- Name it “showAlert”
- Leave the default value in the Event dropdown
- And in arguments select “None”
- Hit the connect button
- Add the print statement: ```print("Hello world")```
- Run the app

### Step 5: Show popup
- Open ViewController.swift
- Delete the print statement from the "ShowAlert" action
- Add an alert: set it's title to "My first app" and the message to "I'm City 1". In preferredStyle, write a dot and select the option alert.
- Add an action to the alert: set the title to "Awesome", in style write a dot an select "default". In the handler just write ```nil```.
- Add the action to the alert
- Present the alert: set the viewControllerToPresent to alert, animated to true and set completion to nil
- Run the app

### Step 6: If else
- Go to Main.storyboard and set button name to "Barcelona"
- Go back to ViewController.swift 
- Write this code before all code inside showAlert: ```var message = ""```
- write ```if cityLabel.text == "Barcelona" {
            message = "Your are Awesome. I am Barcelona!"
        } else {
            message = "I'm sorry... I'm not \(cityLabel.text!)!"
        }```
- In the alert creation with the message variable:
```let alert = UIAlertController(title: "CityQuiz", message: message, preferredStyle: .alert)```
- Run the app and tap the button.
- Change the cityLabel.text in viewDidLoad to London.
- Run the app and tap the button.

### Step 7: Solving Problems
- Open ViewController.swift file
- Select the name of the IBAction ("showAlert") and substitute it with "showBarcelona"
- Run the app
- Tap the button
- The app crashes
- Look at the log report and see what it says: "unrecognised showAlert".
- Go to the Main.storyboard. 
- Select the button and open the utilities panel.
- Select the connections inspector 
- Disconnect the “Touch Up Inside” event by clicking the X button.
- Reconnect the button with the controller, by holding the control key and dragging to the yellow spot in the storyboard. 
- When you let go, you see a menu with several options. 
- In the section “Sent Events” select "showBarcelona"
- Run the app and tap the button.

### Step 8: Add Images
Go to Main.storyboard

For each button do:
- Select the button
- In the utilities panel, chose the attributes inspector, which is the 4 button from the left
- Remove the title of the button
- In the image dropdown select Barcelona.
- Adjust the button size of the image (146x75)
- Run the app

### Step 9: Repeat the same steps for all buttons
Go to Main.Storyboard and create 3 more buttons

For each button do:
- Select the button
- In the attributes inspector set image to the next city
- In the size inspector set the size to (146x75)
- Open the assistant editor. Make sure it is in the Automatic
- Holding the control key, Drag from the button to the code file
- Select Action in the connection dropdown
- Name it "show" +  name of the city, 
- Leave the default value in the Event dropdown
- And in arguments select “None”
- In the action body create the condition and add the alert.

