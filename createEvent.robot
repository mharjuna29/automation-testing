*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${tittle}           Hello admin
${desc}             //body/div[@id='__nuxt']/div[@id='__layout']/div[1]/div[3]/div[3]/div[2]/div[1]/div[1]/div[1]/div[1]/span[1]/form[1]/div[1]/div[2]/div[1]/div[1]/div[1]/span[1]/div[2]/div[2]/div[1]/p[1]
${address}          /html/body/div[2]/div/div/div[3]/div[3]/div[2]/div/div/div/div/span/form/div[1]/div[7]/div[2]/div/div/span/input
${myFile}           D:\\Work\\Deggan\\Unit Testing\\seamless.jpg
${descID}           //div[@class='col-sm-12']//div[@id='input-group-2']//div//p
${element}          (//button[normalize-space()='OK'])[1]
${uploadFile}       (//input[@accept='.xlsx,.xls,.doc,.docx,.ppt,.pptx,.txt,.pdf'])[1]
${myDocs}           C:\\Users\\MHARJUNA\\Pictures\\New folder\\lorem-ipsum.pdf
${elmEvent}         (//a[normalize-space()='Testing Create Event With Robot Framework'])[1]


*** Test Cases ***
Create Event
    [Documentation]    Create New Event on Smart Change
    Open Browser    https://admin-smartchange.deggan.com/login    Chrome
    Maximize Browser Window
    Wait Until Element Is Enabled    id=login-email    10
    Input Text
    ...    id=login-email
    ...    admin@smartchange.com
    Input Password
    ...    id=login-password
    ...    password
    Click Element    //button[contains(text(),'Log In')]
    Wait Until Element Is Enabled    //*[@id="main-menu-navigation"]/li[2]    10
    Click Element    //*[@id="main-menu-navigation"]/li[2]
    Wait Until Element Is Enabled    xpath=//small[contains(text(),'Add New')]    5
    Click Element    xpath=//small[contains(text(),'Add New')]
    Wait Until Element Is Enabled    (//input[@id='__BVID__111'])[1]    5
    Input Text
    ...    (//input[@id='__BVID__111'])[1]
    ...    Testing Create Event With Robot Framework
    Input Text
    ...    ${desc}
    ...    lorem ipsum
    Input Text
    ...    (//input[@id='__BVID__116'])[1]
    ...    Mr. Robot Framework
    Input Text    (//input[@type='search'])[1]    Start
    Press Keys
    ...    (//div[@class='vs__selected-options'])[1]
    ...    ENTER
    Select From List By Value    (//select[@id='__BVID__130'])[1]    false
    Click Element    (//input[@placeholder='Date'])[1]
    Wait Until Element Is Visible    (//span[contains(text(),'30')])[1]    10
    Click Element    (//span[contains(text(),'30')])[1]
    Sleep    1s
    Click Element    (//input[@placeholder='Time'])[1]
    Wait Until Element Is Visible    (//li[contains(text(),'01')])[1]    10
    Click Element    (//li[contains(text(),'01')])[1]
    Sleep    1s
    Click Element    (//li[contains(text(),'00')])[2]
    Sleep    1s
    Wait Until Element Is Visible    (//input[@placeholder='Date'])[1]    10
    Double Click Element    (//input[@placeholder='Date'])[1]
    Sleep    1s
    Click Element    (//input[@placeholder='Date'])[2]
    Wait Until Element Is Visible    (//span[contains(text(),'>')])[4]    10
    Click Element    (//span[contains(text(),'>')])[4]
    Click Element    (//span[@class='cell day'][normalize-space()='31'])[1]
    Sleep    1s
    Click Element    (//input[@class='display-time form-control is-empty'])[1]
    Wait Until Element Is Visible    (//li[contains(text(),'23')])[3]    10
    Click Element    (//li[contains(text(),'23')])[3]
    Click Element    (//li[contains(text(),'00')])[4]
    Sleep    1s
    Double Click Element    (//input[@placeholder='Date'])[2]
    Wait Until Element Is Visible    (//div[@class='drag-image upload-file'])[1]    10
    Scroll Element Into View    (//div[@class='drag-image upload-file'])[1]
    Wait Until Element Is Enabled    //*[@id="__BVID__144"]    10
    Input Text
    ...    //*[@id="__BVID__144"]
    ...    https://meet.google.com/xbo-hxpr-ihv
    Input Text
    ...    //*[@id="__BVID__150"]
    ...    https://www.youtube.com/watch?v=X3eyqaWAhrY
    Input Text
    ...    //*[@id="__BVID__152"]
    ...    https://www.youtube.com/watch?v=X3eyqaWAhrY
    Choose File
    ...    ${uploadFile}
    ...    ${myDocs}
    Choose File
    ...    (//input[@accept='.jpg,.png,.jpeg'])[1]
    ...    ${myFile}
    Sleep    2s
    #JIKA MUNCUL BUTTON CLEAR SAAT UPLOAD FILE, MAKA UPLOAD FILE BERHASIL DAN LANJUT KE PROSES SELANJUTNYA
    Page Should Contain Button
    ...    (//button[normalize-space()='Clear'])[1]
    Scroll Element Into View    (//button[normalize-space()='ID'])[1]
    Wait Until Element Is Enabled    (//button[normalize-space()='ID'])[1]    10
    Click Element    (//button[normalize-space()='ID'])[1]
    Input Text
    ...    //*[@id="__BVID__158"]
    ...    Coba Membuat Acara Menggunakan Robot Framework
    Input Text
    ...    ${descID}
    ...    Deskripsi testing automated testing by Robot Framework
    Click Button    (//button[normalize-space()='Submit'])[1]
    Wait Until Element Is Visible    ${element}    10
    #JIKA POP UP 'SUCCESSFULLY ADDED EVENT' MAKA AKAN MEN-TRIGGER BUTTON OK
    Page Should Contain Element
    ...    (//div[@id='swal2-html-container'])[1]
    Click Element    ${element}
    Sleep    3s

Check Event
    [Documentation]    Check The Event is Uploaded Correctly
    Execute Javascript    window.open('https://smartchange.deggan.com/events')
    Sleep    1s
    Switch Window    locator=New
    Page Should Contain element    ${elmEvent}
    Sleep    3s
    Close Browser
