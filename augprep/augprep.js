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