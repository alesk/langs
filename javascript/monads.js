// Takes a value and returns an object, so it must be a constructo
// Based on Douglas Crockford's https://www.youtube.com/watch?v=b0EF0VTs9Dc

function unit(value) {
        return [value];
}

function bind(monad, fn) {
        return fn(monad[0]);
}


console.log(unit(10));

// monadic axioms
//
// bind(unit(value), f)    === f(value)
// bind(monad, unit)       === monad
// bind(bind(monad, f), g) === bind(monad, function(value) { return bind(f(value), g); }
//
// bind.monad(f)
//
//

function MONAD() {
        return function unit(value) {
                var monad = Object.create(null);
                monad.bind = function(func) {
                        return func(value);
                };
                return monad;
        };
}


// Identity monad

var identity = MONAD();
var monad = identity("Hello Monad");
monad.bind(console.log);
