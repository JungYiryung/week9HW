
function findIdExceptionEvent(){
    const findIdForm = document.findIdInput;
    const nameValue = document.querySelector("#name");
    const phone = document.querySelector('#phone');
    
    const nameRegex = /^[가-힣]{2,5}$/;
    const phoneRegex = /^01(0|1|2|6|9)-\d{4}-\d{4}$/
    
    if(!nameRegex.test(nameValue.value))
    {
        alert("이름을 다시 작성해주세요");
    }
    if(!phoneRegex.test(phone.value))
    {
        alert("전화번호를 다시 작성해주세요");
    }
    
    if(nameRegex.test(nameValue.value) && phoneRegex.test(phone.value))
    {   
        //findpwInput박스 내용을 백엔드 처리하는jsp로 보내주어야
        console.log(findIdForm.submit())
        findIdForm.submit();
    }
    }