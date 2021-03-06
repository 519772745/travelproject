//实例化编辑器
    var um = UM.getEditor('myEditor');
    //按钮的操作
    function insertHtml() {
        var value = prompt('插入html代码', '');
        um.execCommand('insertHtml', value)
    }
//  判断是否失去焦点
    function isFocus(){
        alert(um.isFocus())
    }
    function doBlur(){
        um.blur()
    }
    function createEditor() {
        enableBtn();
        um = UM.getEditor('myEditor');
    }

    function getContent() {
        var arr = [];
        arr.push("使用editor.getContent()方法可以获得编辑器的内容");
        arr.push("内容为：");
        arr.push(UM.getEditor('myEditor').getContent());
        alert(arr.join("\n"));
    }
    function getPlainTxt() {
        var arr = [];
        arr.push("使用editor.getPlainTxt()方法可以获得编辑器的带格式的纯文本内容");
        arr.push("内容为：");
        arr.push(UM.getEditor('myEditor').getPlainTxt());
        alert(arr.join('\n'))
    }
    function setContent(isAppendTo) {
        var arr = [];
        arr.push("使用editor.setContent('欢迎使用umeditor')方法可以设置编辑器的内容");
        UM.getEditor('myEditor').setContent('欢迎使用umeditor', isAppendTo);
        alert(arr.join("\n"));
    }
    
    function setDisabled() {
        UM.getEditor('myEditor').setDisabled('fullscreen');
        disableBtn("enable");
    }

    function setEnabled() {
        UM.getEditor('myEditor').setEnabled();
        enableBtn();
    }

    function getText() {
        //当你点击按钮时编辑区域已经失去了焦点，如果直接用getText将不会得到内容，所以要在选回来，然后取得内容
        var range = UM.getEditor('myEditor').selection.getRange();
        range.select();
        var txt = UM.getEditor('myEditor').selection.getText();
        alert(txt)
    }
    /**
     * 点击发表实现正文判断是否为空
     * 为空则显示不能为空的提示且不跳转页面
     * 不为空则实现正文转到隐藏域的实现
     * arr[]为接受数据数组
     * bool[]判断编辑框内容是否为空
     * @returns
     */
    $("#push").click(function(){
    	var topic=0;
    	var content=0;
    	var mapAddress=0;
    	if(document.getElementById("title").value!=""&&document.getElementById("title").value!=null){
    		topic=1;
    	}
    	if(document.getElementById("src1").value!=""){
    		mapAddress=1;
    	}
    	var arr = [];
    	var bool=[];
//    	实现标签向input中存入
    	var newtag=$(".tagItem span");
    	var test=newtag.text();
    	$("#tagtag").val(test);
//    	实现内容向input中存入
    	bool.push(UM.getEditor('myEditor').hasContents());
    	if(bool.join()){
    		arr.push(UM.getEditor('myEditor').getContentTxt());    //有内容则实现为隐藏域赋值
    		console.log(arr.join());
    		document.getElementById("content1").value=arr.join();    		
    	}
    	if(document.getElementById("content1").value!=""&&document.getElementById("content1").value!=null){
    		content=1;
    	}
    	alert("现在的值为"+topic+content+mapAddress);	
    	if(topic==1&&content==1&&mapAddress==1){
    		document.aaa.submit();
    	}else{
    		alert("请正确填写信息");
    		event.preventDefault();
    	}
    });

    function getContentTxt() {
        var arr = [];
        arr.push("使用editor.getContentTxt()方法可以获得编辑器的纯文本内容");
        arr.push("编辑器的纯文本内容为：");
        arr.push(UM.getEditor('myEditor').getContentTxt());
        alert(arr.join("\n"));
    }
    function hasContent() {
        var arr = [];
        arr.push("使用editor.hasContents()方法判断编辑器里是否有内容");
        arr.push("判断结果为：");
        arr.push(UM.getEditor('myEditor').hasContents());
        alert(arr.join("\n"));
    }
    function setFocus() {
        UM.getEditor('myEditor').focus();
    }
    function deleteEditor() {
        disableBtn();
        UM.getEditor('myEditor').destroy();
    }
    function disableBtn(str) {
        var div = document.getElementById('btns');
        var btns = domUtils.getElementsByTagName(div, "button");
        for (var i = 0, btn; btn = btns[i++];) {
            if (btn.id == str) {
                domUtils.removeAttributes(btn, ["disabled"]);
            } else {
                btn.setAttribute("disabled", "true");
            }
        }
    }
    function enableBtn() {
        var div = document.getElementById('btns');
        var btns = domUtils.getElementsByTagName(div, "button");
        for (var i = 0, btn; btn = btns[i++];) {
            domUtils.removeAttributes(btn, ["disabled"]);
        }
    }