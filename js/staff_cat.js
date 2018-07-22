window.onscroll = function() {myFunction();};

function myFunction() {
  var header = document.getElementById("myHeader");
var sticky = header.offsetTop - 400;
var w = 0.33333 * (window.innerWidth -277);
 //alert(sticky);
  if (window.pageYOffset >= sticky) {
    //alert('saber');
    document.getElementById("myHeader").style.width = ""+w+"px"; 
    header.classList.add("sticky");
  } else {
    header.classList.remove("sticky");
  }
}


function validform(cat_id, typeid){
var isvalid = validate('form_cat');
if (isvalid == 1)
{updatecat(cat_id, typeid);}}


function updatecat(cat_id, type_id) {
  var data = document.getElementById('data').value;
  document.getElementById('fill_catview').innerHTML = "<div class='w3-display-container' style='height:500px; width:100%;'><img src='images/loading.gif' class='w3-display-middle'></div>";

 if (typeof cat_id === 'undefined') {
    //alert ('MAIN'+id);//alert ('MAIN'+cat_id);
    var url="queries/ADD_MAIN_CATEGORY.cfm?";
    url=url+"categoryname="+data;
  }else{
    if (type_id == 1) {
    var url="queries/ADD_SUB_CATEGORY.cfm?";
    url=url+"categoryname="+data;
    url=url+"&motherid="+cat_id;
    }else{
    var url="queries/EDIT_CATEGORY.cfm?";
    url=url+"categoryname="+data;
    url=url+"&categoryid="+cat_id;
    }
     //alert ('SUB'+id);//alert ('SUB'+cat_id);
    }
  loadDoc(url, 'fill_catview');
}


function delete_cat(cat_id, mid_id) {
  document.getElementById('fill_catview').innerHTML = "<div class='w3-display-container' style='height:500px; width:100%;'><img src='images/loading.gif' class='w3-display-middle'></div>";
    var url="queries/DELETE_CATEGORY.cfm?";
    url=url+"categoryid="+cat_id;
    url=url+"&motherid="+mid_id;
    //alert(url);
    loadDoc(url, 'fill_catview');
}


function cat_items_subs(cat_id, mid_id) {
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
    if (this.readyState == 4 && this.status == 200) {
      var review = this.responseText;
      review = review.trim();
        switch(review){
        case '2': alert('Can not proceed - Reason: There are PRODUCTS referencing the category, please delete them first.'); break; 
        case '3': alert('Can not proceed - Reason: There are SUBCATEGORIES referencing the category, please delete them first.'); break; 
        case '4': alert('Can not proceed - Reason: There are PRODUCTS AND SUBCATEGORIES referencing the category, please delete the products first and then the subcategories.');break; 
        default: delete_cat(cat_id, mid_id);
        }
    }
    };
    var url="queries/REVIEW_CATEGORY.cfm?";
    url=url+"categoryid="+cat_id;
    xhttp.open("GET", url , true);
    xhttp.send();
}


function checksubs ()
{
        var i;
        if(document.form_cat.cat_radio.length == undefined){
            if(!(document.form_cat.cat_radio == undefined)){
                if (document.form_cat.cat_radio.checked){
                    category_id = document.form_cat.cat_radio.value;
                    validform (category_id, 1);
                }else{
                    alert('You must select a Category for the Subcategory you wish to add...');
                    return;
                }
            }else{
                alert('You must select a Category for the Subcategory you wish to add...');
                return;
            }
        }else{
            for (i=0;i<document.form_cat.cat_radio.length;i++){
                if (document.form_cat.cat_radio[i].checked)
                    break;
            }
            if(!(document.form_cat.cat_radio[i] == undefined)){
                category_id = document.form_cat.cat_radio[i].value;
                validform (category_id, 1);
            }else{
                alert('You must select a Category for the Subcategory you wish to add...');
                return;
            }
        }
}



function checksubs_mod ()
{
        var i;
        if(document.form_cat.cat_radio.length == undefined){
            if(!(document.form_cat.cat_radio == undefined)){
                if (document.form_cat.cat_radio.checked){
                    category_id = document.form_cat.cat_radio.value;
                    validform (category_id, 2);
                }else{
                    alert('You must select the Category to edit...');
                    return;
                }
            }else{
                alert('You must select the Category to edit...');
                return;
            }
        }else{
            for (i=0;i<document.form_cat.cat_radio.length;i++){
                if (document.form_cat.cat_radio[i].checked)
                    break;
            }
            if(!(document.form_cat.cat_radio[i] == undefined)){
                category_id = document.form_cat.cat_radio[i].value;
                validform (category_id, 2);
            }else{
                alert('You must select the Category to edit...');
                return;
            }
        }
}




function check_delete () {
    var i;
    if(document.form_cat.cat_radio.length == undefined){
        if(!(document.form_cat.cat_radio == undefined)){
            if (document.form_cat.cat_radio.checked){
                category_id = document.form_cat.cat_radio.value;
                mid_id = document.form_cat.mid_radio.value;
                cat_items_subs (category_id, mid_id);
                }else{
                alert('You must select a Category to delete...');
                return;
                }
            }else{
                alert('You must select a Category to delete...');
                return;
            }
        }else{
            for (i=0;i<document.form_cat.cat_radio.length;i++){
                if (document.form_cat.cat_radio[i].checked)
                    break;}
                if(!(document.form_cat.cat_radio[i] == undefined)){
                    category_id = document.form_cat.cat_radio[i].value;
                    mid_id = document.form_cat.mid_radio[i].value;
                    cat_items_subs (category_id, mid_id);
                    }else{
                    alert('You must select a Category to delete...');
                    return;
                }
            }
}

