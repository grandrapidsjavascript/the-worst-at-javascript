Feature: These are functions that add two numbers
  
  Scenario: We should have the correct resources for adding two numbers
    Given there is 5 function that can add two numbers
    
  Scenario: A person wants to add two numbers together using Kendell's Function
    Given we have a function that can add two numbers called kendellsAddNumberFunction
      And we want to use 134872478 as the first number
      And we want to use 5230 as the second number
    When we add our numbers using the kendellsAddNumberFunction function
    Then the result should equal 134877708
    
  Scenario: A person wants to add two numbers together using Zach's Function
    Given we have a function that can add two numbers called zachmultiplyTwoNumbersandsubtractnumberTwo
      And we want to use 3479225 as the first number
      And we want to use 45432345 as the second number
    When we add our numbers using the zachmultiplyTwoNumbersandsubtractnumberTwo function
    Then the result should equal 48911570
    
  Scenario: A person wants to add two numbers together using Matt's Function
    Given we have a function that can add two numbers called mattsDestroyNumbersFunction
      And we want to use 1 as the first number
      And we want to use 2 as the second number
    When we add our numbers using the mattsDestroyNumbersFunction function
    Then the result should equal 2
    
  Scenario: A person wants to add two numbers together using Frank's Function
    Given we have a function that can add two numbers called frankSubtractTwoNumbers
      And we want to use 0 as the first number
      And we want to use 0 as the second number
    When we add our numbers using the frankSubtractTwoNumbers function
    Then the result should equal 0

  Scenario: A person wants to add two numbers together using Sam's Function
    Given we have a function that can add two numbers called samsAddTwoNumbers
      And we want to use 21 as the first number
      And we want to use 125 as the second number
    When we add our numbers using the samsAddTwoNumbers function
    Then the result should equal 146