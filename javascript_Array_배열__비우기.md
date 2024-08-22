[javascript]Array(배열) 비우기


1. 빈 배열 대입
   
        let array = [1,2,3,4,5];
        
        array = []
        
        console.log(array)  // []

 

단순하게 빈 배열 대입하여 배열을 비울 수 있습니다.

 

 

 

2. 배열의 길이 수정
   
       let array = [1,2,3,4,5]      
       array.length = 0      
       console.log(array)  // []


배열의 길이를 0으로 수정하면 배열을 비울 수 있습니다.

※ 배열의 길이를 수정하면 해당 길이만큼 배열의 크기가 바꿔지며

현재 길이보다 크게 변경 할 경우 해당 자리에 빈 값이 들어가며 sparse Array가 됩니다.

 

 

 

3. 배열 자르기
   
        let array = [1,2,3,4,5]
        
        array.splice(0)
        
        console.log(array)  // []

 

splice 함수를 사용하면 해당 배열에서 설정한 크기만큼 잘라 반환합니다.
따라서 splice(0)을 사용하면 처음부터 끝까지 자르기 때문에 array가 비어지는 효과가 나타나게 됩니다.

 

 

 

4. 배열의 요소 하나하나 직접 반환
   
        let array = [1,2,3,4,5]
        
        while(array.length > 0){
            array.shift() 또는 array.pop()
        }

배열의 shift() 또는 pop() 함수를 이용하여 요소들을 하나씩 직접 반환하는 방법입니다.

※ shift() - FIFO 먼저 들어온 요소 반환, pop() - LIFO 마지막에 들어온 요소 반환





.
