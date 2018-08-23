		function overlay(){
		   var e1 = document.getElementById('modal_overlay');            
		   e1.style.display = (e1.style.display === "none")? "block" : "none";
		}

		function showmu(){
			if (document.getElementById('modal_overlay').style.display==='none') {
				document.getElementById('modal_overlay').style.display='block';
			}else{
				document.getElementById('modal_overlay').style.display='none';
			}
		}
                

	function al(){
		document.getElementById('al').style.display='block';
	}
	function close2(){
		document.getElementById('al').style.display='none';
	}
        	function op(){
		document.getElementById('oneo').style.display='block';
	}
        
        function col(){
            document.getElementById('oneo').style.display='none';
            document.getElementById('de').pause();
        }
        function next(){
            document.getElementById('modal_overlay').style.display='none';
            document.getElementById('oneo').style.display='block';
        }