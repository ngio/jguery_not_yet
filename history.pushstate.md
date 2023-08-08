
[javascript] 자바스크립트를 사용하여 현재 페이지를 새로고침, 갱신하지 않으면서 다른 주소로 변경하는 방법

https://developer.mozilla.org/ko/docs/Web/API/History_API

https://developer.mozilla.org/en-US/docs/Web/API/History/pushState


History API


DOM의 Window 객체는 history 객체를 통해 브라우저의 세션 기록에 접근할 수 있는 방법을 제공합니다. history는 사용자를 자신의 방문 기록 앞과 뒤로 보내고 기록 스택의 콘텐츠도 조작할 수 있는, 유용한 메서드와 속성을 가집니다.

    const state = { page_id: 1, user_id: 5 };
    const url = "hello-world.html";


    
    history.pushState(state, "", url);


    const url = new URL(location);
    url.searchParams.set("foo", "bar");
    history.pushState({}, "", url);




현재의 주소창의 url을 다른 것으로 변경하고자 합니다. 이때 페이지는 그대로 유지하고 싶다면 어떻게 할까요? 이 때 사용 가능한 방법이 바로 history 객체의 pushstate()를 사용하는 방법입니다.

pushstate()는 현재의 주소를 다른 것으로 변경하면서 페이지는 그대로 유지해주기 때문에 페이지가 전환, 갱신되는 것을 방지하면서 동시에 주소창의 url이 변경됩니다.

검색 페이지나 페이지네이션(pagination)을 가진 페이지에서 많이 사용됩니다. 즉 검색 조건이나 페이지 전환이 비동기식 ajax로 이루어질때 이를 반영하기 위해 페이지 주소를 함께 변경하는 것입니다. 페이지 주소를 변경해두면 만약 페이지를 리로드, 갱신하더라도 바뀐 주소나 쿼리 스트링 정보를 그대로 가져올 수 있기 때문이죠.

pushstate()의 장점은 페이지 주소만 변경하는 것이 아니라 url 주소를 바꾸면서 동시에 데이터(state)를 전달하거나 타이틀 변경도 가능하다는 점입니다.

    데이터 state 값 전달 가능
    페이지 타이틀 변경


    state = 상태 값을 나타내는 것으로 브라우저에서 앞/ 뒤로 갈 때, 넘겨줄 데이터
    
    title = 변경할 브라우저 제목 (변경을 원하지 않으면 null) 
    
    url = 변경할 브라우저 URL


    
    history.pushstate(state, title, url)


브라우저에서 뒤/앞으로 가는 버튼 클릭 시 onpopstate 이벤트가 발생하며 이때, 콜백함수에서 event.state는 pushState 함수의 인자 값이였던 state 객체가 넘어온 것이다.
    
    
    window.onpopstate = function(event) {
        alert("location: " + document.location + ", state: " + JSON.stringify(event.state));
    }



    
    function locationHashChanged() {
      if (location.hash === '#cool-feature') {
        console.log("You're visiting a cool feature!");
      }
    }
    
    window.onhashchange = locationHashChanged;
