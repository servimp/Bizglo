function loadjscssfile(filename, filetype){
    if (filetype=="js"){ //if filename is a external JavaScript file
        var fileref=document.createElement('script')
        fileref.setAttribute("type","text/javascript")
        fileref.setAttribute("src", filename)
    }
    else if (filetype=="css"){ //if filename is an external CSS file
        var fileref=document.createElement("link")
        fileref.setAttribute("rel", "stylesheet")
        fileref.setAttribute("type", "text/css")
        fileref.setAttribute("href", filename)
    }
    if (typeof fileref!="undefined")
        document.getElementsByTagName("head")[0].appendChild(fileref)
}

var filesadded="" //list of files already added


function checkloadjscssfile(filename, filetype){
 if (filesadded.indexOf("["+filename+"]")==-1){
  loadjscssfile(filename, filetype)
  filesadded+="["+filename+"]" //add to list of files already added, in the form of "[filename1],[filename2],etc"
 }
 else
  alert("file already added!")
}
/*END Script loading management section*/


function adaptation (name) {
  switch(name) {
    case 'full_central': document.getElementById('third').innerHTML =""; updateClass ('twothird', 'w3-biz-normal'); break; 
  }
}

/* This function acts as a helper function to loadDoc*/
function get_view (view, container, parameter, name_adapt, js) {
if (typeof js === 'undefined')
  {}else{loadjscssfile("js/"+js+".js", "js");}
  adaptation (name_adapt);
  document.getElementById(container).innerHTML = "<div class='w3-display-container' style='height:400px; width:100%;'><img src='images/loading.gif' class='w3-display-middle'></div>";
  var url="../controller.cfm?";
  url=url+"view="+view;
if (parameter != 0){url=url+"&param1="+parameter;}else{url=url;}
  loadDoc(url, container);
}


function get_view_simple (view, container, parameter1, parameter2, name_adapt, js) {

if (typeof js === 'undefined')
  {}else{
    loadjscssfile("js/"+js+".js", "js");}  
if (adaptation != 0){adaptation (name_adapt);}
  document.getElementById(container).innerHTML = "<div class='w3-display-container' style='height:280px; width:100%;'><img src='images/loading.gif' class='w3-display-middle'></div>";
  var url=view;
if (parameter1 != 0){url=url+"?param1="+parameter1;}else{url=url;}
if (parameter2 != 0){url=url+"&param2="+parameter2;}else{url=url;}
//alert(url);
  loadDoc(url, container);
}


function updateClass(element, newClass) {
  var x = document.getElementById(element); 
	x.className = newClass;
}


function loadDoc(url, id) {
  var xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function() {
  if (this.readyState == 4 && this.status == 200) {
    document.getElementById(id).innerHTML = this.responseText;
    }
  };
  xhttp.open("GET", url, true);
  xhttp.send();
}


function update_div(div, data)
{document.getElementById(div).innerHTML = data;}


function clear_div(div)
{document.getElementById(div).innerHTML = "";}


function show_modal (id, location, container, parameter1, parameter2, name_adapt, js)
{document.getElementById(id).style.display='block';
get_view_simple(""+location+""+id+".cfm",""+container+"",0,0,0,""+js+"");
}
