1. 모든 URL에 대한 해시 값 가져오기
순수한 JavaScript를 사용하면 주어진 값에서 해시 값을 얻을 수 있습니다. indexOf() 그리고 substring(), 아래에 설명된 대로:

var url = "https://mail.google.com/mail/u/0/#inbox";
var index = url.indexOf("#");
if (index !== -1)
{
    var hash = url.substring(index + 1);
    console.log(hash);
}
 
당신은 또한 사용할 수 있습니다 split() 방법 pop() 방법은 아래와 같습니다.

var url = "https://mail.google.com/mail/u/0/#inbox";
var parts = url.split('#');
if (parts.length > 1) {
    console.log(parts.pop());
}
2. 현재 URL의 해시 값 가져오기
또는 현재 창 URL에 대한 해시 값이 필요한 경우 다음을 사용할 수 있습니다. window.location.hash, 다음을 포함하는 문자열을 반환합니다. '#', URL의 조각 식별자가 뒤따릅니다. URL에 조각 식별자가 없으면 빈 문자열을 반환합니다. "".

// 'https://www.techiedelight.com/#input'에 대해 '#input'을 반환합니다.
var hash = window.location.hash;
 
jQuery를 사용하면 다음을 사용할 수 있습니다. .prop() 에 location 해시를 얻기 위한 객체:

// 'https://www.techiedelight.com/#input'에 대해 '#input' 반환
var hash = $(location).prop('hash');
 
URL의 조각 식별자만 추출하려면 '#', 당신은 사용할 수 있습니다 substr() 다음과 같은 방법:

// 'https://www.techiedelight.com/#input'에 대한 'input'을 반환합니다.
 
// JavaScript로
var hash = window.location.hash.substr(1);
 
// jQuery로
var hash = $(location).prop('hash').substr(1);
 
다음은 다음을 사용하는 또 다른 솔루션입니다. window.location.href.

// 'https://www.techiedelight.com/#input'에 대한 'input'을 반환합니다.
window.location.href.split('#').pop();
