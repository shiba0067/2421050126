var danhsachvd = [
    {
        id: 1,
        duongdananh: "anh1/1.png",
    },
    {
        id: 2,
        duongdananh: "anh1/2.png",
    },
    {
        id: 3,
        duongdananh: "anh1/3.png",
    },
    {
        id: 4,
        duongdananh: "anh1/4.png",
    },
    {
        id: 5,
        duongdananh: "anh1/5.png",
    },
    {
        id: 6,
        duongdananh: "anh1/6.png",
    },
    {
        id: 7,
        duongdananh: "anh1/7.png",
    },
    {
        id: 8,
        duongdananh: "anh1/8.png",
    },
    {
        id: 9,
        duongdananh: "anh1/9.png",
    },
    {
        id: 10,
        duongdananh: "anh1/10.png",
    },
    {
        id: 11,
        duongdananh: "anh1/11.png",
    },
    {
        id: 12,
        duongdananh: "anh1/12.png",
    },
    {
        id: 13,
        duongdananh: "anh1/13.png",
    },
    {
        id: 14,
        duongdananh: "anh1/14.png",
    },
    {
        id: 15,
        duongdananh: "anh1/15.png",
    },
    {
        id: 16,
        duongdananh: "anh1/16.png",
    },
    {
        id: 17,
        duongdananh: "anh1/17.png",
    },
    {
        id: 18,
        duongdananh: "anh1/bennar.jpg",
    },
   
   


];
function chonbai(id){
    for (let i = 0; i < danhsachvd.length; i++){
        if(danhsachvd[i].id == id ){
            document.getElementsByClassName("banner-img")[0].src =danhsachvd[i].duongdananh;
        }
    }

};