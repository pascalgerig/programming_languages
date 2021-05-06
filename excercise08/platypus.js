const Animal = (function () {
    return {};
});

const Mammal = (function (numberOfNipples) {
    const mammal = Object.create(Animal())
    const nON = numberOfNipples;
    mammal.nurse = function () {
        alert("I'm nursing");
    }
    mammal.getNumberOfNipples = function () {
        alert(nON);
    }
    return mammal;
});

const Oviparous = (function () {
    const oviparous = Object.create(Animal())
    oviparous.spawn = function () {
        alert("I'm spawning");
    }
    return oviparous;
});

const Dolphin = (function (numberOfNipples){
    const mammal = Mammal(numberOfNipples);
    const dolphin = Object.create(mammal);
    dolphin.swim = function () {
        alert("I'm swimming");
    }
    return dolphin;
});

const Snake = (function (){
    const oviparous = Oviparous();
    const snake = Object.create(oviparous);
    snake.crawl = function () {
        alert("I'm crawling");
    }
    return snake;
});

const Platypus = (function (numberOfNipples){
    const mammal = Mammal(numberOfNipples);
    const oviparous = Oviparous();
    const platypus = Object.create(mammal);
    platypus.spawn = oviparous.spawn
    return platypus;
});

const mammal = Mammal(35);
const dolphin = Dolphin(2);
const snake = Snake();
const platypus = Platypus(6);