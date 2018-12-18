//全局定义验证码
var code; //在全局 定义验证码
function createCode()
{ //创建验证码函数
 code = "";
 var codeLength =4;//验证码的长度
 var selectChar = new Array(0,1,2,3,4,5,6,7,8,9);
 //这个也可以加上,'a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z'
 //所有候选组成验证码的字符，当然也可以用中文的
 for(var i=0;i<codeLength;i++)
 { 
 var charIndex =Math.floor(Math.random()*10);
 code +=selectChar[charIndex]; 
 }
// 设置验证码的显示样式，并显示
 document.getElementById("discode").style.fontFamily="Fixedsys"; //设置字体
 document.getElementById("discode").style.letterSpacing="12px"; //字体间距
 document.getElementById("discode").style.color="#0ab000"; //字体颜色
 document.getElementById("discode").style.size="20px"; //字体大小
 document.getElementById("discode").innerHTML=code; // 显示
}
function but(){//验证验证码输入是否正确
 	var val1=document.getElementById("text1").value;
    var val2=code;
 	if(val1==val2){//住处判断之后的变化
 		document.getElementById("searchMsg").className="yan";
 		document.getElementById("searchMsg").style.display = "block"; 
  	}else{
  		document.getElementById("searchMsg").className="yan1";
  		document.getElementById("searchMsg").style.display = "block";  		  		   		
  	}
}
function xiaoshi3(){
	document.getElementById("searchMsg").style.display = "none"; 
}


//该功能检查用户是否填写账号
function checkName(){
	var name=document.getElementById("username").value;
	if(name==""){
		document.getElementById("msg").innerHTML="请填写相关信息";
	}else{
		document.getElementById("msg").innerHTML="";
	}
}
//密码框再获得焦点的时候“请填写相关信息”的提示字样消失
function xiaoshi(){
	document.getElementById("msg").innerHTML="";
}

//该功能检查用户是否填写email
function checkemail(){
	var name=document.getElementById("username").value;
	if(name==""){
		document.getElementById("msg2").innerHTML="请填写相关信息";
	}else{
		document.getElementById("msg2").innerHTML="";
	}
}
//密码框再获得焦点的时候“请填写相关信息”的提示字样消失
function xiaoshi2(){
	document.getElementById("msg2").innerHTML="";
}

//该功能检查前后密码填写是否一致
function checkpassword(){
	var password1=document.getElementById("password1").value;//第一个输入框的密码
	var password=document.getElementById("password").value;
		if(password!=password1){
		    document.getElementById("msg1").innerHTML="密码不一致";
		}else{
		    document.getElementById("msg1").innerHTML="";
		}
}
function xiaoshi1(){
	document.getElementById("msg1").innerHTML="";
}