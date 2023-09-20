//-- [JavaScript] 브라우저에서 뒤로가기 했을때, 자바스크립트 실행하기
 

// javascript
window.onpageshow = function(event){
	if( event.persisted ){
        console.log("BFCache로부터 복원됨");
	}else{
        console.log("새로 열린 페이지");
	}
}

// jquery 
$(window).bind("pageshow", function(event){	
	if( event.originalEvent.persisted ){
        console.log("BFCache로부터 복원됨");
	}else{
        console.log("새로 열린 페이지");
	}
});

//-----------------------------------------------------------------------------

window.onpopstate = function(event) {

    history.pushState({pageNum:3, searchDt:'2019-05-07'}, null, '/board/list');
 
    location.reload();
 
}
 
history.pushState(null, null, null);







