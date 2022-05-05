pragma solidity ^0.8.3;

contract IterableMapping {
    mapping(address => uint) public balances;
    mapping(address => bool) public inserted;
    address[] public keys;

    function set(address _key, uint _val) external {
        balances[_key] = _val;

        if (!inserted[_key]) {
            inserted[_key] = true;
            keys.push(_key);
        }  
    }
    function getSize() external view returns (uint) {
        return keys.length;
    }
    function first() external view returns (uint) {
        return balances[keys[0]];
    }

    function last() external view returns (uint) {
        return balances[keys[keys.length - 1]];
    }

    function get(uint _i) external view returns (uint) {
        return balances[keys[_i]];
    }


}



contract Structs {
    struct Car {
        string model;
        uint year;
        address owner;
    }
    //we can use this struct as a state variable by defining
    Car public car;
    Car[] public cars;//creates an array of 
    mapping(address => Car[]) public carsByOwner;

    //initialize struct
    function examples() external {  //defining variables in 'memory' make it so the structs only exist when function is ran, then resets. 
        Car memory toyota = Car("Toyota", 1990, msg.sender); //the input parameters should match the type/order that we declared in struct Car.
        Car memory lambo = Car({year: 1980, model: "Lamborghini", owner: "msg.sender"}) //key-value pairs so we dont have to pass the parameters in the order tof the types in struct car. 
        Car memory tesla;
        tesla.model = "Tesla";
        tesla.year = 2010;
        tesla.owner = msg.sender;

        //we want to make these structs into a state variable, and push the structs into the car array.
        cars.push(toyota);
        cars.push(lambo);
        cars.push(tesla);

        cars.push(Car("Ferrari", 2020, msg.sender));

        Car storage _car = cars[];
        _car.year = 1999;
        delete _car.owner;

        delete cars[1]; 

    }
}



contract Enum {
    enum Status {
        None,
        Pending,
        Shipped,
        Completed,
        Rejected,
        Canceled
    }
    Status public status; //use this enum as a state variable

    struct Order {
        address buyer,
        Status status;
    }
    Order[] public orders; //array of the struct orders

function get() view returns (status) {
    return status; 

    function set(Status _status) external {
        status = _status;
    }

    function ship() external {
        status = State.Shipped;
    }

    function reset() external {
        delete status;
        
    }



}

}