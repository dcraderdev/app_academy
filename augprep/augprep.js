'use strict'

// function moveZeroes(nums) {
//   // 1. Set a pointer to the last element in the array
//   let last = nums.length - 1;

//   // 2. Walk through each element of the array
//   for (let i = 0; i < last; i++) {

//     // 3. If the element is zero,
//     if (nums[i] == 0) {
//       // swap its position with the element at the pointer
//       [nums[i], nums[last]] = [nums[last], nums[i]];

//       // then decrement the pointer
//       last--;
//     }
//   }

//   return nums;
// }

let nums = [0, 1, 0, 3, 12];

let i = 0
const numsLength = nums.length - 1

function moveZeroes(nums) {
  //  while (let i = 0; i < nums.length - 1;) {
  while (i < numsLength) {

    //console.log(i);
    if (nums[i] === 0) {
      nums.push(nums[i]);
      nums.slice(nums[i]);
      console.log(i);
      console.log(nums);
      // nums.push(0);
    }
    i++;
  }
  return nums;
};


console.log(nums);
console.log(moveZeroes(nums));


// console.log();
// //     console.log(i);

// //     if (nums[i] === 0) {
// //       nums.splice(i)
// //     }
// //   }
// // };



console.log('hi');
console.log(9 / 2);
console.log(2 * 2);
console.log(2 + 2);
console.log(2 - 2);
console.log(56 % 2);

console.log("Strin''''g");
console.log(`"Str"!"!@"QW"ER"W$QX"#${"    hi    "}in''''g"`);

console.log("Hello".indexOf("ll"));


function callMe() {
  console.log("hi");
};
callMe();
// console.log(callMe());

// function math(num1, num2) {
//   console.log(num1 + num2);
// };

// console.log(math(2, 2));

function avgOfFour(num1, num2, num3, num4) {
  return (num1 + num2 + num3 + num4) / 4
}

function yell(str) {
  return str.toUpperCase() + "!!!"
}


console.log(yell("I want to go to the store")); // => "I WANT TO GO TO THE STORE!!!"
console.log(yell("Time to program")); // => "TIME TO PROGRAM!!!"


function echo(str) {
  console.log(str.toUpperCase() + "! ..." + str + "! ..." + str.toLowerCase() + "! ...");
};

echo("Mom!"); // => prints "MOM! ... Mom! ... mom!"
echo("hey"); // => prints "HEY ... hey ... hey"
echo("JUMp"); // => prints "JUMP ... JUMp ... jump"

function mathFun(x) {
  if (x === "math") {
    if (x === "math" && x[0] === "m") {
      if (x[1] === "a") {
        console.log("this got confusing fast");
      } else {
        console.log("that is not math!");
      }
    } else {
      console.log("that is for sure not math!");
    }
  } else {
    console.log("I will return if everything above me is false!");
  }
};

mathFun("math"); // => "this got confusing fast"
mathFun("Math"); // => "this got confusing fast"

let numbersAndLetters = ["boo", "z", 17, ["cat"]];
console.log(numbersAndLetters[0]); // => "b"
console.log(numbersAndLetters[1]); // => "z"
console.log(numbersAndLetters[2]); // => 17
console.log(numbersAndLetters[3]); // => "cat"


function logBetween(lowNum, highNum) {
  for (let i = lowNum; i <= highNum; i++)
    console.log(i);
}
function logBetween(lowNum, highNum) {
  let i = lowNum
  while (i <= highNum) {
    console.log(i);
    i++;
  }
};

logBetween(2, 6);

function printFives(max) {
  let i = 0;
  while (i < max) {
    if (i % 5 === 0) {
      console.log(i);
    }
    i++;
  }
}

// Example:

printFives(40) // prints out:
// 0
// 5
// 10
// 15

function logBetweenStepper(min, max, step) {
  let i = min;
  while (i <= max) {
    console.log(i);
    i += step;
  }

}


// Examples:
logBetweenStepper(5, 9, 1); // prints out:
// 5
// 6
// 7
// 8
// 9


logBetweenStepper(-10, 15, 5)  // prints out:
// -10
// -5
// 0
// 5
// 10
// 15

function threeOrSeven(num) {
  if (num % 3 === 0 || num % 7 === 0)
    return true;
  else return false;
}

console.log(threeOrSeven(3));   // => true
console.log(threeOrSeven(42));  // => true
console.log(threeOrSeven(8));   // => false

function sumArray(array) {
  let sum = 0;
  for (let i = 0; i <= array.length - 1; i++) {
    sum += array[i]
  }
  return sum
}

console.log(sumArray([5, 6, 4])); // => 15
console.log(sumArray([7, 3, 9, 11])); // => 30

function combineArray(array1, array2) {
  return array1.concat(array2, array2, array1, array1);
}

console.log(combineArray([1, 2], [3, 4])); // => [1, 2, 3, 4]
console.log(combineArray([17, 5], [6, 7]));  // => [17, 5, 6, 7]


// function doubler(numbers) {
//     let i = 0
//     doubled = []
//     while ( i < numbers.length - 1) {
//      	doubled.concat(numbers[i] * 2);
//       i++;
//     }
//   return doubled
// }



function doubler(array) {
  let i = 0
  let doubled = []
  while (i <= array.length - 1) {
    let tempNum = array[i] * 2;
    doubled = doubled.concat(tempNum);
    i++;
  }
  return doubled
}

console.log(doubler([1, 2, 3, 4])); // => [2, 4, 6, 8]
console.log(doubler([7, 1, 8])); // => [14, 2, 16]

function countVowels(word) {
  const vowels = ["a", "e", "i", "o", "u"]
  let count = 0;
  let i = 0;
  while (i <= word.length - 1) {
    //if (word[i].includes(vowels)){
    if (vowels.includes(word[i])) {

      count++;
    }
    i++;
  }
  return count;
};

console.log(countVowels("bootcamp")); // => 3
console.log(countVowels("apple")); // => 2
console.log(countVowels("pizza")); // => 2


// function wordWithinArray(array, word) {
//     if (array.indexOf("b")) {
//     	return true;
//       // else return false;
//     }
// };


function wordWithinArray(array, word) {
  if (array.indexOf(word) >= 0) {
    return true;
  } else {
    return false;
  }
};

console.log(
  wordWithinArray(["apple", "banana", "caramel", "chocolate"], "apple")
); //=> true

console.log(wordWithinArray(
  ["dog", "cat", "camel", "bird"], "camel")
); //=> true

console.log(
  wordWithinArray(["apple", "banana", "caramel", "chocolate"], "pineapple")
); //=> false

console.log(wordWithinArray(
  ["dog", "cat", "camel", "bird"], "panther")
); //=> false


// So the two rules for our version of Pig Latin are:

// 1. For words that start with a vowel, add 'yay' to the end of the word.
// 2. For words that start with a non-vowel, move all letters that come
// **before the first vowel** to the **end of the word** then add 'ay'

function pigLatinWord(word) {
  let vowels = "aeiou";
  let pigLatinWord = "";
  if (vowels.includes(word[0])) {
    return word + "yay";
  } for (let index = 0; index < word.length; index++) {
    let letter = word[index];

    if (vowels.includes(letter)) {
      let firstPart = word.slice(index);
      let secondPart = word.slice(0, index);
      return firstPart + secondPart + "ay";
    }
  }
};


//     if (vowels.inlcudes(word[i]){
//       pigLatinWord += word[i];
//     }
//     i++;
//   }
// };

console.log(pigLatinWord("apple")); //=> "appleyay"
// console.log(pigLatinWord("eat")); //=> "eatyay"
console.log(pigLatinWord("banana")); //=> "ananabay"
// console.log(pigLatinWord("trash")); //=> "ashtray"
