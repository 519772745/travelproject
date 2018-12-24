/**
* 从后台获取正文的数据 等待js加载完毕之后进行编辑框的赋值
* @returns
*/
    $(function(){
        window.setTimeout(setCon,100);//一秒后再调用赋值方法
        window.setTimeout(setTopic,100);//一秒后再调用赋值方法
        window.setTimeout(setStatus,100);//一秒后再调用赋值方法
        window.setTimeout(setParentTag,100);//一秒后再调用赋值方法
        window.setTimeout(setchildTag,100);//一秒后再调用赋值方法
    });
//给ueditor插入值
    function setCon(){
    	console.log("加载到了这一步content");
        UM.getEditor('myEditor').setContent($('#testcon').val(),false);
    }
    function setTopic(){
        var topic=$('#getTopicId').val();
        console.log("加载到了这一步topic========="+topic);        
        //之后进行判断
        if(topic!=null){
        	console.log("id这块进来了");
        	document.getElementById("topicId").checked = true;
        }
    }
 //status  根据后台数据进行select的默认值设置
    function setStatus(){  
        var key=$("#statusValue").val();
        //根据值让option选中 
        if(key=="仅自己可见"){
        	document.getElementById("status")[1].selected=true;
        }
   };
 //ParentTag  根据后台数据进行select的默认值设置
    function setParentTag() { 
	   var tagObj=document.getElementById("tagSelect");
	   var objItemText=$("#tagPName").val();
	   console.log("加载到了这一步parentTag"+objItemText);
		for (var i = 0; i < tagObj.options.length; i++) { 
			if (tagObj.options[i].value == objItemText) { 
				tagObj.options[i].selected = true; 
				break; 
				} 
			}
		}; 
//childTag 根据前台接收的p标签的数组
	function setchildTag() { 
		var newtag=$(".tags");
	    var test=newtag.text();
	    console.log(test);
		//初始化已有标签
		var tag1 = new Tag("tagValue");
		tag1.tagValue = test;
		tag1.initView();
		}; 	
