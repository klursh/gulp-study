"use strict";

var _createClass = (function () { function defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ("value" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } } return function (Constructor, protoProps, staticProps) { if (protoProps) defineProperties(Constructor.prototype, protoProps); if (staticProps) defineProperties(Constructor, staticProps); return Constructor; }; })();

function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError("Cannot call a class as a function"); } }

var a = 3;
console.log(a);

var b = 4;
console.log(a + b);

console.log("hello abc");

var Abc = (function () {
    function Abc() {
        _classCallCheck(this, Abc);

        this._message = "hello world";
    }

    _createClass(Abc, [{
        key: "hello",
        value: function hello() {
            console.log(this._message);
        }
    }]);

    return Abc;
})();

var abc = new Abc();
abc.hello();