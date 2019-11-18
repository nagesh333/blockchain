pragma solidity ^0.4.24;

import "remix_tests.sol";

import "./SmartContract1.sol";

contract SmartContract1_test {
    
    SmartContract1 private testContract;
    
    function beforeEach() external {
        testContract = new SmartContract1("Hello");
    }
    
    function shouldHaveAValue() external {
        Assert.equal(testContract.get(), "Hello", "Initial value should be 'Hello' ");
    }

    function shouldChangeValue() external {
        testContract.set("World");
        Assert.equal(testContract.get(), "World", "Value should have changed to 'World' ");
    }
}