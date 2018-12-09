
//add
var modal = document.getElementById('myModal');
var btn = document.getElementById("myBtn");
var span = document.getElementById("close");
btn.onclick = function() {
    modal.style.display = "block";
};
span.onclick = function() {
    modal.style.display = "none";
};
window.onclick = function(event) {
    if (event.target === modal) {
        modal.style.display = "none";
    }
};


//update
$('.updateModal').click(function () {
    console.log(123);
    document.getElementById('modalUpdate').style.display = "block";
    //var inputs = $(this).find(':input');
    // console.log($(this).find(':input'));
    // $('#modTitle').attr('value',124);
    // $('#modText').html(1238124781924);
    $('.updateBtnBlock input[type="hidden"]').each(function (index,item) {
        var name = $(item).attr('name');
        var value = $(item).val();
        $('[data-name="'+ name +'"]').val(value);
    })
});


window.onclick = function(event) {
    if (event.target === modal) {
        document.getElementById('modalUpdate').style.display = "none";
    }
};

//image for card
$('.card').each(function(index) {
    console.log(index);
    var img = $(this).find('img');
    if(index < 8) {
        img.attr('src', 'img/blog_card_pictures/blogpic' + index + '.jpg');
    } else {
        index = 0;
        img.attr('src', 'img/blog_card_pictures/blogpic' + index + '.jpg');
    }
    console.log(index+1);
});

