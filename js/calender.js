// 달 선택 html 생성
let optionTag = document.querySelector("div select");
let selectingMonth =1;
let monthArray = [1,2,3,4,5,6,7,8,9,10,11,12];
let month31 = [1,3,5,7,8,10,12]
let month30 = [4,6,9,11]
let cellNum;
let rowNum;
for(let i = 0; i<12 ; i++){
    optionTag.insertAdjacentHTML("beforeend",
    `<option value=${monthArray[i]}>${i+1}월</option>`);
}

// 월에 따라 다른날짜로 html생성
// 월을 선택할때마다 달력이 바뀌어야함. 
function selectMonth(){
    selectingMonth = document.querySelector("#month").value;
    changeMonth();
}
for (let month of month31)
{
    if(month === selectingMonth)
        {
            cellNum = 31;
            rowNum = 5;
        }
}
for (let month of month30)
{
    if(month === selectingMonth)
        {
            cellNum = 30;
            rowNum = 5;
        }
}
if (selectingMonth === 2)
{
    cellNum =28;
    rowNum=4;
}

function changeMonth(){
    
    let tableTag = document.querySelector("table");
    let trTag = document.createElement("tr");
    let k = 1;
    for(let i = 0; i<rowNum; i++)
    {
        let readyTdTag = tableTag.appendChild(trTag)
        for(k;k<=cellNum;k++)
        {     
            readyTdTag.insertAdjacentHTML("beforeend",
            `<td><a>${k}</a></td>`);
            if(k%7 == 0)
            {
                k++;
                break;
            }
        }
    }
}

//달력만드는부분 힌트
//선택한 월이 나오도록 하는 방법?
//월이 선택될때마다 table태그 전체를 지우고 다시 쓰나?
console.log(document.documentElement.innerHTML)
