<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN"
	"http://www.w3.org/TR/html4/strict.dtd">
<html>
    	
	<body>    
		<form id="form1">	 
			<label for="sampleText">Please enter a text</label>
			<input id="sampleText" name="sampleText" type="text" /> <br/>
		
			<label for="sampleFile">Please select a file</label>
			<input id="sampleFile" name="sampleFile" type="file" /> <br/>
        	
        	<input id="uploadBtn" type="button" value="Ajax Submit" onClick="performAjaxSubmit();"></input>
		</form>
		
        <script type="text/javascript">
        	function performAjaxSubmit() {
       			var sampleText = document.getElementById("sampleText").value;
        		var sampleFile = document.getElementById("sampleFile").files[0];
        		
        		var formdata = new FormData();
        		formdata.append("sampleText", sampleText);
        		formdata.append("sampleFile", sampleFile);	        		
        		
        		var xhr = new XMLHttpRequest();
        		
        		xhr.open("POST","/fileUploadH5Ajax2Servlet/FileUploader", true);
        		xhr.send(formdata);
        		
        		xhr.onreadystatechange  = function(e) {
	       			if (this.status == 200) {
	       			   alert(this.responseText);
	       			}
	        	};	        		
        	}
        	
		</script>		
		
    </body>

</html>