Feature: Make an espresso with a complete espresso machine
  A user wants an espresso
  Scenario: A user plugs the espresso machine and makes an espresso
    Given an espresso machine with 0.10 l of min capacity, 3.0 l of max capacity, 600.0 l per h of water flow for the pump
    And a "cup" with a capacity of 0.10
    When I plug the machine to electricity
    And I add 1 liter of water in the water tank
    And I add 0.5 liter of "ARABICA" in the bean tank
    And I made a coffee "ARABICA"
    Then the coffee machine return a coffee mug not empty
    And a coffee volume equals to 0.10
    And a coffee "cup" containing a coffee type "ARABICA"

  Scenario: A user plugs the espresso machine and makes an espresso
    Given an espresso machine with 0.10 l of min capacity, 3.0 l of max capacity, 600.0 l per h of water flow for the pump
    And a "mug" with a capacity of 0.10
    When I plug the machine to electricity
    And I add 1 liter of water in the water tank
    And I add 0.5 liter of "ROBUSTA" in the bean tank
    And I made a coffee "ROBUSTA"
    Then the coffee machine return a coffee mug not empty
    And a coffee volume equals to 0.10
    And a coffee "mug" containing a coffee type "ROBUSTA"

  Scenario: A user plug in the coffee machine and verifies that it is powered on
    Given an espresso machine with 0.1 l of min capacity, 3.0 l of max capacity, 500 l per h of water flow for the pump
    When I plug the machine to electricity
    Then the coffee machine is powered on