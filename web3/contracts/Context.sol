// SPDX-License-Identifier: UNLICENSED  
// pragma solidity ^0.8.9;
pragma solidity >=0.4.0 <0.9.0;


abstract contract Context {
    function _msgSender() internal view virtual returns (address) {
        return msg.sender;
    }

    function _msgData() internal view virtual returns (bytes calldata) {
        return msg.data;
    }
}


