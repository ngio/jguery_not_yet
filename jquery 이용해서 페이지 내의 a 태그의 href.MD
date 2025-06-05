[JQUERY] jquery 이용해서 페이지 내의 a 태그의 href 를 가져와라

$(document).ready(function() {
    // 모든 <a> 태그를 선택합니다.
    $('a').each(function() {
        // 현재 <a> 태그의 href 속성값을 가져옵니다.
        var hrefValue = $(this).attr('href');

        // 가져온 href 값을 콘솔에 출력하거나 다른 방식으로 활용할 수 있습니다.
        console.log("링크 URL: " + hrefValue);

        // 예시: 페이지에 표시
        $('body').append('<p>Link found: ' + hrefValue + '</p>');
    });
});
