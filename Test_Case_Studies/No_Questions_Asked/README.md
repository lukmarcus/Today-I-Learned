# No Questions Asked - About the job
- **Game:** [A neo-noir point&click thriller about a delivery service for illicit goods (Steam)](https://store.steampowered.com/app/2259180/No_Questions_Asked/)
- **Developer & publisher:** The Troubadour Collective
- **Original discussions topic:** [Bug reports](https://steamcommunity.com/app/2259180/discussions/0/3767858179341905834/)

![NQA](/Test_Case_Studies/No_Questions_Asked/00.jpg)

# Additional information
- **System information:** [Exported from Steam](/Test_Case_Studies/No_Questions_Asked/System_information.md)
- **Version:** 1.1.67
- **Resolution:** 1024x768 (fullscreen)

# Test cases
### Issue #01
**Summary:** Cursor doesn't change color after clicking the pin board.

**Steps to reproduce:**
1. Start a new game.
2. Click on the pinboard.
3. Don't move the cursor.

**Actual result:** Cursor is still golden and changes color to silver for a moment after clicking.

**Expected result:** Cursor changes color to silver.

**Video:**

[![NQA01](/Test_Case_Studies/No_Questions_Asked/01.png)](https://github.com/lukmarcus/Today-I-Learned/raw/main/Test_Case_Studies/No_Questions_Asked/01.mp4)

### Issue #02
**Summary:** Hero slides instead of walking when holding the mouse button and slowly dragging.

**Steps to reproduce:**
1. Start a new game.
2. Click on the hero and hold the mouse button.
3. Slowly move mouse.

**Actual result:** Hero slides with no or almost no animation.

**Expected result:** Hero is walking around.

**Video:**

[![NQA02](/Test_Case_Studies/No_Questions_Asked/02.png)](https://github.com/lukmarcus/Today-I-Learned/raw/main/Test_Case_Studies/No_Questions_Asked/02.mp4)

### Issue #03
**Summary:** Cursor doesn't change color after moving out of the interactive object (with keys).

**Steps to reproduce:**
1. Start a new game.
2. Move the cursor over the cabinet to change its color to golden (as an interactive object),
3. Move the hero with keys until the screen moves.

**Actual result:** The mouse color stays golden until moves to another interactive object.

**Expected result:** The mouse cursor changes color after moving out of the interactive object.

**Video:**

[![NQA03](/Test_Case_Studies/No_Questions_Asked/03.png)](https://github.com/lukmarcus/Today-I-Learned/raw/main/Test_Case_Studies/No_Questions_Asked/03.mp4)

### Issue #04
**Summary:** Cursor can't be moved with the touchpad when moving the hero with keys.

**Steps to reproduce:**
1. Start a new game.
2. Move the hero with keys (hold).
3. Move the cursor with the touchpad.

**Actual result:** The mouse cursor is not moving.

**Expected result:** The mouse cursor moves on the screen.

### Issue #05
**Summary:** Game information messages are over the in-game menu window.

**Steps to reproduce:**
1. Start a new game.
2. Move right to the screen with elevator.
3. Press ESC when the information message appears.

**Actual result:** Information messages are over the in-game menu window.

**Expected result:** In-game menu window is over information messages.

**Screenshots:**

![NQA05a](/Test_Case_Studies/No_Questions_Asked/05a.png)
![NQA05b](/Test_Case_Studies/No_Questions_Asked/05b.png)

### Issue #06
**Summary:** In-game menu window opens under the game map.

**Steps to reproduce:**
1. Start a new game.
2. Move to the garage and pick package.
3. Open the map with TAB.
4. Press ESC to open the in-game menu.

**Actual result:** In-game menu opens under the game map.

**Expected result:** The map is closed or the in-game menu appears over the game map.

**Screenshot:**

![NQA06](/Test_Case_Studies/No_Questions_Asked/06.png)

### Issue #07
**Summary:** Can't move hero (with keys) when the mouse cursor is on game information text.

**Steps to reproduce:**
1. Start a new game.
2. Move the cursor over game information about moving.
3. Move the hero with keys.

**Actual result:** Hero doesn't move.

**Expected result:** Hero moves.

### Issue #08
**Summary:** In-game text message about the game map during the intro.

**Steps to reproduce:**
1. Start a new game.
2. During the intro press TAB.

**Actual result:** In-game message about the map appears during the intro.

**Expected result:** No in-game messages during the intro.

**Video:**

[![NQA09](/Test_Case_Studies/No_Questions_Asked/08.png)](https://github.com/lukmarcus/Today-I-Learned/raw/main/Test_Case_Studies/No_Questions_Asked/08.mp4)

### Issue #09
**Summary:** Can't choose dialog options with "space".

**Steps to reproduce:**
1. Start a new game.
2. Take the package and go to the first delivery.
3. Go right until the dialog starts.

**Actual result:** Dialog options can't be chosen with "space". I don't know which key can be used.

**Expected result:** Dialog options can be chosen with "space". Till now "space" worked in one-line dialogs. I can use arrows and WS keys to move through dialog options.

### Issue #10
**Summary:** Achievement 'Same as always' unlocked on day 2.

**Steps to reproduce:**
Unknown, impossible to replicate.

**Information:** I loaded the game from the main menu. I was in the bar on day 2. Achievement 'Same as always" popped up. According to the description ('Spend every afternoon at the bar'), I shouldn't get it there. The game was probably loaded a few times so days don't count properly.

### Issue #11
**Summary:** No visual drug effect on Day 2 after quick clicking dialog options.

**Steps to reproduce:**
1. Load Day 2.
2. Pick up the package and go to delivery.
3. Talk to the man in a white coat.
4. Quickly click dialog options to get the drug.

**Actual result:** No visual drug effect on screen.

**Expected result:** Visual drug effect on screen.

**Video:**

[![NQA11](/Test_Case_Studies/No_Questions_Asked/11.png)](https://github.com/lukmarcus/Today-I-Learned/raw/main/Test_Case_Studies/No_Questions_Asked/11.mp4)

### Issue #12
**Summary:** Problem with the 'Skip' button in Credits.

**Steps to reproduce:**
1. Open Credits from the main menu.

**Actual result:** The button 'Skip' is not clickable as a whole. Only the top of the word works?

**Expected result:** The button 'Skip' should work with no problem.

**Video:**

[![NQA12](/Test_Case_Studies/No_Questions_Asked/12.png)](https://github.com/lukmarcus/Today-I-Learned/raw/main/Test_Case_Studies/No_Questions_Asked/12.mp4)
