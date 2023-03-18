# CastoPro - About the job
- **Task:** Find an error on the page
- **Page:** [CastoPro - loyalty program for professionals | Castorama](https://castopro.castorama.pl/pl/home)
- **Customer:** [SigmaCEM Analytics](https://sigmacem.com/)
- **Environment:** Google Chrome 110.0.5481.100 in Ubuntu 20.04.4 LTS
- **Timeframe:** 48h
- **End date:** 2023-03-01

# Additional information
- Due to the lack of requirements for a specific testing environment and a responsive version, the most popular web browser was chosen.
- It was not clear from the description of the task whether you should test only one page with this exact address, or the entire process of registering for the loyalty program.
- When testing the page, I assumed it was the whole site, but I will only mention that on main page I noticed only one small technical error.

# Test cases
## Main page
### #1: The element `<div class="container">` was not closed
**Description:** In the code of the page `/pl/home` the element `<div class="container">` was not properly closed with `</div>`.

## Registration
### #2: No information about required fields during registration
**Description:** On page `/pl/register` there are no clearly marked required fields.

**Steps to reproduce:**
1. Open page `/pl/register`.

**Actual result:** No information about required fields.

**Expected result:** Required fields are clearly marked (e.g. asterisks with a legend).

**Screenshot:**

![CastoPro02](https://raw.githubusercontent.com/lukmarcus/Today-I-Learned/main/Test_Case_Studies/CastoPro/02.png)

### #3: The registration page does not check all required fields at once
**Description:** Page `/pl/register` does not check all required fields at once. The `E-mail` is checked as first, then the phone number (`Telefon`) and finally the first name (`Imię`) with the last name (`Nazwisko`).

**Steps to reproduce:**
1. Open page `/pl/register`.
2. Click the button `DALEJ` (without filling in the fields).
3. Fill the `E-mail` field with e-mail address (e.g. `castorama@gmail.com`).
4. Click the button `DALEJ`.
5. Fill the `E-mail` field with e-mail address (e.g. `castorama@gmail.com`). 
6. Fill the Phone number field (`Telefon`) with phone number (e.g. `123456780`).
7. Click the button `DALEJ`.

**Actual result:** Each subsequent error message applies to only one field.

**Expected result:** All messages regarding incorrectly completed fields appear at once.

**Screenshots:**

![CastoPro03a](https://raw.githubusercontent.com/lukmarcus/Today-I-Learned/main/Test_Case_Studies/CastoPro/03a.png)
![CastoPro03b](https://raw.githubusercontent.com/lukmarcus/Today-I-Learned/main/Test_Case_Studies/CastoPro/03b.png)
![CastoPro03c](https://raw.githubusercontent.com/lukmarcus/Today-I-Learned/main/Test_Case_Studies/CastoPro/03c.png)

### #4: The correctness of the e-mail on registration page is validated only after entering the phone number
**Description:** On page `/pl/register` the correctness of the written e-mail is validated only after entering the phone number. Before that, any e-mail in the format `x@x.xx` is correct:
- wrong domain (`.cmo` instead of `.com`, `.lp` instead of `.pl`, also `.comm`)
- domains that don't exist (e.g. `@gmail.com.pl`)

**Steps to reproduce:**
1. Open page `/pl/register`.
2. Fill the `E-mail` field with incorrect e-mail address (e.g. `castorama@gmail.cmo`). 
3. Click the button `DALEJ`.
4. Fill the `E-mail` field with incorrect e-mail address (e.g. `castorama@gmail.cmo`). 
5. Fill the Phone number field (`Telefon`) with phone number (e.g. `123456780`).
6. Click the button `DALEJ`.

**Actual result:** Information about an incorrect e-mail appears only after entering the phone number.

**Expected result:** Information about an incorrect e-mail appears even without entering a phone number.

**Screenshot:**

![CastoPro04](https://raw.githubusercontent.com/lukmarcus/Today-I-Learned/main/Test_Case_Studies/CastoPro/04.png)

## Login
### #5: The login page does not check both login fields at once
**Description:** Page `/pl/auth/login` does not check both fields at once. The password `Hasło` is checked as first and then the e-mail (`Adres e-mail`).

**Steps to reproduce:**
1. Open page `pl/auth/login`.
2. Click login button `ZALOGUJ MNIE`.
3. Enter any password in the `Hasło` field.
4. Click login button `ZALOGUJ MNIE`.

**Actual result:** Error message about wrong email or password.
**Expected result:** Error messages for both email and password fields.

**Screenshots:**

![CastoPro05a](https://raw.githubusercontent.com/lukmarcus/Today-I-Learned/main/Test_Case_Studies/CastoPro/05a.png)
![CastoPro05b](https://raw.githubusercontent.com/lukmarcus/Today-I-Learned/main/Test_Case_Studies/CastoPro/05b.png)
  
### #6: Two formats of login errors
**Description:** Login error messages on page `/pl/auth/login` have different graphical formats.

**Steps to reproduce:**
1. Open page `pl/auth/login`.
2. Enter e-mail address in the `Adres E-mail` field (e.g. `castorama@gmail.com`). 
3. Click login button `ZALOGUJ MNIE` (without entering any password in the `Hasło` field).

**Actual result:** Two error messages in different formats.

**Expected result:** Two identical looking messages.

**Screenshot:**

![CastoPro06](https://raw.githubusercontent.com/lukmarcus/Today-I-Learned/main/Test_Case_Studies/CastoPro/06.png)

### #7: Misleading error message during the password recovery when an e-mail is not in the database
**Description:** On page `/pl/auth/login` when using password recovery option, if a valid e-mail is entered, but one that is not in the database, an error appears that `this is not a valid e-mail`.

**Steps to reproduce:**
1. Open page `/pl/auth/login`.
2. Click the button `NIE PAMIĘTAM HASŁA` under the login button `ZALOGUJ MNIE`.
3. Enter e-mail address (that is not in the database) in the `Adres E-mail` field (e.g. `castorama@gmail.com`).
4. Click the send button `WYŚLIJ`.

**Actual result:** Not a valid e-mail message.

**Expected result:** A message that if such an e-mail is in the database, a link has been sent.

**Screenshot:**

![CastoPro07](https://raw.githubusercontent.com/lukmarcus/Today-I-Learned/main/Test_Case_Studies/CastoPro/07.png)

## Responsive design
### #8: The paragraph `Od 25 lat wspieramy Profesjonalistów` disappears below the 992px width
**Description:** Page `/pl/home` below 992px does not show the entire paragraph `Od 25 lat wspieramy Profesjonalistów`.

**Steps to reproduce:**
1. Open page `/pl/home`.
2. Change the page width below 992px.

**Actual result:** The entire paragraph disappears.

**Expected result:** The paragraph adjusts to the new width.

**Screenshot above 992px width:**

![CastoPro08a](https://raw.githubusercontent.com/lukmarcus/Today-I-Learned/main/Test_Case_Studies/CastoPro/08a.png)

**Screenshot below 992px width:**

![CastoPro08b](https://raw.githubusercontent.com/lukmarcus/Today-I-Learned/main/Test_Case_Studies/CastoPro/08b.png)

### #9:  The menu background is too short between 992px and 1098px width
**Description:** On pages with a width between 992px and 1098px, the background of the menu is too small for the registration link `REJESTRACJA`.

**Steps to reproduce:**
1. Open page `/pl/home`.
2. Change the page width to between 992px and 1098px.

**Actual result:** Menu is too small for the word `REJESTRACJA`.

**Expected result:** The width of the menu includes all items.

**Screenshot:**

![CastoPro09](https://raw.githubusercontent.com/lukmarcus/Today-I-Learned/main/Test_Case_Studies/CastoPro/09.png)

### #10: The menu button overlaps the website logo below 284px width
**Description:** On pages with a width below 284px the top menu button overlaps the website logo.

**Steps to reproduce:**
1. Open page `/pl/home`.
2. Change the page width below 284px.

**Actual result:** The menu button overlaps the website logo.

**Expected result:** The website logo shrinks or menu button is below website logo.
  
**Screenshot:**

![CastoPro10](https://raw.githubusercontent.com/lukmarcus/Today-I-Learned/main/Test_Case_Studies/CastoPro/10.png)

### #11: Opening and closing the menu is not a button, but narrow elements
**Description:** On pages with a width below 992px, there is a menu button in the upper right corner of the page instead of a full menu. This "button" is not an area, but consists of three dashes that are hard to hit with the cursor. When the menu is open, there is the "X" with the same problem which closes the menu.

**Steps to reproduce:**
1. Open page `/pl/home`.
2. Change the page width below 992px.

**Actual result:** Open and close menu items are not so easy to click.

**Expected result:** Open and close menu items are buttons or larger areas that are easier to click.

**Screenshots:**

![CastoPro11a](https://raw.githubusercontent.com/lukmarcus/Today-I-Learned/main/Test_Case_Studies/CastoPro/11a.png)
![CastoPro11b](https://raw.githubusercontent.com/lukmarcus/Today-I-Learned/main/Test_Case_Studies/CastoPro/11b.png)

## Website usability
### #12: The regulations do not scale below 456px width
**Description:** The page `/pl/castopro-regulations` stops scaling below 456px width and the table sticks out of the visible area.

**Steps to reproduce:**
1. Open page `/pl/castopro-regulations`.
2. Change the page width below 456px.

**Actual result:** The content of the page extends beyond the visible area.

**Expected result:** The page adapts to the width of the screen.

**Screenshot:**

![CastoPro12](https://raw.githubusercontent.com/lukmarcus/Today-I-Learned/main/Test_Case_Studies/CastoPro/12.png)

### #13: The privacy policy do not scale below 382px width
**Description:** The page `/pl/privacy-policy` stops scaling below 382px width and the table sticks out of the visible area.

**Steps to reproduce:**
1. Open page `/pl/privacy-policy`.
2. Change the page width below 382px.

**Actual result:** The content of the page extends beyond the visible area.

**Expected result:** The page adapts to the width of the screen.

**Screenshot:**

![CastoPro13](https://raw.githubusercontent.com/lukmarcus/Today-I-Learned/main/Test_Case_Studies/CastoPro/13.png)
