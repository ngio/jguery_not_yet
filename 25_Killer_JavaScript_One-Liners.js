[25 Killer JavaScript One-Liners That’ll Make You Look Like a Pro](https://javascript.plainenglish.io/25-killer-javascript-one-liners-thatll-make-you-look-like-a-pro-d43f08529404)

                                                                  

A list of one-liners you should know to up your knowledge of JavaScript.


1.# Copy content to the clipboard

In order to improve the user experience of the website, we often need to copy the content to the clipboard, so that users can paste it to the designated place.

const copyToClipboard = (content) => navigator.clipboard.writeText(content)

copyToClipboard("Hello fatfish")


2.# Get the mouse selection

Have you encountered this kind of situation before?

We need to get the content selected by the user.

const getSelectedText = () => window.getSelection().toString()

getSelectedText()
3.# Shuffle an array
Shuffle an array? This is very common in lottery programs, but it’s not truly random.

const shuffleArray = array => array.sort(() => Math.random() - 0.5)

shuffleArray([ 1, 2,3,4, -1, 0 ]) // [3, 1, 0, 2, 4, -1]

4.# Convert rgba to hexadecimal
We can convert the rgba and hexadecimal color values to each other.

const rgbaToHex = (r, g, b) => "#" + [r, g, b].map(num => parseInt(num).toString(16).padStart(2, '0')).join('')

rgbaToHex(0, 0 ,0) // #000000
rgbaToHex(255, 0, 127) //#ff007f

5.# Convert hexadecimal to rgba
const hexToRgba = hex => {
  const [r, g, b] = hex.match(/\w\w/g).map(val => parseInt(val, 16))
  return `rgba(${r}, ${g}, ${b}, 1)`;
}

hexToRgba('#000000') // rgba(0, 0, 0, 1)
hexToRgba('#ff007f') // rgba(255, 0, 127, 1)

6.# Get the average of multiple numbers
Using reduce we can get the average value of a set of arrays very conveniently.

const average = (...args) => args.reduce((a, b) => a + b, 0) / args.length

average(0, 1, 2, -1, 9, 10) // 3.5

7.# Check if a number is even or odd
How can you tell if a number is odd or even?

const isEven = num => num % 2 === 0

isEven(2) // true
isEven(1) // false

8.# Deduplicate elements in an array
To remove duplicate elements in an array, using Set will make it very easy.

const uniqueArray = (arr) => [...new Set(arr)]

uniqueArray([ 1, 1, 2, 3, 4, 5, -1, 0 ]) // [1, 2, 3, 4, 5, -1, 0]

9.# Check if an object is an empty object
Is it easy to determine if an object is empty?

const isEmpty = obj => Reflect.ownKeys(obj).length === 0 && obj.constructor === Object

isEmpty({}) // true
isEmpty({ name: 'fatfish' }) // false

10.# Reverse a string
const reverseStr = str => str.split('').reverse().join('')

reverseStr('fatfish') // hsiftaf

11.# Calculate the interval between two dates
const dayDiff = (d1, d2) => Math.ceil(Math.abs(d1.getTime() - d2.getTime()) / 86400000)

dayDiff(new Date("2023-06-23"), new Date("1997-05-31")) // 9519

12.# Find the day of the year in which the date falls
Today is June 23, 2023, so what day is it this year?

const dayInYear = (d) => Math.floor((d - new Date(d.getFullYear(), 0, 0)) / 1000 / 60 / 60 / 24)

dayInYear(new Date('2023/06/23'))// 174

13.# Capitalize the first letter of the string
const capitalize = str => str.charAt(0).toUpperCase() + str.slice(1)

capitalize("hello fatfish")  // Hello fatfish

14.# Generate a random string of specified length
const generateRandomString = length => [...Array(length)].map(() => Math.random().toString(36)[2]).join('')

generateRandomString(12) // cysw0gfljoyx
generateRandomString(12) // uoqaugnm8r4s

15.# Get a random integer between two integers
const random = (min, max) => Math.floor(Math.random() * (max - min + 1) + min)

random(1, 100) // 27
random(1, 100) // 84
random(1, 100) // 55

16.# Specified digits rounded
const round = (n, d) => Number(Math.round(n + "e" + d) + "e-" + d)

round(3.1415926, 3) //3.142
round(3.1415926, 1) //3.1

17.# Clear all cookies
const clearCookies = document.cookie.split(';').forEach(cookie => document.cookie = cookie.replace(/^ +/, '').replace(/=.*/, `=;expires=${new Date(0).toUTCString()};path=/`))

18.# Detect if it is dark mode
const isDarkMode = window.matchMedia && window.matchMedia('(prefers-color-scheme: dark)').matches

console.log(isDarkMode)

19.# Scroll to the top of the page
const goToTop = () => window.scrollTo(0, 0)

goToTop()

20.# Determine if it is an Apple device
const isAppleDevice = () => /Mac|iPod|iPhone|iPad/.test(navigator.platform)

isAppleDevice()

21.# Random Boolean values
const randomBoolean = () => Math.random() >= 0.5

randomBoolean()

22.# Get the type of the variable
const typeOf = (obj) => Object.prototype.toString.call(obj).slice(8, -1).toLowerCase()

typeOf('')     // string
typeOf(0)      // number
typeOf()       // undefined
typeOf(null)   // null
typeOf({})     // object
typeOf([])     // array
typeOf(0)      // number
typeOf(() => {})  // function

23.# Determine if the current tab is active or not
const checkTabInView = () => !document.hidden

24.# Check if an element is focused
const isFocus = (ele) => ele === document.activeElement

25.# Random IP
const generateRandomIP = () => {
  return Array.from({length: 4}, () => Math.floor(Math.random() * 256)).join('.');
}

generateRandomIP() // 220.187.184.113
generateRandomIP() // 254.24.179.151


More content at PlainEnglish.io.


