*** Settings ****
Library                                             SeleniumLibrary

*** Variables ***
${fileImg}                                          D:\\Work\\Deggan\\Automation\\automation-testing\\DummyDocs\\lorem-ipsum.png

*** Test Cases ***
Create Content Infographics
        [Documentation]                             Create New Content Infographics on Smart Change
         Open Browser                               https://admin-smartchange.deggan.com/login                              Chrome
        Maximize Browser Window
        Wait Until Element Is Enabled               id=login-email                                                          10
        Input Text                                  id=login-email                                                          admin@smartchange.com
        Input Password                              id=login-password                                                       password
        Click Element                               //button[contains(text(),'Log In')]
        Wait Until Element Is Visible               //a[contains(text(),'Content')]                                         10
        Click Element                               //a[contains(text(),'Content')]
        Wait Until Element Is Visible               (//a[normalize-space()='Infographics'])[1]                              10
        Click Element                               (//a[normalize-space()='Infographics'])[1]
        Wait Until Element Is Visible               (//small[normalize-space()='Add New'])[1]                               10
        Click Element                               (//small[normalize-space()='Add New'])[1]
        Wait Until Element Is Visible               //*[@id="__BVID__69"]                                                   10
        Input Text                                  //*[@id="__BVID__69"]                                                   Create New Content Infographics Using Robot Framework
        Input Text                                  (//input[@placeholder='Tags'])[1]                                       Testing
        Input Text                                  //*[@id="__BVID__74"]                                                   Infographics Caption 1
        Choose File                                 //input[@type='file']                                                   ${fileImg}
        Click Element                               (//button[normalize-space()='+ Add New'])[1]
        Wait Until Element Is Visible               //*[@id="__BVID__88"]                                                   10
        Input Text                                  //*[@id="__BVID__88"]                                                   Infographics Caption 2
        Choose File                                 (//input[@type='file'])[2]                                              ${fileImg}
        Click Element                               (//button[normalize-space()='ID'])[1]
        Wait Until Element Is Visible               //*[@id="__BVID__77"]                                                   10
        Input Text                                  //*[@id="__BVID__77"]                                                   Membuat Konten Infographics Baru Menggunakan Robot Framework
        Input Text                                  //*[@id="__BVID__80"]                                                   Infographics Caption Satu
        Input Text                                  //*[@id="__BVID__94"]                                                   Infographics Caption Dua
        Sleep                                       3s
        Close Browser                        