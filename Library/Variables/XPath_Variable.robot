*** Variables ***
${Login_Path}     //*[@class='ico-login']    # Xpath to validate successfull URL navigation
${Validation_Value}    Log in    # Value to validate successfull URL navigation
${Email_Input_Path}    //*[@id="Email"]    # Xpath to input email
${Password_Input_Path}    //*[@id="Password"]    #Xpath to input password
${Login_Button_Path}    //Input[@class='button-1 login-button']    #Xpath to click login button
${Username_Path}    //*[@class='account']    #Xpath to check successfull login via user name
${Whislist_Menu_Path}    //*[@class='wishlist-qty']    #Xpath to click wishlist menu
${Wishlist_validation_Path}    //*[@class='page-title']    #Xpath to validate successfull wishlist page navgation
${Wishlist_Validation_Value}    Wishlist    # Value to validate successfull wishlist page navigation
${GiftCard_Menu_Path}    //*[@href='/gift-cards']    #Xpath to gift cards menu
${GiftCard_page_Value}    //*[@href='/5-virtual-gift-card']    #Value to validate giftcard page navigation
${Add_item_to_cart_path}    //*[@class='button-2 product-box-add-to-cart-button']    #Xpath to add item to cart
${Item_page_Value}    //*[@itemprop='name']    #Value to validate item selection page
${Item_Name_Path}    //*[@class='current-item']    #Xpath to validate target item selection
${Item_Name_Value}    $5 Virtual Gift Card    #Value to validate target item selection
${Recipient_Name_Path}    //*[@class='recipient-name']    #Xpath to Recipient name inputbox
${Recipient_Email_Path}    //*[@class='recipient-email']    #Xpath to recipient email inputbox
${Add_to_cart_Path}    //*[@class='button-1 add-to-cart-button']    #Xpath to add item to cart button
${Cart_menu_Path}    //*[@class='cart-label']    #Xpath to click cart menu
${Validate_Cart_Item_path}    //*[@class='product-name']    #value to validate Cart page navigation
${Quantity_path}    //*[starts-with(@name, 'itemquantity')]    #Xpath to set quantity
${Terms_Path}     //*[@id='termsofservice']    #Xpath to click terms checkbox
${Checkout_button_path}    //*[@class='button-1 checkout-button']    #Xpath to click checkout button
${Checkout_page_path}    //*[@class='page-title']    #Xpath to validate checkout navigation
${Address_path}    //*[@id='billing-address-select']    #Xpath to billing address drop down
${Address_Button}    //*[@class='button-1 new-address-next-step-button']    #Xpath to click next button on address segment
${Payment_option_Path}    //*[@id='paymentmethod_0']    #Xpath to payment option cash on delivery
${Payment_button_path}    //*[@class='button-1 payment-method-next-step-button']    #Xpath to click next button on payment segment
${Payment_info_Button_path}    //*[@class='button-1 payment-info-next-step-button']    #Xpath to click next button on payment info segment
${confirm_order_path}    //*[@class='button-1 confirm-order-next-step-button']    #Xpath to confirm order
${Logout_path}    //*[@class='ico-logout']    #Xpath to logout menu
${Order_completion}    //*[@class='title']    #Xpath to order success page
${Click_Continue_path}    //*[@value='Continue']    # Xpath to click continue button
