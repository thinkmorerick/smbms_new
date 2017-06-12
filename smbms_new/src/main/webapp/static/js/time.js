/**
 * Created by yaling.he on 2015/11/18.
 */
//时间
function fn(){
    var time = new Date();
    var str= "";
    var div = document.getElementById("time");
    var welspan = document.getElementById("wel");
//    console.log(time);
    var year = time.getFullYear();
    var mon = time.getMonth()+1;
    var day = time.getDate();
    var h = time.getHours();
    var m = time.getMinutes();
    var s = time.getSeconds();
    var week = time.getDay();
    switch (week){
        case 0:week="日";
            break;
        case 1:week="一";
            break;
        case 2:week="二";
            break;
        case 3:week="三";
            break;
        case 4:week="四";
            break;
        case 5:week="五";
            break;
        case 6:week="六";
            break;
    }
    str = year +"年"+totwo(mon)+"月"+totwo(day)+"日"+"&nbsp;"+totwo(h)+":"+totwo(m)+":"+totwo(s)+"&nbsp;"+"星期"+week;
    div.innerHTML = str;
    if(time.getHours()>12 && time.getHours()<=18){
    	welspan.innerHTML = "下午好";
    }else if(time.getHours()>18){
    	welspan.innerHTML = "晚上好";
    }else{
    	welspan.innerHTML = "上午好";
    }
}
fn();
setInterval(fn,1000);
function totwo(n){
    if(n<=9){
        return n = "0"+n;
    }
    else{
        return n =""+n;
    }
}

