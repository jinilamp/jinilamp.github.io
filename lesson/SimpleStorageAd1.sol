pragma solidity ^0.4.0;

contract SimpleStorageAd1 {

    uint storedData;

    event logHist(uint data, uint timestamp);

    function set(uint x) {
        storedData = x;

        emit logHist(x, now);
    }

    function get() constant returns (uint) {
        return storedData;
    }
}
