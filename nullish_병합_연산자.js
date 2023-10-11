// https://ko.javascript.info/nullish-coalescing-operator#ref-778


nullish 병합 연산자 '??'

x = (a !== null && a !== undefined) ? a : b;


let firstName = null;
let lastName = null;
let nickName = "바이올렛";

// null이나 undefined가 아닌 첫 번째 피연산자
alert(firstName ?? lastName ?? nickName ?? "익명의 사용자"); // 바이올렛




let height = 0;

alert(height || 100); // 100
alert(height ?? 100); // 0


let x = 1 && 2 ?? 3; // SyntaxError: Unexpected token '??'
