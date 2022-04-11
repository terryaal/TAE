*** Settings ***
Resource          ../../Library/Functions/SeleniumFunctions.robot
Resource          TestVariable.robot

*** Test Cases ***
TestCase01
    [Documentation]    Test to purchase giftcard item and validate successfull purchase
    [Tags]    Purchase    Suite01
    [Setup]    Navigate_to_Site    http://demowebshop.tricentis.com/    chrome
    User_Login    ${Email}    ${Password}
    Select_Item_GiftCard    ${Purchase_Item}
    Add_Item_to_Cart    ${RecipientName}    ${RecipientEmail}
    Validate_Cart    ${Purchase_Item}    1
    Checkout_Item
    Complete_Order    ${Address}
    Validate_Order_Completion    ${Order_Success_MSG}
    [Teardown]    TearDown

TestCase02
    [Documentation]    Test to validate user login is successfull and validate wishlist item retainment.
    [Tags]    Wishlist    Suite01
    [Setup]    Navigate_to_Site    http://demowebshop.tricentis.com/    chrome
    User_Login    ${Email}    ${Password}
    Navigate_to_Wishlist
    Validate_Wishlist    ${Wishlist_Item}
    [Teardown]    TearDown
