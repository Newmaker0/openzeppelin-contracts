// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Sample {
    string public publicStr;
    string private privateStr;
    string internal internalStr;
    uint256 public publicUint;
    uint256 private privateUint;
    uint256 internal internalUint;

    constructor(
        string memory _publicStr,
        string memory _privateStr,
        string memory _internalStr,
        uint256 _publicUint,
        uint256 _privateUint,
        uint256 _internalUint
    ) {
        publicStr = _publicStr;
        privateStr = _privateStr;
        internalStr = _internalStr;
        publicUint = _publicUint;
        privateUint = _privateUint;
        internalUint = _internalUint;
    }

    function addStrPublic() public view returns (string memory) {
        return string(abi.encodePacked(publicStr, privateStr, internalStr));
    }

    function addStrPrivate() private view returns (string memory) {
        return string(abi.encodePacked(publicStr, privateStr, internalStr));
    }

    function addStrInternal() internal view returns (string memory) {
        return string(abi.encodePacked(publicStr, privateStr, internalStr));
    }

    function addUintPublic() public view returns (uint256) {
        return publicUint + privateUint + internalUint;
    }

    function addUintPrivate() private view returns (uint256) {
        return publicUint + privateUint + internalUint;
    }

    function addUintInternal() internal view returns (uint256) {
        return publicUint + privateUint + internalUint;
    }

    function addUintExternal() external view returns (uint256) {
        return publicUint + privateUint + internalUint;
    }
}
