***Settings***
Library     AppiumLibrary

***Test Cases***
Show My Balance
    Open Application    http://localhost:4723/wd/hub
    ...                 automationName=UiAutomator2
    ...                 platformVersion=8.1
    ...                 platformName=Android
    ...                 deviceName=emulator-5554
    ...                 app=${EXECDIR}/app/nuclone.apk

    Wait Until Element Is Visible   accessibility_id=card-hero      10

    Click Element                   accessibility_id=show-balance

    Wait Until Element Is Visible   accessibility_id=user-balance   10
    Element Text Should Be          accessibility_id=user-balance   R$ 5.500,00

    Capture Page Screenshot
    Close Application