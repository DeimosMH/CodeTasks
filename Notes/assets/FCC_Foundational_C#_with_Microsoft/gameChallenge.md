Challenge-project-Create-methods-in-CSharp-main.zip

- The code declares the following variables:
    - Variables to determine the size of the Terminal window.
    - Variables to track the locations of the player and food.
    - Arrays `states` and `foods` to provide available player and food appearances
    - Variables to track the current player and food appearance

- The code provides the following methods:
    - A method to determine if the Terminal window was resized.
    - A method to display a random food appearance at a random location.
    - A method that changes the player appearance to match the food consumed.
    - A method that temporarily freezes the player movement.
    - A method that moves the player according to directional input.
    - A method that sets up the initial game state.

- The code doesn't call the methods correctly to make the game playable. The following features are missing:
    - Code to determine if the player has consumed the food displayed.
    - Code to determine if the food consumed should freeze player movement.
    - Code to determine if the food consumed should increase player movement.
    - Code to increase movement speed.
    - Code to redisplay the food after it's consumed by the player.
    - Code to terminate execution if an unsupported key is entered.
    - Code to terminate execution if the terminal was resized.
    
// ----------

Check if the player consumed the food

    Create a method that uses the existing position variables of the player and food
    The method should return a value
    After the user moves the character, call your method to determine the following:
        Whether or not to use the existing method that changes player appearance
        Whether or not to use the existing method to redisplay the food

Check your work

To validate that your code satisfies the specified requirements, complete the following steps:

    Use Visual Studio Code to build and run your app.

    Note

    You can exit the verification test before completing all of the verification steps if see a result that does not satisfy the specification requirements. To force an exit from the running program, in the Terminal panel, press Ctrl-C. After exiting the running app, complete the edits that you believe will address the issue you are working on, save your updates to the Program.cs file, and then re-build and run your code.

    At the Terminal command prompt, press directional keys to move the player.

    Move the player across the displayed food string.

    Verify that a new food string is displayed.

    Verify that the player appearance changes depending on which food string was consumed.

Once you've validated the results for this exercise, proceed to the next exercise in this challenge.

// ----------

Check if the player should freeze

    Create a method that checks if the current player appearance is (X_X)
    The method should return a value
    Before allowing the user to move the character, call your method to determine the following:
        Whether or not to use the existing method that freezes character movement
    Make sure the character is only frozen temporarily and the player can still move afterwards

Add an option to increase player speed

    Modify the existing Move method to support an optional movement speed parameter
    Use the parameter to increase or decrease right and left movement speed by 3
    Create a method that checks if the current player appearance is (^-^)
    The method should return a value
    Call your method to determine if Move should use the movement speed parameter

Check your work

To validate that your code satisfies the specified requirements, complete the following steps:

    Enable the optional parameters.

    Use Visual Studio Code to build and run your app.

    Note

    You can exit the verification test before completing all of the verification steps if see a result that does not satisfy the specification requirements. To force an exit from the running program, in the Terminal panel, press Ctrl-C. After exiting the running app, complete the edits that you believe will address the issue you are working on, save your updates to the Program.cs file, and then re-build and run your code.

    At the Terminal command prompt, press directional keys to move the player.

    Move the player across the displayed food string.

    Verify that a new food string is displayed.

    Verify that the player appearance changes depending on which food string was consumed.

    Verify that movement is temporarily stopped when the player appearance is (X_X).

    Verify that left and right movement is faster in the correct directions when the player appearance is (^-^).

    Press a nondirectional key to terminate the program.

    Disable the optional movement speed parameter and rerun the app.

    Verify that movement is normal when the player appearance is (^-^).

Congratulations if you succeeded in this challenge!