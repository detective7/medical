$(function(){
    
    var select = $("select.illnesssyms ~ .select2-container--default .select2-search--inline");
    select.text("Add Symptom");
    // $("select.illnesssyms ~ .select2-container--default .select2-selection--multiple .select2-selection__choice__remove").click(function(event){
    //     event.stopPropagation();
    // });

    setTimeout(function(){
        if($(".initshowDes") && $(".initifmain")){
            setSys(1);
            addIfMain(1);
        }
    },300);
    
    $("select.illnesssyms").on('change',function(){
        // sym_value = $("select.illnesssyms").val();
        // for (let a = 0; a < new_value.length; a++) {
        //     if($.inArray(new_value[a], sym_value) < 0){
        //         getSystemDes(new_value[a]);
        //     }
        // }
        console.log($(".if_show").val());
        setSys(0);
        addIfMain(0);
    });

    $('.illnesssyms').on("select2:selecting", function (e) {
        currentMainArray = [], currentShowArray = [];
        $.each($("input[name='if_main[]']:checked"), function(){
            currentMainArray.push($(this).val());
        });
        $.each($("input[name='des_if_show[]']:checked"), function(){
            currentShowArray.push($(this).val());
        });
    });
});

var currentMainArray = [], currentShowArray = [];

function addIfMain(ifInit){
    $("select.illnesssyms ~ .select2-container--default .select2-selection--multiple .select2-selection__choice").each(function(){
        if($(this).find(".ifmain").length < 1){
            var thisChoice = $(this);
            $("select.illnesssyms option").each(function(){
                if($(this).text() == thisChoice.attr("title")){
                    var addmain;
                    if(ifInit){
                        var ifMainArray = $(".initifmain").val().split(",");
                        if($.inArray($(this).val(), ifMainArray) >= 0){
                            addmain = '<label>If Main: </label><input type="checkbox" name="if_main[]" class="ifmain" value="'+$(this).val()+'" checked>';
                        }else{
                            addmain = '<label>If Main: </label><input type="checkbox" name="if_main[]" class="ifmain" value="'+$(this).val()+'">';
                        }
                    }else{
                        if($.inArray($(this).val(), currentMainArray) >= 0){
                            addmain = '<label>If Main: </label><input type="checkbox" name="if_main[]" class="ifmain" value="'+$(this).val()+'" checked>';
                        }else{
                            addmain = '<label>If Main: </label><input type="checkbox" name="if_main[]" class="ifmain" value="'+$(this).val()+'">';
                        }
                    }
                    thisChoice.append(addmain);
                }
                if($(this).index() == $("select.illnesssyms option").length -1){
                    $(".ifmain").each(function(){
                        // $(this).attr("name", "if_main_"+$(this).index());
                        $(this).bootstrapSwitch();
                    });
                }
            });
        }
        // if($(this).index() == $("select.illnesssyms ~ .select2-container--default .select2-selection--multiple .select2-selection__choice").length){
        //     $(".ifmain").each(function(){
        //         // $(this).attr("name", "if_main_"+$(this).index());
        //         $(this).bootstrapSwitch();
        //     });
        // }
    });
}

function setSys(ifInit){
    var sym_value = $("select.illnesssyms").val();
    if(sym_value){
        sym_value.forEach(element => {
            getSystemDes(element, ifInit);
        });
    }
}

function getSystemDes(s_id, ifInit){
    console.log(currentShowArray);
    $.ajax({
        url: "/admin/get_symptom",
        method: 'GET',
        data: {s_id: s_id}
    }).done(function(data) {
        $.each(data, function(index, val) {
            // console.log(val.symptoms_id);
            // console.log(val.zh_symptom_des);
            var title = $("select.illnesssyms option[value='"+val.symptoms_id+"']").text();
            var sId = val.id;
            var sname = val.zh_symptom_des;
            $("select.illnesssyms ~ .select2-container--default .select2-selection--multiple .select2-selection__choice").each(function(){
                if($(this).attr("title") == title){                    
                    if(ifInit){
                        var ifShowArray = $(".initshowDes").val().split(",");
                        if($.inArray(sId+"", ifShowArray) >= 0){
                            $(this).append('<div class="illness_sym">'+ sname +'<label>If show: </label><input type="checkbox" name="des_if_show[]" class="if_show" value="'+sId+'" checked ></div>');
                        }else{
                            $(this).append('<div class="illness_sym">'+ sname +'<label>If show: </label><input type="checkbox" name="des_if_show[]" class="if_show" value="'+sId+'" ></div>');
                        }
                    }else{
                        if($.inArray(sId+"", currentShowArray) >= 0){
                            $(this).append('<div class="illness_sym">'+ sname +'<label>If show: </label><input type="checkbox" name="des_if_show[]" class="if_show" value="'+sId+'" checked ></div>');
                        }else{
                            $(this).append('<div class="illness_sym">'+ sname +'<label>If show: </label><input type="checkbox" name="des_if_show[]" class="if_show" value="'+sId+'" ></div>');
                        }
                    }
                    $(".illness_sym > input").click(function(event){
                        event.stopPropagation();
                    });
                }
            });
        });
    });
}

function setSystemDes(choice, zh_symptom_des){
    
}