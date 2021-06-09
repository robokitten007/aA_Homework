function titleize(names, callback){

    let titleized = names.map(name => `Mx. ${name} Jingleheimer Schmidt`);
    callback(titleized);
};

titleize(["Mary", "Brian", "Leo"], (eles) => {
    eles.forEach(ele => console.log(ele));
});



function Elephant(name, height, tricks){

    this.name = name;
    this.height = heigh;
    this.tricks = tricks;

}

Elephant.prototype.trumpet = function(){
    console.log(`${this.name} the elepant goes 'phrRRRRR!!!'`);
};

Elephant.prototype.grow = function(){
    this.height = this.height + 12;
};

Elephant.prototype.addTrick = function(trick){
    this.tricks.push(trick);
};

Elephant.prototype.play = function(){

    trickIndex = Math.floor(Math.random()* this.tricks.length);
    console.log(`${this.name} is ${this.tricks[trickIndex]}!`);
}