//SPDX-Licence-Identifier: MIT

pragma solidity ^0.8.24;

import {Test} from "forge-std/Test.sol";
import {console2} from "forge-std/console2.sol";
import {MinimalAccount} from "src/ethereum/MinimalAccount.sol";
import {DeployMinimal} from "script/DeployMinimal.s.sol";
import {HelperConfig} from "script/HelperConfig.s.sol";

contract MinimalAccontTest is Test {
    HelperConfig helperConfig;
    MinimalAccount minimalAccount;

    function setUp() public {
        DeployMinimal deployMinimal = new DeployMinimal();
        (helperConfig, minimalAccount) = deployMinimal.deployMinimalAccount();
    }
}
