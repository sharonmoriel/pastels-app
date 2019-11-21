$(window).scroll(function() {
    if ($(document).scrollTop() > 54) {
        $('.navbar').addClass('fix');
    } else {
        $('.navbar').removeClass('fix');
    }
});
