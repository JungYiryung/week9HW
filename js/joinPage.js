function idCheckEvent(){
    window.open("../page/IDcheckModal.jsp","window","width=500, height=600,top=50, left=50")
}

function joinExceptionEvent(){
    // 예외처리해주고 form태그 형식으로
    let idValue = document.querySelector('#idValue');
    let pwValue = document.querySelector('#pwValue');
    let pwValueCheck = document.querySelector('#pwValueCheck');
    let nameValue = document.querySelector('#nameValue');
    let phoneValue = document.querySelector('#phoneValue');
    //console.log(idValue.value);
    const emailRegex = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/;
    const passwordRegex = /^[a-zA-x0-9]{2,20}$/;
    const nameRegex = /^[가-힣]{2,5}$/;
    const phoneRegex = /^01(0|1|2|6|9)-\d{4}-\d{4}$/

    if( !emailRegex.test(idValue.value))
    {
        alert("아이디를 다시 입력하세요!");
    }
    if( !((passwordRegex.test(pwValue.value) || 
    passwordRegex.test(pwValueCheck.value))) )
    {
        alert("비밀번호를 다시 입력하세요!");
    }
    if(pwValue.value != pwValueCheck.value)
    {
        alert("비밀번호와 비밀번호확인칸이 같지 않습니다!");
    }
    if( !nameRegex.test(nameValue.value))
    {
        alert("이름을 다시 입력하세요!");
    }
    if( !phoneRegex.test(phoneValue.value))
    {
        alert("핸드폰번호를 다시 입력하세요!");
    }

    //document.getElementById("form").submit()
}



//예외처리를 해주려면 
// const IDCheckButton = document.querySelector('IDCheckButton');
// const useButton = document.querySelector('useButton');
// const xButton = document.querySelector('xButton');
// const modal = document.getElementById('modal');

// IDCheckButton.addEventListener('click', () => {
//     modal.classList.add('show');
// });
