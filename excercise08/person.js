const person = (function (name, password) {
    const pw = password;
    (!person.prototype.counter) ? person.prototype.counter = 1 : person.prototype.counter++;
    return {
        name: name,
        get password() {
            return pw;
        },
        get counter() {
            return person.prototype.counter;
        },
        set counter(value) {
            person.prototype.counter = value;
        }
    }
});

const first = person("first", "secret");
const second = person("second", "private");

// (a)
console.log(first.name);
console.log(second.name);

// (b)
console.log(first.pw) //undefined because private
console.log(first.password) //access only via getter

console.log(second.pw) //undefined because private
console.log(second.password) //access only via getter

// (c)
console.log(first.counter);
console.log(second.counter);

// the counter affects all shared counters
first.counter = 13;
console.log(first.counter);
console.log(second.counter);

