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
    let roleValue = document.getElementsByName("role")[0].value
    let departmentValue = document.getElementsByName("department")[0].value
    const emailRegex = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/;
    const passwordRegex = /^[a-zA-x0-9]{2,20}$/;
    const nameRegex = /^[가-힣]{2,5}$/;
    const phoneRegex = /^01(0|1|2|6|9)-\d{4}-\d{4}$/

    if( !emailRegex.test(idValue.value))
    {
        alert("아이디를 다시 입력하세요!");
    }
    else if( !((passwordRegex.test(pwValue.value) || 
    passwordRegex.test(pwValueCheck.value))) )
    {
        alert("영대소문자와 숫자 조합 비밀번호를 다시 입력하세요!");
    }
    else if(pwValue.value != pwValueCheck.value)
    {
        alert("비밀번호와 비밀번호확인칸이 같지 않습니다!");
    }
    else if( !nameRegex.test(nameValue.value))
    {
        alert("이름을 다시 입력하세요!");
    }
    else if( !phoneRegex.test(phoneValue.value))
    {
        alert("핸드폰번호를 다시 입력하세요!");
    }
    else if( roleValue != 'teamMember' && roleValue !='teamLeader')
    {
        alert("팀장,팀원중 선택해주세요")
    }
    else if( departmentValue !='planningTeam'&& departmentValue !='hrTeam')
    {
        alert("기획팀, 인사팀 중 선택해주세요")
    }
    else {
        document.getElementById("joinForm").submit()
    }
}

