*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${url_user}             https://www.smartchange.co.id/auth/login?r=%2F
${url_admin}            https://admin-smartchange.deggan.com/login
${url_adminProd}        https://admin.smartchange.co.id/login
${email}                m.hariyadiarjuna@gmail.com
${password}             junaonly29
${admin}                admin@smartchange.com
${admin_pass}           password
${adminProd_pass}       deggan456
${button_login}         //*[@id="__layout"]/div/div/div[3]/div[2]/div/div/div[2]/div[1]/span/form/button
${field_email}          //*[@id="__layout"]/div/div[2]/div/div/div[2]/div/span/div/div/div/span/input
${field_pass}           //*[@id="__layout"]/div/div[2]/div/div/div[2]/div/span/div/fieldset[1]/span/div/input
${login}                //*[@id="__layout"]/div/div[2]/div/div/div[2]/div/span/div/button
${tittle}               Home - Jakarta Smart Change
${login}                //*[@id="__layout"]/div/div/div[3]/div[2]/div/div/div[2]/div[1]/span/form/button
${description_field}    //*[@id="input-group-2"]/div/span/div[2]/div[2]/div
${description}          llorem ipsum
${id_email}             //*[@id="__layout"]/div/div[2]/div/div/div[2]/div/span/div/div/div/span/input
${id_password}          //*[@id="__layout"]/div/div[2]/div/div/div[2]/div/span/div/fieldset[1]/span/div/input
${events}               //*[@id="__layout"]/div/header/div/div/div/div[2]/nav/ul/li[2]/a/span
${dialogue}             //*[@id="__layout"]/div/header/div/div/div/div[2]/nav/ul/li[3]/a
${online_learning}      //*[@id="__layout"]/div/header/div/div/div/div[2]/nav/ul/li[4]/a
${content}              //*[@id="__layout"]/div/header/div/div/div/div[2]/nav/ul/li[5]/a
${infographics}         //*[@id="__layout"]/div/header/div/div/div/div[2]/nav/ul/li[5]/ul/li[1]
${pipr}                 //*[@id="__layout"]/div/header/div/div/div/div[2]/nav/ul/li[5]/ul/li[2]
${policy_gap}           //*[@id="__layout"]/div/header/div/div/div/div[2]/nav/ul/li[5]/ul/li[3]
${blogspots}            //*[@id="__layout"]/div/header/div/div/div/div[2]/nav/ul/li[5]/ul/li[4]
${expert_reports}       //*[@id="__layout"]/div/header/div/div/div/div[2]/nav/ul/li[5]/ul/li[5]
${faq}                  //*[@id="__layout"]/div/header/div/div/div/div[2]/nav/ul/li[7]/a
${faq1}                 //*[@id="__layout"]/div/div[3]/div[2]/div/div/div[2]/div/div[2]/div[1]/header/button/div/p
${faq2}                 //*[@id="__layout"]/div/div[3]/div[2]/div/div/div[2]/div/div[2]/div[2]/header/button/div/p
${faq3}                 //*[@id="__layout"]/div/div[3]/div[2]/div/div/div[2]/div/div[2]/div[3]/header/button/div/p
${faq4}                 //*[@id="__layout"]/div/div[3]/div[2]/div/div/div[2]/div/div[2]/div[4]/header/button/div/p
${faq5}                 //*[@id="__layout"]/div/div[3]/div[2]/div/div/div[2]/div/div[2]/div[5]/header/button/div/p
${faq6}                 //*[@id="__layout"]/div/div[3]/div[2]/div/div/div[2]/div/div[2]/div[6]/header/button/div/p
${limited_participant}  xpath=/html/body/div[2]/div/div/div[3]/div[3]/div[2]/div/div/div/div/span/form/div[1]/div[5]/div[2]/div/div/div/div[1]/span/select
${upload_file}          //*[@id="input-group-2"]/div/div/div/span/div/div[1]/div/input 
${add_file}             C:\download.png 

*** Test Cases ***
Login Admin
    [Documentation]    Login using Smart Change Admin Account
    Open Browser    ${url_admin}    Chrome
    Maximize Browser Window
    Login Admin
    Input New Event
    Close Browser

# Event
#     [Documentation]    Input New Event
#     Open Browser    ${url_user}    Chrome
#     Maximize Browser Window
#     # Input New Event
#     Moderation Profile
#     Login Admin Production
#     Moderation Admin
#     Close Browser

# Login User
#     [Documentation]             User Login on The Smart Change Website
#     Open Browser                ${url_user}    chrome
#     Maximize Browser Window
#     Login User

# Explore Menu Smart Change
#     [Documentation]             Explore All Menu on Website Smart Change
#     Explore Smart Change
#     Close Browser

*** Keywords ***
Login Admin
    Input Text                  id=login-email    ${admin}
    Input Password              id=login-password    ${admin_pass}
    Click Button                ${button_login}
    Sleep    3s

Login Admin Production
    Sleep   3s
    Execute Javascript          window.open('https://admin.smartchange.co.id/login');
    Sleep   3s
    Switch Window               locator=New
    Input Text                  id=login-email      ${admin}
    Input Password              id=login-password   ${adminProd_pass}
    Click Button                xpath=//*[@id="__layout"]/div/div/div[3]/div[2]/div/div/div[2]/div[1]/span/form/button

Moderation Profile
    # Sleep   3s
    # Execute Javascript          window.open('https://www.smartchange.co.id/auth/login?r=%2F');
    # Sleep   3s
    # Switch Window               locator=New
    Sleep   3s
    Click Element               ${field_email}
    Input Text                  ${id_email}    ${email}
    Sleep    2s
    Click Element               ${field_pass}
    Input Password              ${id_password}    ${password}
    Sleep    2s
    Click Button                ${login}
    Sleep    3s
    Click Element               //*[@id="__layout"]/div/header/div/div/div/div[3]/div/div/div[2]/a[2]
    Sleep   3s
    Click Element               //*[@id="__layout"]/div/header/div/div/div/div[3]/div/div/div[2]/a[2]/div/ul/div/li[1]/a
    Sleep   5s
    Double Click Element        //*[@id="__BVID__91___BV_tab_button__"]
    Sleep   5s
    Input Text                  xpath=//*[@id="__BVID__91"]/div/div/div[2]/div/form/input   arjuna
    Sleep   3s
    Click Element               //*[@id="__BVID__91"]/div/div/div[3]/div[1]/div/div/div/div[1]/div/div/div/div[1]/div/div[2]/a
    Sleep   5s
    Click Element               //*[@id="__layout"]/div/div[3]/div[2]/div[1]/div[3]/div/button
    Sleep   3s
    Click Element               xpath=/html/body/div[2]/div[1]/div/div/div/div/form/div[1]/div/div[1]/label
    Sleep   3s
    Input Text                  xpath=/html/body/div[2]/div[1]/div/div/div/div/form/div[2]/textarea   automated moderation
    Sleep   3s
    Click Button                xpath=/html/body/div[2]/div[1]/div/div/div/div/form/div[4]/button[2]
    Sleep   10s

Moderation Admin
    Sleep   3s
    Click Element               xpath=//*[@id="main-menu-navigation"]/li[5]/a
    Sleep   3s
    Click Element               //*[@id="main-menu-navigation"]/li[5]/ul/li[3]/a
    Sleep   3s
    Click Element               //*[@id="__BVID__53"]/tbody/tr[4]/td[5]/a
    Sleep   3s
    Click Button                xpath=//*[@id="__layout"]/div/div[3]/div[3]/div[2]/div/div[1]/div/div[2]/div/button
    Sleep   3s
    Click Element               //*[@id="radio-group-1"]/div[3]/label
    Sleep   3s
    Click Button                xpath=/html/body/div[3]/div[1]/div/div/footer/button[2]
    Sleep   3s
    Click Button                xpath=/html/body/div[4]/div/div[6]/button[1]
    Sleep   10s

Input New Event
    Click Element               //*[@id="main-menu-navigation"]/li[2]/a
    Sleep    3s
    Click Element               //*[@id="__layout"]/div/div[3]/div[3]/div[2]/div/div/header/a
    Sleep    3s
    Input Text                  id=__BVID__111    Testing Create New Event
    Click Element               ${description_field}
    Sleep    3s
    Input Text                  //*[@id="input-group-2"]/div/span/div[2]/div[2]/div    ${description}
    Sleep    3s
    Input Text                  id=__BVID__116    Mr.Testing
    Sleep    3s
    Click Element               //*[@id="vs1__combobox"]
    Input Text                  //*[@id="vs1__combobox"]/div[1]/input    Civic
    Press Keys                  //*[@id="vs1__combobox"]/div[1]/input    ENTER
    Sleep   3s
    Select From List By Value   ${limited_participant}      false
    Sleep   3s
    Scroll Element Into View    //*[@id="input-group-2"]/div/div/div/span/div/div[1]/div
    Sleep   3s
    # Click Element               //*[@id="__BVID__196"]
    # Sleep   3s
    Input Text                  id=__BVID__144      https://meet.google.com/xbo-hxpr-ihv
    Sleep   3s
    Input Text                  id=__BVID__150      https://www.youtube.com/watch?v=X3eyqaWAhrY
    Sleep   3s
    Input Text                  id=__BVID__152      https://www.youtube.com/watch?v=X3eyqaWAhrY
    Sleep   3s
    SeleniumLibrary.Wait Until Element Is Enabled    xpath=//span[contains(text(),'Upload .jpg,.png,.jpeg file (max. 5MB)')]
    Sleep   60s
    Choose File                     xpath=//span[contains(text(),'Upload .jpg,.png,.jpeg file (max. 5MB)')]     C:\download.png
    Sleep   10s 

Login user
    Click Element               ${field_email}
    Input Text                  ${id_email}    ${email}
    Sleep    2s
    Click Element               ${field_pass}
    Input Password              ${id_password}    ${password}
    Sleep    2s
    Click Button                ${login}
    Sleep    3s
    # Execute Javascript          window.scrollTo(0,document.body.scrollHeight)
    # Sleep    5s
    # Execute Javascript          window.scrollTo(0,-document.body.scrollHeight)
    # Sleep    3s

Explore Smart Change
    # Scroll Element Into View    xpath=//*[@id="__layout"]/div/div[3]/div[2]/div/div/div[1]/div/div/img
    # Sleep    3s
    # Scroll Element Into View    xpath=//*[@id="__layout"]/div/div[3]/div[3]/div/div/div[1]/div/div/img
    # Sleep    3s
    # Scroll Element Into View    xpath=//*[@id="__layout"]/div/div[3]/div[4]/div/div[3]/div/div/div/div/canvas
    # Sleep    3s
    # Scroll Element Into View    xpath=//*[@id="__layout"]/div/div[4]/div[1]/div[2]/div/div/div
    # Sleep    3s
    # Click Element               ${events}
    # Sleep    5s
    # Scroll Element Into View    xpath=//*[@id="__layout"]/div/div[3]/div[3]/div/div[2]/div/div/div/div/div[2]/div/div[1]/a/img
    # Sleep    3s
    # Click Element               ${dialogue}
    # Sleep    5s
    # Click Element               ${online_learning}
    # Sleep    5s
    # Scroll Element Into View    xpath=//*[@id="__layout"]/div/div[3]/div[4]/div/div[2]/div[1]/div/div/div/div/div/div[1]/a/img
    # Sleep    3s
    # Click Element               ${content}
    # Sleep    3s
    # Click Element               ${infographics}
    # Sleep    3s
    # Click Element               ${pipr}
    # Sleep    3s
    # Click Element               ${policy_gap}
    # Sleep    3s
    # Click Element               ${blogspots}
    # Sleep    3s
    # Click Element               ${expert_reports}
    # Sleep    3s
    # Click Element               xpath=//*[@id="__layout"]/div/header/div/div/div/div[2]/nav/ul/li[6]
    # Sleep    3s
    # Scroll Element Into View    xpath=//*[@id="__layout"]/div/div[3]/div[3]/div[1]/div[3]/div/ul
    # Sleep    3s
    # Click Element               ${faq}
    # Sleep   3s
    # Click Element               ${faq1}
    # Sleep   5s
    # Click Element               ${faq2}
    # Sleep   5s
    # Click Element               ${faq3}
    # Sleep   5s
    # Click Element               ${faq3}
    # Sleep   5s
    # Click Element               ${faq4}
    # Sleep   5s
    # Click Element               ${faq5}
    # Sleep   5s
    # Click Element               ${faq6}
    # Sleep   5s
    # Click Element               xpath=//*[@id="__layout"]/div/header/div/div/div/div[2]/nav/ul/li[8]/a/span
    # Sleep   3s
    # Click Element               xpath=//*[@id="__layout"]/div/header/div/div/div/div[2]/nav/ul/li[8]/ul/li[1]/a
    # Sleep   3s
    # Execute Javascript          window.scrollTo(0.100)
    # # Scroll Element Into View    xpath=//*[@id="__layout"]/div/div[3]
    # Sleep   3s    