function addBtn(index){ return "<span class='btn btn-sm btn-primary add-another' onclick='renewClickFunc("+index+")'> Add </span>";}
function delBtn(index){ return "<span class='btn btn-sm btn-danger del-another' onclick='delClickFunc("+index+")'> Delete </span>";}
var currentMaxCount = 0;
function renewClickFunc(){
    $(".add-another").after(delBtn(currentMaxCount-1)).remove();
    $(".other_names").each(function(index){
        if(index == $(".other_names").length - 1){
            $(this).parent().parent().parent().after('<div class="form-group"><label for="other_names" class="col-sm-2  control-label">+</label><div class="col-sm-8"><div class="input-group"><span class="input-group-addon"><i class="fa fa-pencil fa-fw"></i></span><input name="other_names[]" type="text" id="other_names" class="form-control other_names" placeholder="other name"></div></div>'+addBtn(currentMaxCount)+'</div>');
        }
    });
    currentMaxCount++;
}
function delClickFunc(btnIndex){
    $(".del-another").each(function(){
        if($(this).attr("onclick") == "delClickFunc("+btnIndex+")"){
            var label = $(this).parent().find(".control-label").text();
            if(label != "+"){
                $(this).parent().next().find(".control-label").text(label);
            }
            $(this).parent().remove();
        }
    });
}
$(function(){
    $(".other_names").each(function(index){
        if(index == $(".other_names").length - 1){
            $(this).parent().parent().after(addBtn(index));
        }else{
            $(this).parent().parent().after(delBtn(index));
        }
        currentMaxCount++;
    });
});