

프런트엔드 개발자를 위해 꼭 알아야 할 10가지 JavaScript 팁


https://medium.com/@london.lingo.01/10-must-know-javascript-tips-for-front-end-developers-b78b4afe6ad3



Tip 1: Use const and let instead of var
One of the most common and confusing issues in JavaScript is the declaration and scope of variables. In the past, JavaScript only had one way to declare variables: using the var keyword. However, var has some drawbacks and limitations that can lead to bugs and errors. For example, var variables are function-scoped, meaning they are accessible within the function where they are declared, but not outside. This can cause problems when you have nested functions or loops that use the same variable name. Also, var variables are hoisted, meaning they are moved to the top of their scope before the code is executed. This can cause problems when you try to access a variable before it is declared or initialized.

To avoid these issues, ES6 introduced two new ways to declare variables: using the const and let keywords. Const and let variables are block-scoped, meaning they are accessible within the block where they are declared, but not outside. This can prevent accidental overwriting or leakage of variables. Also, const and let variables are not hoisted, meaning they are only available after they are declared and initialized. This can prevent accessing undefined or uninitialized variables.

Another difference between const and let is that const variables cannot be reassigned after they are declared. This means that once you assign a value to a const variable, you cannot change it later. This can prevent accidental or intentional modification of variables that should remain constant. Let variables, on the other hand, can be reassigned after they are declared. This means that you can change the value of a let variable as many times as you want.

Here is an example of using const and let to declare variables:

          // Using var
          var name = "John";
          var age = 25;
          var hobbies = ["reading", "gaming", "coding"];
          
          function sayHello() {
            var name = "Jane"; // This will overwrite the global name variable
            console.log("Hello, " + name); // Hello, Jane
          }
      
      sayHello();
      console.log(name); // Jane
      
      // Using const and let
      const name = "John"; // This will create a constant name variable
      let age = 25; // This will create a let age variable
      const hobbies = ["reading", "gaming", "coding"]; // This will create a constant hobbies array
      
      function sayHello() {
        let name = "Jane"; // This will create a local name variable
        console.log("Hello, " + name); // Hello, Jane
      }
      
      sayHello();
      console.log(name); // John
      
      // You can change the value of a let variable
      age = 26;
      console.log(age); // 26
      
      // You cannot change the value of a const variable
      name = "Jack"; // TypeError: Assignment to constant variable.
      hobbies.push("music"); // You can modify the elements of a const array, but not reassign it
      console.log(hobbies); // ["reading", "gaming", "coding", "music"]
      As you can see, using const and let can make your code more readable, performant and debuggable. It can also help you avoid common errors and bugs that can occur with var variables. Therefore, you should always use const and let instead of var when declaring variables in JavaScript.
      
      Tip 2: Use arrow functions for concise and clean syntax
      Another common and important feature of JavaScript is functions. Functions are blocks of code that can be defined and executed to perform a specific task or operation. Functions can also accept parameters and return values. However, functions can also be verbose and complex to write and use, especially when dealing with the this keyword or binding issues.
      
      To simplify and improve the syntax and functionality of functions, ES6 introduced arrow functions. Arrow functions are a shorter and more expressive way to write functions in JavaScript. Arrow functions use the => symbol to separate the parameters and the body of the function. Arrow functions can also omit the parentheses around the parameters if there is only one parameter, and the curly braces and return keyword around the body if there is only one expression.
      
      Here is an example of using arrow functions to write shorter and more expressive code:
      
      // Using regular functions
      function add(a, b) {
        return a + b;
      }
      
      function greet(name) {
        return "Hello, " + name;
      }
      
      function square(x) {
        return x * x;
      }
      
      console.log(add(2, 3)); // 5
      console.log(greet("John")); // Hello, John
      console.log(square(4)); // 16
      
      // Using arrow functions
      const add = (a, b) => a + b;
      const greet = name => "Hello, " + name;
      const square = x => x * x;
      
      console.log(add(2, 3)); // 5
      console.log(greet("John")); // Hello, John
      console.log(square(4)); // 16

      
As you can see, using arrow functions can make your code more concise and clean. It can also help you avoid some of the pitfalls and confusion that can occur with regular functions. For example, arrow functions do not have their own this keyword, meaning they inherit the this value from their enclosing scope. This can prevent issues with losing or changing the context of this when using callbacks or methods. Arrow functions also do not have their own arguments object, meaning they rely on the named parameters or the rest operator to access the arguments passed to them. This can prevent issues with accessing or modifying the arguments object in nested or strict mode functions.

Therefore, you should always use arrow functions instead of regular functions when writing concise and clean code in JavaScript.

Tip 3: Use template literals for dynamic and multi-line strings
One of the most common and useful data types in JavaScript is strings. Strings are sequences of characters that can be used to store and manipulate text, such as names, messages, URLs, etc. However, strings can also be tricky and tedious to work with, especially when you need to create dynamic or multi-line strings. For example, you need to use the + operator or the concat method to concatenate strings and variables, and you need to use the \n character or the backslash () to create new lines or escape characters.

To simplify and improve the creation and manipulation of strings, ES6 introduced template literals. Template literals are a new way to write strings in JavaScript that use the backtick (`) character instead of the single (‘) or double (“) quotes. Template literals allow embedding expressions and variables inside strings using the ${} syntax. Template literals also allow creating multi-line strings without using any special characters or escaping.

Here is an example of using template literals to create dynamic and multi-line strings with ease:

// Using regular strings
var name = "John";
var age = 25;
var message = "Hello, " + name + ".\nYou are " + age + " years old.";
console.log(message);
// Hello, John.
// You are 25 years old.

// Using template literals
const name = "John";
const age = 25;
const message = `Hello, ${name}.
You are ${age} years old.`;
console.log(message);
// Hello, John.
// You are 25 years old.
As you can see, using template literals can make your code more readable, interpolation and escaping. It can also help you avoid some of the errors and bugs that can occur with regular strings. For example, template literals do not require any quotation marks around the embedded expressions or variables, meaning they can handle any data type or value without causing syntax errors. Template literals also do not require any special characters or escaping for creating new lines or other characters, meaning they can handle any format or layout without causing display issues.

Therefore, you should always use template literals instead of regular strings when creating dynamic or multi-line strings in JavaScript.

Tip 4: Use destructuring assignment for extracting values from objects and arrays
Another common and useful data type in JavaScript is objects and arrays. Objects and arrays are collections of values that can be used to store and manipulate data, such as properties, methods, elements, etc. However, objects and arrays can also be complex and cumbersome to work with, especially when you need to extract or assign values from them. For example, you need to use the dot (.) or the bracket ([]) notation to access or modify the properties or elements of objects or arrays, and you need to use multiple variables or statements to extract or assign multiple values from them.

To simplify and improve the extraction and assignment of values from objects and arrays, ES6 introduced destructuring assignment. Destructuring assignment is a new way to write assignments in JavaScript that use the {} or [] syntax to unpack values from objects or arrays into variables. Destructuring assignment can also use the = symbol to provide default values or the … symbol to collect the remaining values into a new variable.

Here is an example of using destructuring assignment to simplify code and avoid repetition:

// Using regular assignments
var person = {
  name: "John",
  age: 25,
  hobbies: ["reading", "gaming", "coding"]
};

var name = person.name;
var age = person.age;
var hobbies = person.hobbies;

console.log(name); // John
console.log(age); // 25
console.log(hobbies); // ["reading", "gaming", "coding"]

// Using destructuring assignment
const person = {
  name: "John",
  age: 25,
  hobbies: ["reading", "gaming", "coding"]
};

const { name, age, hobbies } = person;

console.log(name); // John
console.log(age); // 25
console.log(hobbies); // ["reading", "gaming", "coding"]
As you can see, using destructuring assignment can make your code more readable, performant and convenient. It can also help you avoid some of the errors and bugs that can occur with regular assignments. For example, destructuring assignment can handle nested or complex objects or arrays without causing syntax errors. Destructuring assignment can also handle missing or undefined values without causing reference errors.

Therefore, you should always use destructuring assignment instead of regular assignments when extracting or assigning values from objects or arrays in JavaScript.

Tip 5: Use spread and rest operators for manipulating arrays and objects
Another common and important feature of JavaScript is the ability to manipulate arrays and objects. Arrays and objects are collections of values that can be used to store and manipulate data, such as properties, methods, elements, etc. However, arrays and objects can also be difficult and tedious to manipulate, especially when you need to copy, merge or split them. For example, you need to use the slice, concat or splice methods to copy, merge or split arrays, and you need to use the Object.assign or Object.keys methods to copy or merge objects.

To simplify and improve the manipulation of arrays and objects, ES6 introduced the spread and rest operators. The spread operator (…) allows expanding or spreading the values of an array or an object into individual values. The rest operator (…) allows collecting or gathering the remaining values of an array or an object into a new variable.

Here is an example of using the spread and rest operators to manipulate arrays and objects with ease:

// Using regular methods
var arr1 = [1, 2, 3];
var arr2 = [4, 5, 6];

// Copying an array
var arr3 = arr1.slice();
console.log(arr3); // [1, 2, 3]

// Merging two arrays
var arr4 = arr1.concat(arr2);
console.log(arr4); // [1, 2, 3, 4, 5, 6]

// Splitting an array
var arr5 = arr4.splice(0, 3);
console.log(arr5); // [1, 2, 3]
console.log(arr4); // [4, 5, 6]

var obj1 = { name: "John", age: 25 };
var obj2 = { hobbies: ["reading", "gaming", "coding"] };

// Copying an object
var obj3 = Object.assign({}, obj1);
console.log(obj3); // { name: "John", age: 25 }

// Merging two objects
var obj4 = Object.assign({}, obj1, obj2);
console.log(obj4); // { name: "John", age: 25, hobbies: ["reading", "gaming", "coding"] }

// Using spread and rest operators
const arr1 = [1, 2, 3];
const arr2 = [4, 5, 6];

// Copying an array
const arr3 = [...arr1];
console.log(arr3); // [1, 2, 3]

// Merging two arrays
const arr4 = [...arr1, ...arr2];
console.log(arr4); // [1, 2, 3, 4, 5, 6]

// Splitting an array
const [first, second, third] = arr1;
console.log(first); // 1
console.log(second); // 2
console.log(third); // 3

const [head,...tail] = arr4;
console.log(head); // 1
console.log(tail); // [2 ,3 ,4 ,5 ,6]

const obj1 = { name: "John", age: 25 };
const obj2 = { hobbies: ["reading", "gaming", "coding"] };

// Copying an object
const obj3 = {...obj1};
console.log(obj3); // { name: "John", age: 25 }

// Merging two objects
const obj4 = {...obj1,...obj2};
console.log(obj4); // { name: "John", age: 25,hobbies: ["reading", "gaming", "coding"] }
As you can see, using the spread and rest operators can make your code more readable flexibility and immutability. It can also help you avoid some of the errors and bugs that can occur with regular methods. For example, the spread operator can handle nested or complex arrays or objects without causing syntax errors. The rest operator can handle missing or undefined values without causing reference errors.

Therefore, you should always use the spread and rest operators instead of regular methods when manipulating arrays or objects in JavaScript.

Tip 6: Use async/await for handling asynchronous operations
Another common and important feature of JavaScript is the ability to handle asynchronous operations. Asynchronous operations are tasks or functions that can run in the background without blocking the main thread of execution. Asynchronous operations can be used to perform tasks such as fetching data from a server, reading or writing files, setting timers, etc. However, asynchronous operations can also be challenging and complex to handle, especially when dealing with callbacks, promises or errors.

To simplify and improve the handling of asynchronous operations, ES8 introduced async/await. Async/await is a new way to write asynchronous code in JavaScript that uses the async and await keywords. The async keyword allows defining an asynchronous function that returns a promise. The await keyword allows pausing the execution of an asynchronous function until a promise is resolved or rejected.

Here is an example of using async/await to handle asynchronous operations with ease:

// Using callbacks
function fetchData(url, callback) {
  // Simulate fetching data from a server
  setTimeout(() => {
    const data = "Some data from " + url;
    callback(null, data);
  }, 1000);
}

function processData(data, callback) {
  // Simulate processing data
  setTimeout(() => {
    const result = "Processed " + data;
    callback(null, result);
  }, 1000);
}

function displayData(data, callback) {
  // Simulate displaying data
  setTimeout(() => {
    console.log(data);
    callback(null, "Done");
  }, 1000);
}

// Using nested callbacks to handle asynchronous operations
fetchData("https://example.com", (err1, data1) => {
  if (err1) {
    console.error(err1);
  } else {
    processData(data1, (err2, data2) => {
      if (err2) {
        console.error(err2);
      } else {
        displayData(data2, (err3, data3) => {
          if (err3) {
            console.error(err3);
          } else {
            console.log(data3); // Done
          }
        });
      }
    });
  }
});

// Using async/await
async function fetchData(url) {
  // Simulate fetching data from a server
  return new Promise(resolve => {
    setTimeout(() => {
      const data = "Some data from " + url;
      resolve(data);
    }, 1000);
  });
}

async function processData(data) {
  // Simulate processing data
  return new Promise(resolve => {
    setTimeout(() => {
      const result = "Processed " + data;
      resolve(result);
    }, 1000);
  });
}

async function displayData(data) {
  // Simulate displaying data
  return new Promise(resolve => {
    setTimeout(() => {
      console.log(data);
      resolve("Done");
    }, 1000);
  });
}

// Using async/await to handle asynchronous operations
async function main() {
  try {
    const data1 = await fetchData("https://example.com");
    const data2 = await processData(data1);
    const data3 = await displayData(data2);
    console.log(data3); // Done
  } catch (error) {
    console.error(error);
  }
}

main();
As you can see, using async/await can make your code more readable error handling and simplicity. It can also help you avoid some of the pitfalls and confusion that can occur with callbacks or promises. For example, async/await can handle nested or sequential asynchronous operations without causing callback hell or promise chaining. Async/await can also handle errors or rejections using the try/catch blocks or the .catch() method.

Therefore, you should always use async/await instead of callbacks or promises when handling asynchronous operations in JavaScript.

Tip 7: Use modules for organizing and reusing code
Another common and important feature of JavaScript is the ability to organize and reuse code. Code organization and reuse can help you write code that is more readable, maintainable and modular. However, code organization and reuse can also be difficult and tedious to achieve, especially when dealing with multiple files or dependencies.

To simplify and improve the organization and reuse of code, ES6 introduced modules. Modules are a new way to write code in JavaScript that use the import and export keywords. Modules allow dividing code into separate files that can be imported and exported as needed. Modules can also use the default or named syntax to specify what values or features are exported or imported.

Here is an example of using modules to organize and reuse code with ease:

// math.js file
// Exporting a default value
export default function add(a, b) {
  return a + b;
}

// Exporting named values
export function subtract(a, b) {
  return a - b;
}

export function multiply(a, b) {
  return a * b;
}

export function divide(a, b) {
  return a / b;
}

// app.js file
// Importing a default value
import add from "./math.js";

console.log(add(2, 3)); // 5

// Importing named values
import { subtract, multiply, divide } from "./math.js";

console.log(subtract(5, 2)); // 3
console.log(multiply(2, 3)); // 6
console.log(divide(6, 2)); // 3

// Importing all values as an object
import * as math from "./math.js";

console.log(math.add(2, 3)); // 5
console.log(math.subtract(5, 2)); // 3
console.log(math.multiply(2, 3)); // 6
console.log(math.divide(6, 2)); // 3
As you can see, using modules can make your code more readable maintainability and modularity. It can also help you avoid some of the errors and bugs that can occur with regular scripts or dependencies. For example, modules can handle scope or naming conflicts without causing syntax errors. Modules can also handle loading or caching issues without causing performance or memory issues.

Therefore, you should always use modules instead of regular scripts or dependencies when organizing and reusing code in JavaScript.

Tip 8: Use classes for creating objects with shared properties and methods
Another common and useful data type in JavaScript is objects. Objects are collections of values that can be used to store and manipulate data, such as properties, methods, etc. However, objects can also be complex and cumbersome to create and use, especially when you need to create multiple objects with a common structure and behavior.

To simplify and improve the creation and use of objects, ES6 introduced classes. Classes are a new way to write objects in JavaScript that use the class keyword. Classes allow defining a constructor, properties and methods for an object. Classes can also use the extends or super keywords to implement inheritance or polymorphism.

Here is an example of using classes to create objects with shared properties and methods with ease:

// Using regular objects
function Person(name, age) {
  this.name = name;
  this.age = age;
}

Person.prototype.greet = function () {
  console.log("Hello, I am " + this.name + " and I am " + this.age + " years old.");
};

function Student(name, age, course) {
  Person.call(this, name, age);
  this.course = course;
}

Student.prototype = Object.create(Person.prototype);
Student.prototype.constructor = Student;

Student.prototype.study = function () {
  console.log("I am studying " + this.course + ".");
};

var john = new Person("John", 25);
var jane = new Student("Jane", 22, "Computer Science");

john.greet(); // Hello, I am John and I am 25 years old.
jane.greet(); // Hello, I am Jane and I am 22 years old.
jane.study(); // I am studying Computer Science.

// Using classes
class Person {
  constructor(name, age) {
    this.name = name;
    this.age = age;
  }

  greet() {
    console.log(`Hello, I am ${this.name} and I am ${this.age} years old.`);
  }
}

class Student extends Person {
  constructor(name, age, course) {
    super(name, age);
    this.course = course;
  }

  study() {
    console.log(`I am studying ${this.course}.`);
  }
}

const john = new Person("John", 25);
const jane = new Student("Jane", 22, "Computer Science");

john.greet(); // Hello, I am John and I am 25 years old.
jane.greet(); // Hello, I am Jane and I am 22 years old.
jane.study(); // I am studying Computer Science.
As you can see, using classes can make your code more readable encapsulation and inheritance. It can also help you avoid some of the errors and bugs that can occur with regular objects. For example, classes can handle constructor or prototype issues without causing syntax errors. Classes can also handle inheritance or polymorphism issues without causing reference errors.

Therefore, you should always use classes instead of regular objects when creating objects with shared properties and methods in JavaScript.

Tip 9: Use promises for handling asynchronous operations
Another common and important feature of JavaScript is the ability to handle asynchronous operations. Asynchronous operations are tasks or functions that can run in the background without blocking the main thread of execution. Asynchronous operations can be used to perform tasks such as fetching data from a server, reading or writing files, setting timers, etc. However, asynchronous operations can also be challenging and complex to handle, especially when dealing with callbacks or errors.

To simplify and improve the handling of asynchronous operations, ES6 introduced promises. Promises are a new way to write asynchronous code in JavaScript that use the Promise object. Promises represent the eventual completion or failure of an asynchronous operation. Promises can also use the then or catch methods to handle the resolution or rejection of an asynchronous operation.

Here is an example of using promises to handle asynchronous operations with ease:

// Using callbacks
function fetchData(url, callback) {
  // Simulate fetching data from a server
  setTimeout(() => {
    const data = "Some data from " + url;
    callback(null, data);
  }, 1000);
}

function processData(data, callback) {
  // Simulate processing data
  setTimeout(() => {
    const result = "Processed " + data;
    callback(null, result);
  }, 1000);
}

function displayData(data, callback) {
  // Simulate displaying data
  setTimeout(() => {
    console.log(data);
    callback(null, "Done");
  }, 1000);
}

// Using nested callbacks to handle asynchronous operations
fetchData("https://example.com", (err1, data1) => {
  if (err1) {
    console.error(err1);
  } else {
    processData(data1, (err2, data2) => {
      if (err2) {
        console.error(err2);
      } else {
        displayData(data2, (err3, data3) => {
          if (err3) {
            console.error(err3);
          } else {
            console.log(data3); // Done
          }
        });
      }
    });
  }
});

// Using promises
function fetchData(url) {
  // Simulate fetching data from a server
  return new Promise((resolve, reject) => {
    setTimeout(() => {
      const data = "Some data from " + url;
      resolve(data);
    }, 1000);
  });
}

function processData(data) {
  // Simulate processing data
  return new Promise((resolve, reject) => {
    setTimeout(() => {
      const result = "Processed " + data;
      resolve(result);
    }, 1000);
  });
}

function displayData(data) {
  // Simulate displaying data
  return new Promise((resolve, reject) => {
    setTimeout(() => {
      console.log(data);
      resolve("Done");
    }, 1000);
  });
}

// Using promises to handle asynchronous operations
fetchData("https://example.com")
  .then(data1 => processData(data1))
  .then(data2 => displayData(data2))
  .then(data3 => console.log(data3)) // Done
  .catch(error => console.error(error));
As you can see, using promises can make your code more readable error handling and simplicity. It can also help you avoid some of the pitfalls and confusion that can occur with callbacks or errors. For example, promises can handle nested or sequential asynchronous operations without causing callback hell or pyramid of doom. Promises can also handle errors or rejections using the catch method or the reject function.

Therefore, you should always use promises instead of callbacks or errors when handling asynchronous operations in JavaScript.

Tip 10: Use console methods for debugging and testing code
Another common and important feature of JavaScript is the ability to debug and test code. Debugging and testing code can help you find and fix errors or bugs in your code, as well as improve its performance or functionality. However, debugging and testing code can also be difficult and tedious to do, especially when dealing with complex or large code.

To simplify and improve the debugging and testing of code, JavaScript provides various console methods. Console methods are built-in functions that can be used to log, inspect or test values in the browser console. Console methods can also use various parameters or options to customize the output or behavior of the console.

Here is an example of using console methods to debug and test code with ease:

// Using console.log
console.log("Hello, world!"); // Hello, world!
console.log(2 + 3); // 5
console.log({ name: "John", age: 25 }); // { name: "John", age: 25 }

// Using console.table
console.table(["apple", "banana", "orange"]); // Displays a table with index and value columns
console.table({ name: "John", age: 25 }); // Displays a table with key and value columns

// Using console.assert
console.assert(2 > 3, "2 is not greater than 3"); // Assertion failed: 2 is not greater than 3
console.assert(3 > 2, "3 is greater than 2"); // No output

// Using console.time and console.timeEnd
console.time("Loop"); // Starts a timer with the label Loop
for (let i = 0; i < 1000000; i++) {
  // Do something
}
console.timeEnd("Loop"); // Ends the timer and logs the elapsed time
// Loop: 3.456 ms

// Using console.group and console.groupEnd
console.group("Animals"); // Starts a group with the label Animals
console.log("Cat");
console.log("Dog");
console.log("Bird");
console.groupEnd(); // Ends the group
// Animals:
//   Cat
//   Dog
//   Bird
As you can see, using console methods can make your code more readable performance and troubleshooting. It can also help you avoid some of the errors and bugs that can occur with regular logging or testing. For example, console methods can handle different data types or values without causing syntax errors. Console methods can also handle formatting or grouping issues without causing display issues.

Therefore, you should always use console methods instead of regular logging or testing when debugging and testing code in JavaScript.
