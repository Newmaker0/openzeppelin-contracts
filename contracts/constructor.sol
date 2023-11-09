contract LearningContract {
    // Declare three state variables of type uint.
    uint public value1;
    uint public value2;
    uint public value3;

    // The constructor is a special function that is only called once when the contract is deployed.
    // It takes three uint arguments.
    constructor(uint _value1, uint _value2, uint _value3) {
        // Set the state variables with the values provided during deployment.
        value1 = _value1;
        value2 = _value2;
        value3 = _value3;
    }

    // A function to retrieve the stored values.
    // It's a 'view' function, meaning it doesn't alter the state of the contract—thus, it doesn't require any gas to call.
    function getValues() public view returns (uint, uint, uint) {
        return (value1, value2, value3);
    }
}
