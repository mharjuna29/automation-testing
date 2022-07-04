*** Settings ***
Library                             SeleniumLibrary

*** Variables ***
${filePdf}                          D:\\Work\\Deggan\\Automation\\automation-testing\\DummyDocs\\dummies.pdf
${fileImg}                          D:\\Work\\Deggan\\Automation\\automation-testing\\DummyDocs\\lorem-ipsum.png

*** Test Cases ***
Create Content Articles
        [Documentation]                             Create New Content Articles on Smart Change
        Open Browser                                https://admin-smartchange.deggan.com/login                              Chrome
        Maximize Browser Window
        Wait Until Element Is Enabled               id=login-email                                                          10
        Input Text                                  id=login-email                                                          admin@smartchange.com
        Input Password                              id=login-password                                                       password
        Click Element                               //button[contains(text(),'Log In')]
        Wait Until Element Is Visible               //a[contains(text(),'Content')]                                         10
        Click Element                               //a[contains(text(),'Content')]
        Click Element                               //a[contains(text(),'Articles')]
        Wait Until Element Is Visible               //small[contains(text(),'Add New')]                                     10
        Click Element                               //small[contains(text(),'Add New')]
        Wait Until Element Is Visible               //input[@id='__BVID__104']
        Input Text                                  //input[@id='__BVID__104']                                              Testing Create New Content Articles Using Robot Framework
        Input Text                                  (//input[@type='search'])[1]                                            Blog
        Press Keys                                  (//div[@class='vs__selected-options'])[1]                               ENTER
        Input Text                                  (//input[@placeholder='Tags'])[1]                                       Testing
        Input Text                                  (//p)[1]                                                                Description Create New Articles With Robot Framework
        Choose File                                 (//input[@accept='.pdf'])[1]                                            ${filePdf}
        Choose File                                 (//input[@accept='.jpg,.png,.jpeg'])[1]                                 ${fileImg}
        Scroll Element Into View                    (//button[normalize-space()='ID'])[1]
        Click Element                               (//button[normalize-space()='ID'])[1]
        Wait Until Element Is Visible               //*[@id="__BVID__120"]                                                  10
        Input Text                                  //*[@id="__BVID__120"]                                                  Mencoba Membuat Artikel Baru Menggunakan Robot Framework
        Input Text                                  //*[@id="__BVID__121"]/div/span/div[2]/div[2]/div/p                     Penjelasan Membuat Artikel baru Dengan Robot Framework
        Sleep                                       1s
        Close Browser                                            