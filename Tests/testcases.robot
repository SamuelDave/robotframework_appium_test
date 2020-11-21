***Settings***
Library        AppiumLibrary
#Library        AppiumExtensionLibrary
Resource       ../Resources/general_resources.robot

***Test Cases***
Launch_Application
     Launch the App

Login_User
     Launch the App
     Login User  ${testUser1.email}    ${testUser1.password}

Invalid_Login
     Launch the App
     Login User  WrongUsername          WrongPassword

Lougout_User
     Launch the App
     Login User  ${testUser1.email}    ${testUser1.password}
     Logout User  

Login_Two_Users
     Launch the App
     Login User  ${testUser1.email}    ${testUser1.password}
     Logout User  
     Login User  ${testUser2.email}    ${testUser2.password}

#Send messages to the first n contancts in the list
Send_Multiple_Msgs
     Launch the App
     Login User  ${testUser1.email}    ${testUser1.password}
     #you can change the number of the recepient
     Send Message  3 
