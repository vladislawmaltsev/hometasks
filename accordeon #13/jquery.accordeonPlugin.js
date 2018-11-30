(function($){
    $.fn.accordeon = function(){
        var make = function() {
            $('.panel-heading').click(function () {
                $(this).toggleClass('in').next().slideToggle();
                $('.panel-heading').not(this).removeClass('in').next().slideUp();
            });
        };
        return make();
    };
})(jQuery);
