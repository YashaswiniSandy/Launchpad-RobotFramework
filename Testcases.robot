*** Settings ***
Library    SeleniumLibrary
Library    Telnet
Library    XML


*** Test Cases ***
Open Flipkart
    Open Browser  https://www.flipkart.com/  edge
    Maximize Browser Window
    click element    xpath://button[@class='_2KpZ6l _2doB4z']
    click element    xpath://div[@class="_37M3Pb"]/div[3]
    sleep    2s 
    #Scroll element into view    xpath:(//img[@alt='Realme C35 - English'])[1]
    #Wait Until element is visible    xpath://img[@alt='Realme C35 - English'][1]       
    #click element    xpath:(//a[@class="_1AcS-S"])[3]
    click element    xpath:(//div[@class="_HYyiu"])[1]
    sleep    2s
    #scroll element into view    xpath:(//div[@class="_4rR01T"])[6]
    #Get Text    xpath:(//div[@class="_4rR01T"])[6]    should Be    realme C35 (Glowing Green, 128 GB)        
    click element    xpath:(//div[@class="_4rR01T"])[6]
    switch Window    title:realme C33 ( 32 GB Storage, 3 GB RAM ) Online at Best Price On Flipkart.com
    click element    xpath://button[@class="_2KpZ6l _2U9uOA _3v1-ww"]
    Execute Javascript  history.back()
    sleep    2s
    click element    xpath:(//div[@class="go_DOp"])[3]
    #reload page
    Element Text Should Be    xpath://div[@class="_2-uG6-"]    realme C33 (Aqua Blue, 32 GB)    timeout=5
    close Browser
    




    



    

