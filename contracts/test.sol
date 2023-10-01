// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleCounter {
    int256 private count;

    // Event that will be emitted whenever the counter is updated
    event CountUpdated(int256 newCount);

    // Initialize the counter with an initial value of 0
    constructor() {
        count = 0;
    }

    // Function to increment the counter by 1
    function increment() public {
        count += 1;
        emit CountUpdated(count);
    }

    // Function to decrement the counter by 1
    function decrement() public {
        count -= 1;
        emit CountUpdated(count);
    }

    // Function to get the current counter value
    function getCount() public view returns (int256) {
        return count;
    }
}
