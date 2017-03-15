
#processing the inputs fro the form
=> from browser find the id of the field we want to process its normally => model_name_field_name


processing in the javascript:-
document.getElementById('model_name_field_name').value;
Thats it ... thanks;


#from the below methods you will get al the items thats the collection of clkasses:-

document.getElementsByClassName('class_name') => will give you all the elements which will have the class that is given into 'class_name' so for getting thos values you need to acces it as an array => 
get the first element value having class name as class_name =>
document.getElementsByClassName('class_name')[0].value;


##document.getElementsByTagName('tag_name')[whole_number].value =. tagName => input




##list of tagnames in html =>

$(document).on ("ready", function(){
  
  $(document).on ("click", ".nav.nav-tabs li.tabs", function(){
  var clicked_id = $(this).attr("id");
  $(".nav.nav-tabs .tabs.active").removeClass("active");
  $("#"+clicked_id).addClass("active");
  $(".tab-collection .tab.active").removeClass("active");
  var tabData = $(this).attr('data-panel');
  $("#"+tabData).addClass("active");
  return false;
});
##togling tabs =>
Main thin in this ..... every clickable tab has 2 attributes thats => data-panel, id 
in this id is used for own active and .... data-panel is used for the purpose of showing data ..... the datapanel is the id for the div so that it becomes active whenever respective tab is clicked.

#copy-pasted

var inputs, index, form;

form = document.getElementById('myFormId'); // or form = document.formName
inputs = form.getElementsByTagName('input');
for (index = 0; index < inputs.length; ++index) {
    // deal with inputs[index] element.
}
