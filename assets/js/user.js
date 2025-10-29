const thongtintk =document.querySelector(".inforuser")
const menuInfor =document.querySelector(".menuInfor")
const listNut =document.querySelectorAll(".menu")

const set=function (){
    listNut.forEach(nut =>{
            nut.style.color="#575757"
            nut.style.fontWeight="normal"
            menuInfor.style.display="none"
        }
    )
}

    listNut.forEach(nut =>{
        nut.addEventListener("click",function (){
            set()
            nut.style.fontWeight="bold"
            nut.style.color="#0d3164"

        })
    })
thongtintk.addEventListener("click",function (){
    menuInfor.style.display="block"
})