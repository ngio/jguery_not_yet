    $(document).ready(function(){
        NumberAdd();
        var analytics = setInterval(NumberAdd(),60000);
    });
    
    var tmpNumber = 0;
    function NumberAdd(){
        tmpNumber++;
        console.log(tmpNumber);
    }


Window 및 Worker 인터페이스에서 제공되는 setInterval() 메서드는 각 호출 사이에 고정된 시간 지연으로 함수를 반복적으로 호출하거나 코드 스니펫을 실행합니다.

이 메서드는 간격(interval)을 고유하게 식별할 수 있는 interval ID를 반환하므로 나중에 clearInterval() (en-US) 함수를 호출하여 제거할 수 있습니다.


    setInterval(code)
    setInterval(code, delay)
    
    setInterval(func)
    setInterval(func, delay)
    setInterval(func, delay, arg0)
    setInterval(func, delay, arg0, arg1)
    setInterval(func, delay, arg0, arg1, /* … ,*/ argN)



    myArray = ["zero", "one", "two"];
    
    myArray.myMethod = function (sProperty) {
      alert(arguments.length > 0 ? this[sProperty] : this);
    };
    
    myArray.myMethod(); // "zero,one,two"가 출력됩니다
    myArray.myMethod(1); // "one"가 출력됩니다
    setTimeout(myArray.myMethod, 1000); // 1초 후 "[object Window]"가 출력됩니다
    setTimeout(myArray.myMethod, 1500, "1"); // 1,5초 후에 "undefined"가 출력됩니다
    
    // myArray.myMethod 내에서 this의 값을 변경하려는 동안
    // setTimeout 내부에서 this의 값을 변경하기 때문에
    // .call과 함께 'this'객체를 전달하는 것은 동작하지 않습니다
    // 사실 setTimeout 코드는 this가 window 객체가 될 것으로 예상하기 때문에 오류가 발생합니다
    setTimeout.call(myArray, myArray.myMethod, 2000); // error: "NS_ERROR_XPC_BAD_OP_ON_WN_PROTO: Illegal operation on WrappedNative prototype object"
    setTimeout.call(myArray, myArray.myMethod, 2500, 2); // 위와 동일한 에러가 발생합니다





