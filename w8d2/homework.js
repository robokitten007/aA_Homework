function madLib(verb, adj, noun) {

    return `We shall ${verb.toUpperCase()} the ${adj.toUpperCase()} ${noun.toUpperCase()}.`

}



function isSubstring(searchString, subString){
    return searchString.incudes(subString)
}


function fizzBuzz(array){
    let fizBuzzArr =[];
   
    for (let i = 0; i < array.length; i++){
        if ((array[i]%3 == 0) || (array[i]%5 == 0) && (array[i]%15 !=0)){
            fizzBuzz.push(array[i]);
        }
    }
    return fizzBuzzArr
}



function isPrime(n){

    if (n < 2) {
        return false;
    }
    for (let i = 2;i < n; i++ ){
        if (n % i == 0){
            return false;
        }

    }
    return true;
}

function sumOfPrimes(n){

    let sum = 0;
    let count = 0;
    let i = 2;

    while (count < n){
        if (isPrime(i)){
            sum += i;
            count++;
        }
        i++;
    }
    return sum;

}