# City Quiz

## About
This app consists in 4 images and in every round you will be asked to match a city to the images. 
You have to select one of the images and see if you selected the correct one. 
Every time you select an image, you'll see an alert telling you if you hit was correct or not. 
For each round you receive a score. 
You can reset your game and start all over again.

### Currently in 
[Step 4](#step-4:-buttons-and-actions)

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
