
function findPwExceptionEvent(){
console.log("ㅇ");
const findPwForm = document.findPwInput;
const idValue = document.querySelector("#idValue");
const phone = document.querySelector('#phone');

const emailRegex = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/;
const phoneRegex = /^01(0|1|2|6|9)-\d{4}-\d{4}$/

if(!emailRegex.test(idValue.value))
{
    alert("이메일을 다시 작성해주세요");
}
if(!phoneRegex.test(phone.value))
{
    alert("전화번호를 다시 작성해주세요");
}

if(emailRegex.test(idValue.value)&& phoneRegex.test(phone.value))
{   
    //findpwInput박스 내용을 백엔드 처리하는jsp로 보내주어야
    console.log(findPwForm.submit());
    findPwForm.submit();
}
}