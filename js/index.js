function openSearchIdPageEvent()
{
    location.href="./page/searchIdPage.jsp"
}
function openSearchPwPageEvent()
{
    location.href="./page/searchPwPage.jsp"
}
function openJoinPageEvent()
{
    location.href="./page/joinPage.jsp"
}

function loginExceptionEvent(){
    const emailRegex = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/;
    const passwordRegex = /^[a-zA-x0-9]{2,20}$/;

    let idValue = document.getElementById("idValue").value
    let pwValue = document.getElementById("pwValue").value
    if(!emailRegex.test(idValue))
    {
        alert("아이디를 다시 입력하세요!");
    }
    else if(!(passwordRegex.test(pwValue)))
    {
        alert("영대소문자와 숫자 조합 비밀번호를 다시 입력하세요!");
    }
    else
    {
        document.getElementById("loginForm").submit();
    }
}