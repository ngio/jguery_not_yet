[HTML] details  summary , jquery로 open 제어

&lt;details&gt;

    HTML <details> 요소는 "열림" 상태일 때만 내부 정보를 보여주는 정보 공개 위젯을 생성합니다. 
    요약이나 레이블은 <summary> 요소를 통해 제공할 수 있습니다.
    
    정보 공개 위젯은 보통 레이블 옆의 작은 삼각형이 돌아가면서 열림/닫힘 상태를 나타냅니다. 
    <details> 요소의 첫 번째 자식이 <summary> 요소라면, 
     <summary>의 콘텐츠를 위젯의 레이블로 사용합니다.


https://developer.mozilla.org/ko/docs/Web/HTML/Element/details


Open 추가

    $('details').attr('open','');



Opne 제거

    $('details').removeAttr('open');


    $('.info').on('click', 'details', function () {
        $('details').removeAttr('open');
        $(this).attr('open', '');
    });
