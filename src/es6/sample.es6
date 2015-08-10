let a = 3;
console.log(a);

let b = 4;
console.log(a + b);

console.log("hello abc");

class Abc {
    constructor() {
        this._message = "hello world";
    }
    hello() {
        console.log(this._message);
    }
}

let abc = new Abc();
abc.hello();