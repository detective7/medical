$(function(){
    
    var select = $("select.illnesssyms ~ .select2-container--default .select2-search--inline");
    select.text("Add Symptom");
    // $("select.illnesssyms ~ .select2-container--default .select2-selection--multiple .select2-selection__choice__remove").click(function(event){
    //     event.stopPropagation();
    // });

    setTimeout(function(){
        setSys();
        addIfMain();
    },300);
    
    $("select.illnesssyms").on('change',function(){
        // sym_value = $("select.illnesssyms").val();
        // for (let a = 0; a < new_value.length; a++) {
        //     if($.inArray(new_value[a], sym_value) < 0){
        //         getSystemDes(new_value[a]);
        //     }
        // }
        setSys();
        addIfMain();
    });
});

function addIfMain(){
    $("select.illnesssyms ~ .select2-container--default .select2-selection--multiple .select2-selection__choice").each(function(){
        if($(this).find(".ifmain").length < 1){
            var thisChoice = $(this);
            $("select.illnesssyms option").each(function(){
                if($(this).text() == thisChoice.attr("title")){
                    thisChoice.append('<label>If Main: </label><input type="checkbox" name="if_main[]" class="ifmain" value="'+$(this).val()+'">');
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

function setSys(){
    var sym_value = $("select.illnesssyms").val();
    sym_value.forEach(element => {
        getSystemDes(element);
    });
}

function getSystemDes(s_id){
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
                    $(this).append('<div class="illness_sym">'+ sname +'<label>If show: </label><input type="checkbox" name="des_if_show[]" class="if_show" value="'+sId+'" checked ></div>');
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