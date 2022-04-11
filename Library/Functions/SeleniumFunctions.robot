*** Settings ***
Library           OperatingSystem
Library           String
Library           Selenium2Library
Resource          ../Variables/XPath_Variable.robot

*** Keywords ***
Navigate_to_Site
    [Arguments]    ${URL}    ${Browser}
    [Documentation]    Keyword to load web page under test.
    [Timeout]    10 seconds
    Open Browser    ${URL}    ${Browser}
    Maximize Browser Window
    ${Result_Value}    get text    ${Login_Path}
    ${Result}    ${Msg}    run keyword and ignore error    should match regexp    ${Result_Value}    ${Validation_Value}
    capture page screenshot

User_Login
    [Arguments]    ${Email}    ${password}
    [Documentation]    Keywork to login with provided user email and password
    [Timeout]    10 seconds
    Click element    ${Login_Path}
    input text    ${Email_Input_Path}    ${Email}
    input password    ${Password_Input_Path}    ${password}
    capture page screenshot
    click button    ${Login_Button_Path}
    ${Result_Value}    get text    ${Username_Path}
    ${Result}    ${Msg}    run keyword and ignore error    should match regexp    ${Result_Value}    ${Email}

Navigate_to_Wishlist
    [Documentation]    Keyword to navigate to wishlist page
    [Timeout]    10 seconds
    Click element    ${Whislist_Menu_Path}
    ${Result_Value}    get text    ${Wishlist_validation_Path}
    ${Result}    ${Msg}    run keyword and ignore error    should match regexp    ${Result_Value}    ${Wishlist_Validation_Value}

Validate_Wishlist
    [Arguments]    ${wishlist_Item}
    [Documentation]    Keyword to valiate wishlist is retained after session logout
    [Timeout]    10 seconds
    capture page screenshot
    ${Result_Value}    page should contain    ${wishlist_Item}

Select_Item_GiftCard
    [Arguments]    ${CardName}
    [Documentation]    Keyword Navigate to Giftcard page and select giftcard
    [Timeout]    10 seconds
    click element    ${GiftCard_Menu_Path}
    Wait Until Element Is Enabled    ${GiftCard_page_Value}
    capture page screenshot
    click button    ${Add_item_to_cart_path}
    Wait Until Element Is Enabled    ${Item_page_Value}
    ${Result_Value}    get text    ${Item_Name_Path}
    ${Result}    ${Msg}    run keyword and ignore error    should match    '${Result_Value}'    ${CardName}

Add_Item_to_Cart
    [Arguments]    ${RecipientName}    ${RecipientEmail}
    [Documentation]    Keyword to add recipient details
    [Timeout]    10 seconds
    input text    ${Recipient_Name_Path}    ${RecipientName}
    input text    ${Recipient_Email_Path}    ${RecipientEmail}
    capture page screenshot
    click button    ${Add_to_cart_Path}
    Wait Until Element Is Visible    //*[@id="bar-notification"]

Validate_Cart
    [Arguments]    ${CardName}    ${Quantity}
    [Documentation]    Keyword to validate selected giftcard and quantity
    [Timeout]    10 seconds
    click element    ${Cart_menu_Path}
    capture page screenshot
    Wait Until Element Is Visible    ${Validate_Cart_Item_path}
    ${Result_Value}    get text    ${Validate_Cart_Item_path}
    ${Result}    ${Msg}    run keyword and ignore error    should match    ${Result_Value}    ${CardName}
    input text    ${Quantity_path}    ${Quantity}
    capture page screenshot

Checkout_Item
    [Documentation]    Keyword to confirm terms and submit order for check out process
    [Timeout]    10 seconds
    click element    ${Terms_Path}
    click button    ${Checkout_button_path}
    ${Result_Value}    get text    ${Checkout_page_path}
    ${Result}    ${Msg}    run keyword and ignore error    should match regexp    ${Result_Value}    Checkout

Complete_Order
    [Arguments]    ${Address}
    [Documentation]    Keyword to complete order through billing address and type of payment.
    [Timeout]    10 seconds
    Select From List By Label    ${Address_path}    ${Address}
    capture page screenshot
    click button    ${Address_Button}
    Wait Until Element Is Visible    ${Payment_option_Path}
    capture page screenshot
    click element    ${Payment_option_Path}
    Wait Until Element Is Visible    ${Payment_button_path}
    capture page screenshot
    click button    ${Payment_button_path}
    Wait Until Element Is Visible    ${Payment_info_Button_path}
    capture page screenshot
    click button    ${Payment_info_Button_path}
    capture page screenshot
    Wait Until Element Is Visible    ${confirm_order_path}
    capture page screenshot
    click button    ${confirm_order_path}
    capture page screenshot

TearDown
    [Documentation]    Keyword to logout and close browser gracefully
    [Timeout]    10 seconds
    Wait Until Element Is Visible    ${Logout_path}
    click element    ${Logout_path}
    capture page screenshot
    Wait Until Element Is Visible    ${Login_Path}
    ${Result_Value}    get text    ${Login_Path}
    ${Result}    ${Msg}    run keyword and ignore error    should match regexp    ${Result_Value}    ${Validation_Value}
    close browser

Validate_Order_Completion
    [Arguments]    ${Order_completion_String}
    [Documentation]    Keyword to validate successfull order completion.
    [Timeout]    10 seconds
    Wait Until Element Is Visible    ${Order_completion}
    capture page screenshot
    ${Result_Value}    get text    ${Order_completion}
    ${Result}    ${Msg}    run keyword and ignore error    should match regexp    ${Result_Value}    ${Order_completion_String}
    Comment    Wait Until Element Is Enabled    ${Click_Continue_path}
    Comment    click button    ${Click_Continue_path}
    sleep    2s
