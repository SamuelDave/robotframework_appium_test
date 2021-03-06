***Variables***

#Android App Set up
${platformName}     Android
${deviceName}       emulator-5554
${appPackage}       chat21.android.demo
${appActivity}      chat21.android.demo.SplashActivity      
${automationName}   Uiautomator2

#Sleep Duration
${short}            2
${long}             5

#Test User Credentials
&{testUser1}         email=appiumtest1@yopmail.com   password=P@ssword1
&{testUser2}         email=appiumtest2@yopmail.com   password=P@ssword1   

#Setup Variables
${loginEmail}       id=chat21.android.demo:id/email
${loginPassword}    id=chat21.android.demo:id/password
${loginButton}      id=chat21.android.demo:id/login

#Homepage Variables
${homeTab}          //android.widget.TextView[@text="HOME"]
${selectContact}    id=chat21.android.demo:id/direct_message

#Profile page Variables
${profileTab}       //android.widget.TextView[@text="PROFILE"]
${logoutButton}     id=chat21.android.demo:id/logout

#Contact Lists
${contactList}      //android.widget.LinearLayout[@index="

#Messaging Page Variables
${messageBox}       id=chat21.android.demo:id/main_activity_chat_bottom_message_edittext
${sendButton}       id=chat21.android.demo:id/main_activity_send
${msgBackButton}    //android.widget.ImageButton[@content-desc="Navigate up"]
${message}          Hello