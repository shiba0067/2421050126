var danhsachvd = [
    {
        id: 1,
        duongdananh: "anh1/tamthien.png",
        duongdanvideo: "https://www.youtube.com/embed/Pw_dP7NF5qg?si=EOw4QES2v91bnG3U",
    },
    {
        id: 2,
        duongdananh: "anh1/loanthe.png",
        duongdanvideo: "https://www.youtube.com/embed/6xvXNJDYBpQ?si=vV5cR6sQkeQeT3Gu",
    },
    {
        id: 3,
        duongdananh: "anh1/uyenuong.png",
        duongdanvideo: "https://www.youtube.com/embed/T1ZVpjR1FU8?si=m6lKl7nqpjfxMZXj",
    },
    {
        id: 4,
        duongdananh: "anh1/bietli.png",
        duongdanvideo: "https://www.youtube.com/embed/zYBLt8wWPPU?si=pQ4151R8b7M-_JyT",
    },

];
function chonbai(id){
    for (let i = 0; i < danhsachvd.length; i++){
        if(danhsachvd[i].id == id ){
            document.getElementsByClassName("video")[0].src =danhsachvd[i].duongdanvideo;
        }
    }

};