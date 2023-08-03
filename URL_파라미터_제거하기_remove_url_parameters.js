
//-- [javascript] 파라미터 제거하기. remove url parameters with javascript or jquery
//-- ** https://jsfiddle.net/mill01/hxrejz5L/6/


var url = 'http://youtube.com/watch?v=3sZOD3xKL0Y';
//alert(url.match(/v\=([a-z0-9]+)/i));

//window.location.replace(window.location.pathname);


var url = document.createElement('a');
url.href = 'https://developer.mozilla.org/en-US/search?q=URL#search-results-close-container';

console.log(url.href); // https://developer.mozilla.org/en-US/search?q=URL#search-results-close-container
console.log(url.protocol); // https:
console.log(url.host); // developer.mozilla.org
console.log(url.hostname); // developer.mozilla.org
console.log(url.port); // (blank - https assumes port 443)
console.log(url.pathname); // /en-US/search
console.log(url.search); // ?q=URL
console.log(url.hash); // #search-results-close-container
console.log(url.origin); // https://developer.mozilla.org

var url = 'youtube.com/watch?v=3sZOD3xKL0Y&feature=youtube_gdata';

url = url.slice( 0, url.indexOf('&') );

//alert( url );




