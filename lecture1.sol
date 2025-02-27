pragma solidity >=0.8.2 <0.9.0;

contract lec1 {
    string message = "Hello world";
    uint a = 9;
    uint b = 8;

    function returnMessage() public view returns (string memory){
        return message;
    }

    function inc() public returns(uint){
       return ++a;
    }

    function dec() public returns(uint){
        return --a;
    }
    bool x = true;
    function toggleVar() public returns(bool){
        if (x==true){
            x = false;
        }
        else {
            x =true;
        }
        return x;
    }

    function oddOrEven(uint num) public pure returns(string memory){
        if (num%2==0){
            return "the num is even";
        }
        else{
            return "the num is odd";
        }
    }

    function concatenate(string memory s1, string memory s2) public pure returns(string memory){
        return string(abi.encodePacked(s1, s2));
    }

    function returnError(uint y) public pure returns (bool){
        require(y%2 == 0, "number is odd - error");
        return true;
    }
    }
