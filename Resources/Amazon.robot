*** Settings ***
Resource    ../Resources/PO/Cart.robot
Resource    ../Resources/PO/LandingPage.robot
Resource    ../Resources/PO/Product.robot
Resource    ../Resources/PO/SearchResults.robot
Resource    ../Resources/PO/SignIn.robot
Resource    ../Resources/PO/TopNav.robot



*** Keywords ***
Search for Product
    LandingPage.Load
    LandingPage.Verify Page Loaded
    TopNav.Search for Products
    SearchResults.Verify Search Complited

Select Product From Search Results
    SearchResults.Click Product Link
    Product.Verify Page Loaded

Add Product To Cart
    Product.Add To Cart
    Cart.Verify Product Added

Begin Checkout
    Cart.Proceed To Checkout
    SignIn.Verify Page Loaded






