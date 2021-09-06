**Instabug Challenge – Ahmed Elnashar**

**Part 1 – Yalla Kora test plan**

The points to be tested for will be separated into high, medium, and low priority according to their possible business impact.

**High priority:**

- General:

- Check navigation of bottom bar buttons (Home, matches, competitions, favorites, news)
- Check that the app uses correct date and time according to the device in use

- Home page:

- Check correct date is displayed in &quot;today&#39;s matches&quot; section
- Ensuring correct matches are displayed
- Ensuring times for matches are displayed correctly according to the device&#39;s time zone
- Check news items displayed (in top scrolling widget and bottom section) are correct and current
- Check navigation is correct (clicking on a concluded match, clicking on a live match, clicking on an upcoming match, clicking &quot;all matches&quot;, clicking on a news item, clicking on &quot;all news&quot;)

- Matches page:

- Check correct matches are displayed according to current date

- Competitions page:

- Check display and order (if applicable) of competitions
- Check navigation when clicking on a competition

- Favorites page:

- Check display of favorites page when user has 0, 1, \&gt;1 favorites added
- Check navigation when clicking on matches in favorites
- Check add and edit favorites buttons

- News page:

- Check that the news items displayed are correct and current (according to the device&#39;s date and time zone)

**Medium priority:**

- General:

- Check display of &quot;live&quot; tag on live matches
- Check behavior of &quot;back&quot; arrow and Android hardware back button throughout the app
- Check behavior on WiFi and mobile data
- Check behavior when device loses Internet connection

- Home page:

- Check pagination bubbles under news items and scrolling for news items are working correctly

- Matches page:

- Check functionality of filter
- Check scrolling on date selector slider
- Check navigation when clicking on a match

- Competitions page:

- Check navigation of sub-pages and tabs (after selecting a competition)

- News page:

- Check display of news items
- Check scrolling functionality of new slider, and functionality of pagination bubbles

**Low priority:**

- Home page:

- Ensuring that the TV channels broadcasting the matches are correct.
- Check truncation for long news titles
- Check pull to refresh functionality

- News page:

- Check &quot;other sports&quot; button functionality

**Part 2 – Yalla Kora defects**

Defect 1:–

| Summary | Pagination bubbles not clickable |
| --- | --- |
| Description | On the home page and the news page, the pagination bubbles under the new slider are not clickable |
| Module(s) | Home page, news page |
| Severity | Minor |
| Priority | Medium |
| Device(s) | Android (Samsung Galaxy S21+) |
| Steps to reproduce | 1. Navigate to home page or news page2. Click on a pagination bubble under the news slider (other than the currently selected one) |
| Expected result | Clicking on a pagination bubble will scroll the news slider to the corresponding news item |
| Actual result | Pagination bubbles are not clickable. Clicking on one of them does nothing. |
| Defect category | Functionality |
| Reported by | Ahmed Elnashar |
| Reported date | 2/9/2021 |

Defect 2:–

| Summary | News item truncated incorrectly |
| --- | --- |
| Description | In certain news items, the headline is truncated in the middle of a word instead of truncating to the next word (screenshot attached) |
| Module(s) | Home page, news page |
| Severity | Trivial |
| Priority | Low |
| Device(s) | Android (Samsung Galaxy S21+) |
| Steps to reproduce | 1. Navigate to home page or news page2. Scroll to the list of news items at the bottom3. Check display of long headlines |
| Expected result | Truncation will be done between words |
| Actual result | Some headlines are truncated in the middle of a word |
| Defect category | UI/UX |
| Reported by | Ahmed Elnashar |
| Reported date | 2/9/2021 |

Defect 3:–

| Summary | App doesn&#39;t open when device date is manually changed |
| --- | --- |
| Description | After force closing the app and then changing the date to a future date, when the user opens the app again a blocking page is displayed with &quot;No Internet connection&quot; error |
| Module(s) | Splash screen |
| Severity | Major |
| Priority | Low |
| Device(s) | Android (Samsung Galaxy S21+) |
| Steps to reproduce | 1. Change the device&#39;s date to a future date2. Open the app |
| Expected result | The app will open and display matches from the selected date |
| Actual result | A blocking page Is displayed with a misleading error &quot;No Internet connection&quot; (screenshot attached) |
| Defect category | Functionality |
| Reported by | Ahmed Elnashar |
| Reported date | 2/9/2021 |

Defect 4:–

| Summary | Matches and news are displayed according to system date received from BE, not device date |
| --- | --- |
| Description | Matches and news are displayed according to system date received from BE, not device date, while the &quot;today&#39;s matches&quot; section displays the date according to the device date |
| Module(s) | Home screen |
| Severity | Major |
| Priority | Low |
| Device(s) | Android (Samsung Galaxy S21+) |
| Steps to reproduce | 1. Change the device&#39;s date to a past date2. Open the app3. Check news items, today&#39;s matches section, matches list |
| Expected result | The app will display news items and matches according to the device date |
| Actual result | News items and matches list are displayed according to the system date, while the &quot;today&#39;s matches&quot; section displays the date according to the device date (screenshots attached) |
| Defect category | UI/UX, Requirements |
| Reported by | Ahmed Elnashar |
| Reported date | 4/9/2021 |
| Comments | Requirements need to be clarified with the Product Owner concerning which date to use (system date or device date), as the current implementation can be confusing for the user as it displays 2 dates; and it displays items from a date different to the device |

Defect 5:–

| Summary | Inconsistent behavior of Android hardware back button |
| --- | --- |
| Description | Throughout the app, the Android hardware back button mirrors the functionality of the back arrow in the top left corner of the screen. However when removing favorites, they perform different functions |
| Module(s) | Favorites |
| Severity | Minor |
| Priority | Low |
| Device(s) | Android (Samsung Galaxy S21+) |
| Steps to reproduce | 1. Navigate to favorites page2. Add favorite teams until the user has at least 2 favorites added3. Click on the edit favorites button at the top right corner4. Click on the trash icon to remove one of the favorites5. Click the back arrow6. Repeat steps 3-47. Click on the Android hardware back button |
| Expected result | The hardware back button should mirror the functionality of the back arrow and save the changes, as is the case throughout the rest of the app |
| Actual result | The back arrow saves the changes, while the hardware back button cancels the changes |
| Defect category | UI/UX, Requirements |
| Reported by | Ahmed Elnashar |
| Reported date | 4/9/2021 |
| Comments | Requirements need to be clarified with the Product Owner concerning behavior of the back arrow and the Android hardware back button to provide a consistent experience for the user throughout the app |

Defect 6:–

| Summary | Incorrect navigation for the retry button on the &quot;No Internet connection&quot; blocking page |
| --- | --- |
| Description | When a user is not on the home screen and loses connection and clicks on an item, then restores Internet connection and clicks retry, he is navigated to the home page and not the current page/item |
| Module(s) | Lost connection blocking page |
| Severity | Minor |
| Priority | Low |
| Device(s) | Android (Samsung Galaxy S21+) |
| Steps to reproduce | 1. Navigate to matches page2. Disable WiFi and mobile date3. Click on a match item4. Restore the Internet connection and click on &quot;retry&quot; button |
| Expected result | The user should be navigated back to the page he was on, or the page he was trying to navigate to |
| Actual result | The app reloads the splash screen and navigates the user to the home page |
| Defect category | UI/UX, Requirements |
| Reported by | Ahmed Elnashar |
| Reported date | 4/9/2021 |
| Comments | Requirements need to be clarified with the Product Owner concerning behavior of the retry button when connection is lost (should the app reload or continue the flow for the user) |

**Part 3 – Automating tests for FaceBook login page**

For this task I automated four test cases for the Facebook login page in PyCharm using Robot Framework with Selenium. I did not cover all possible scenarios due to time constraints. Below are simple descriptions for the steps of the four test cases:

1.

-Text and display of the login page is checked

-Login with correct credentials is attempted

-A check is performed to verify that the login was successful

2.

-Login with a valid email but incorrect password is attempted

-The display of the page and error are checked after an incorrect password is entered

3.

-&quot;Forgotten password?&quot; link is clicked

-The display of the forgotten password page is checked

4.

-&quot;Create an account&quot; button is clicked

-The display of the registration overlay is checked

The scripts read the test data from the sheet fbTestData.xlsx found in the TestData directory in the project attached.

For installation and running the scripts please follow the steps below:

- Install Python and Robot Framework by following the steps in the attached PDF titled &quot;Install Python and Robot Framework.pdf&quot;
- Open the attached project facebookLogin using PyCharm and select &quot;Python 3.8 (base)&quot; as the interpreter
- Download Miniconda3 and run the following commands in it:

- pip install --upgrade robotframework-datadriver
- pip install --upgrade robotframework-datadriver[XLS]
- pip install --upgrade robotframework-excel
- pip install --upgrade robotframework-excellib
- pip install --upgrade robotframework-exceldatadriver

- Open the terminal in Pycharm with the project open, and enter the following command to run the test:

Robot --variable BROWSER:firefox Tests/fbLoginTestSuite.robot

**Note:** You can replace &quot;firefox&quot; with &quot;chrome&quot; or &quot;IE&quot; to run the test in Chrome or Internet Explorer

![](RackMultipart20210906-4-828d6q_html_2a32c2bc2658c81d.gif)