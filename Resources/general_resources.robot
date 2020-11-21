***Settings***
#Library         AppiumLibrary
Library         AppiumExtensionLibrary
#Resource        general_variables.robot
Variables       variables.yaml

***Keywords***
Launch the App
    Open Application	http://localhost:4723/wd/hub	platformName=${platformName}	deviceName=${deviceName}    appPackage=${appPackage}	    appActivity=${appActivity}      automationName=${automationName}

Login User
    [Arguments]          ${email}            ${password}          
    Wait Until Page Contains Element         ${loginButton}         timeout=${short}
    Input Value          ${loginEmail}       ${email}       
    Input Password       ${loginPassword}    ${password}
    Click Element        ${loginButton}

Logout User
    Wait Until Page Contains Element         ${profileTab}          timeout=${Long}
    Click Element        ${profileTab}
    Wait Until Page Contains Element         ${logoutButton}        timeout=${short}
    Click Element        ${logoutButton}

Verify Invalid Login
    Wait Until Element Is Enabled            ${loginButton}         timeout=${short}
    Page Should Not Contain Element          ${homeTab}             

Send Message
    [Arguments]         ${contactIndex}
    FOR     ${index}        IN RANGE         ${contactIndex}  
        Wait Until Page Contains Element     ${selecTContact}       timeout=${Long}
        Click Element       ${selectContact}
        Wait Until Element Is Enabled        ${contactList}0"]      timeout=${short}
        Click Element       ${contactList}${index + 2}"]
        Wait Until Element Is Enabled        ${messageBox}          timeout=${short}
        Input Value         ${messageBox}    ${message}
        Click Element       ${sendButton}
        Wait Until Element Is Enabled        ${msgBackButton}       timeout=${short}
        Click Element       ${msgBackButton}
    END

