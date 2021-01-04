*** Settings ***

*** Variables ***
${BROWSER} =  chrome
${URL} =  https://brandregistry.amazon.in/

${INCORRECT_CSV_PATH} =  C://Users//rohit//PycharmProjects//Amazon//DataDriven//Data//Users.csv


&{INVALID_EMAIL} =  Email=rgk1924323@gmail.com  Password=abcd@1234!  ExpectedErrorMessage=Important Message!
&{BLANK_DETAILS} =  Email=#Blank  Password=#BLANK  ExpectedErrorMessage=Enter your email or mobile phone number
