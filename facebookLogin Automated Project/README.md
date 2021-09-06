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

![](RackMultipart20210906-4-1ciief_html_2a32c2bc2658c81d.gif)