function renewClickFunc(){
    $(".add-another").fadeOut(200);
    $(".other_names").each(function(index){
        if(index == $(".other_names").length - 1){
            $(this).parent().parent().parent().after('<div class="form-group"><label for="other_names" class="col-sm-2  control-label">+</label><div class="col-sm-8"><div class="input-group"><span class="input-group-addon"><i class="fa fa-pencil fa-fw"></i></span><input name="other_names[]" value="444" type="text" id="other_names" class="form-control other_names" placeholder="Input +"></div></div><span class="btn btn-sm btn-primary add-another" onclick="delClickFunc()"> Add </span></div>');
        }
    });
}
function delClickFunc(){

}