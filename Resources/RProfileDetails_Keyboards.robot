*** Settings ***
Library  SeleniumLibrary
Variables        ../PageObects/ProfileDetails_Retailer.py
Variables        ../PageObects/Login.py

*** Keywords ***
Open my Browser
    [Arguments]     ${SiteUrl}    ${Browser}
    Open Browser    ${SiteUrl}    ${Browser}
    Maximize Browser Window


SignIn
    [Arguments]     ${username}     ${password}
    Input Text      ${username_txtField}    ${username}
    Input Text      ${password_txtField}    ${password}
    Click Button    ${button}

Profile Details

    [Arguments]     ${businessName}     ${addressLine1}         ${ZIP}
#    sleep   5second
    Input Text      ${businessName_txtField}       ${businessName}

    Click Element      ${service}
    click element       ${firstOption}
    Click Element      ${service}
    click element       ${secondOption}
    Click Element      ${service}
    click element       ${thirdOption}
    Click Element      ${service}
    click element       ${forthOption}
    click element       ${removeTag1}
    click element       ${removeTag2}
    Input Text      ${address1}           ${addressLine1}
#    Input Text      ${address2}           ${addressLine2}
    Input Text      ${ZipCode}           ${ZIP}
    Select From List By Value    ${dayDropdown}    Thursday
    sleep   15seconds
#    Input Text      ${timeFrom1}           0258
#    Input Text      ${timeFrom2}           0200
#    Input Text      ${about}               ABCD
#    ${file_path} =    Set Variable    "C:\\Users\\kamit\\Downloads\\download.jpeg"
#    Choose File     ${imgUpload}   "C:\\Users\\kamit\\Downloads\\download.jpeg"
