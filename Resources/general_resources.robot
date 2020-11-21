***Settings***
Library         AppiumLibrary
Resource        variables.yaml

***Keywords***
Launch the App
    Open Application	http://localhost:4723/wd/hub	platformName=${platformName}	deviceName=${deviceName}    appPackage=${appPackage}	    appActivity=${appActivity}      automationName=${automationName}

Login User
    [Arguments]          ${email}            ${password}          
    Sleep                ${short}
    Input Text           ${loginEmail}       ${email}
    Input Password       ${loginPassword}    ${password}
    Click Element        ${loginButton}
    Sleep                ${long}

Logout User
    Sleep                ${short}
    Click Element        ${profileTab}
    Sleep                ${short}
    Click Element        ${logoutButton}
    Sleep                ${short}

Verify Invalid Login
    Sleep               ${short}
    Page Should Not Contain Element             ${homeTab}             

Send Message
    [Arguments]         ${contactIndex}
    FOR     ${index}     IN RANGE        ${contactIndex}  
        Sleep               ${short}
        Click Element       ${selectContact}
        Sleep               ${short}
        Click Element       ${contactList}${index + 2}"]
        Sleep               ${short}
        Input Text          ${messageBox}       ${message}
        Click Element       ${sendButton}
        Sleep               ${long}
        Click Element       ${msgBackButton}
    END

