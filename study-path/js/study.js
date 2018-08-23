		for(var i=0; i<10;i++){
			
			var li =document.createElement('li');
			var ull = document.getElementById('ull');
                        
                        ull.appendChild(li);
                        
			var value = "mp4/0"+i+"demo.mp4";
                        
			$(li).attr('value',value);
                       
			li.id="li"+i;

			li.innerText= i+1+"demo";

		}

		var video=document.getElementById('de');

		var list =document.getElementById('oneo').getElementsByTagName('li');

		var lis = list.length;

		var url = [];

		var curr = 1;

		for (var i = 0; i < list.length; i++) {
    	url[i] = list[i].getAttribute("value");
		}

	for (var i = 0; i < list.length; i++) {
    list[i].onclick = function() {
        for (var j = 0; j < list.length; j++) {
            if (list[j] === this) {
                video.setAttribute("src", this.getAttribute("value"));
                video.setAttribute('autoplay', 'autoplay');
                this.innerHTML = this.innerHTML;
                this.className = "select";
                curr = j + 1;
            } else {
                list[j].className = "";
            }
        }
    };
}


	function showh(){
		var im = document.getElementById('one22');
		im.style.display = im.style.display === 'none'?'block':'none';

		var img = document.getElementById('zuoyou');

		if(im.style.display === 'none'){
			img.src="images/left.png";
			document.getElementById('one21').style.width='100%';
			document.getElementById('zuoyou').style.right='0';
		}else{
			img.src="images/right.png";
			document.getElementById('one21').style.width='75%';
			document.getElementById('zuoyou').style.right='25%';
		}
                }
function next(){
            document.getElementById('modal_overlay').style.display='none';
            document.getElementById('oneo').style.display='block';
        }
