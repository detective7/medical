function addShareBtn(index){ return "<span class='btn btn-sm btn-primary add-share' onclick='addShare("+index+")'> Add </span>";}
function delShareBtn(index){ return "<span class='btn btn-sm btn-danger del-share' onclick='delShare("+index+")'> Delete </span>";}
var currentMaxShare = 0;
function addShare(){
    $(".add-share").after(delShareBtn(currentMaxShare-1)).remove();
    $(".case_sharing").each(function(index){
        if(index == $(".case_sharing").length - 1){
            $(this).parent().parent().parent().after('<div class="form-group"><label for="case_sharing" class="col-sm-2  control-label">+</label><div class="col-sm-8"><div class="input-group"><span class="input-group-addon"><i class="fa fa-pencil fa-fw"></i></span><input name="case_sharing[]" type="text" id="case_sharing" class="form-control case_sharing" placeholder="case sharing"></div></div>'+addShareBtn(currentMaxShare)+'</div>');
        }
    });
    currentMaxShare++;
}
function delShare(btnIndex){
    $(".del-share").each(function(){
        if($(this).attr("onclick") == "delShare("+btnIndex+")"){
            var label = $(this).parent().find(".control-label").text();
            if(label != "+"){
                $(this).parent().next().find(".control-label").text(label);
            }
            $(this).parent().remove();
        }
    });
}
$(function(){
    $(".case_sharing").each(function(index){
        if(index == $(".case_sharing").length - 1){
            $(this).parent().parent().after(addShareBtn(index));
        }else{
            $(this).parent().parent().after(delShareBtn(index));
        }
        currentMaxShare++;
    });
});