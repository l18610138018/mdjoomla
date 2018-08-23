                var middleleft = document.createElement('div');
		var middleright = document.createElement('div');
		var first = document.createElement('div');
		var body = document.getElementById('body');
		var seconddiv = document.createElement("div");
		var span = document.createElement("span");
		var img = document.createElement("img");
		var middleleftimg = document.createElement("img");
		var middlerightimg =  document.createElement("img");

		body.append(first);
		first.append(seconddiv);
		first.append(middleleft);
		first.append(middleright);
		seconddiv.append(span);
		middleleft.append(middleleftimg);
		middleright.append(middlerightimg);

		$(middleleft).attr('id','middleleft');
		$(middleright).attr('id','middleright');
		$(first).attr('id','divfirst');
		$(seconddiv).attr('id','seconddiv');
		$(seconddiv).append(img);
		$(img).attr("src","images/close.png");
                $(img).attr('onclick','hidd()');
                $(img).css('cursor','pointer');
                $(img).hover(function(){
                    $(img).attr('src','images/closeed.png');
                },function(){
                    $(img).attr('src','images/close.png');
                });
		$(middleleftimg).attr('src','images/left.png');
		$(middlerightimg).attr('src','images/right.png');
		$(middleright).attr('onclick','next()');
		$(middleleft).attr('onclick','up()');


		span.innerText = "测试";

		for(var i =1; i<=4;i++){
		
			var div = document.createElement('div');
		
			first.append(div);
		
			$(div).attr('id','divtest');
		
			var ul = document.createElement('ul');
		
			div.append(ul);
		
			for(var j=1;j<=10;j++){
		
				var li = document.createElement('li');
		
				ul.append(li);
		
				$(li).attr('id','li'+j);
		
			}
		
		}
		

		var number = document.getElementById('divfirst').getElementsByTagName('ul').length;
		
		for(var x=0;x<number;x++){
			
			var num = document.getElementById('divfirst').getElementsByTagName('ul')[x].getElementsByTagName('li').length;
		
			for(var s=0;s<num;s++){
		
				if(s>4){
		
				var count = document.getElementById('divfirst').getElementsByTagName('ul')[x].getElementsByTagName('li')[s];
		
				$(count).css('display','none');
				
				}

				if(x ===0){
					var counte = document.getElementById('divfirst').getElementsByTagName('ul')[x].getElementsByTagName('li')[s];

					counte.innerHTML = "<div><img id='docx' src='images/doc.png'></div><div id='text'>"+'docxdemo'+s+"</div><div id='seedown'><a href='pdf"+s+".pdf' target='view_window'><img id='see' src='images/see.png'></a><a><img id='down' src='images/down.png'></a></div>";

				}

				if(x ===1){
					var counte = document.getElementById('divfirst').getElementsByTagName('ul')[x].getElementsByTagName('li')[s];

					counte.innerHTML = "<div><img id='ppt' src='images/ppt.png'></div><div id='text'>"+'pptdemo'+s+"</div><div id='seedown'><a><img id='see' src='images/see.png'></a><a><img id='down' src='images/down.png'></a></div>";

				}

				if(x ===2){
					var counte = document.getElementById('divfirst').getElementsByTagName('ul')[x].getElementsByTagName('li')[s];

					counte.innerHTML = "<div><img id='excel' src='images/excel.png'></div><div id='text'>"+'exceldemo'+s+"</div><div id='seedown'><a><img id='see' src='images/see.png'></a><a><img id='down' src='images/down.png'></a></div>";

				}

				if(x ===3){
					var counte = document.getElementById('divfirst').getElementsByTagName('ul')[x].getElementsByTagName('li')[s];

					counte.innerHTML = "<div><img id='pdf' src='images/pdf.png'></div><div id='text'>"+'pdfdemo'+s+"</div><div id='seedown'><a><img id='see' src='images/see.png'></a><a><img id='down' src='images/down.png'></a></div>";

				}


			}
			
		}

		function next(){
			var number = document.getElementById('divfirst').getElementsByTagName('ul').length;
		
		for(var x=0;x<number;x++){
			
			var num = document.getElementById('divfirst').getElementsByTagName('ul')[x].getElementsByTagName('li').length;
		
			for(var s=0;s<num;s++){
		
				if(s>4){
		
						var count = document.getElementById('divfirst').getElementsByTagName('ul')[x].getElementsByTagName('li')[s];
		
						$(count).css('display','block');
				
					}else{
						var count = document.getElementById('divfirst').getElementsByTagName('ul')[x].getElementsByTagName('li')[s];
		
						$(count).css('display','none');		
					}
				}
			}
		}	
			
		function up(){
			var number = document.getElementById('divfirst').getElementsByTagName('ul').length;
		
		for(var x=0;x<number;x++){
			
			var num = document.getElementById('divfirst').getElementsByTagName('ul')[x].getElementsByTagName('li').length;
		
			for(var s=0;s<num;s++){
		
				if(s>4){
		
						var count = document.getElementById('divfirst').getElementsByTagName('ul')[x].getElementsByTagName('li')[s];
		
						$(count).css('display','none');
				
					}else{
						var count = document.getElementById('divfirst').getElementsByTagName('ul')[x].getElementsByTagName('li')[s];
		
						$(count).css('display','block');		
					}
				}
			}
		}		
		function showt(){
                    document.getElementById('divfirst').style.display='block';
                }
              function hidd(){
                    document.getElementById('divfirst').style.display='none';
              }