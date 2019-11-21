$(window).scroll(function() {
    if ($(document).scrollTop() > 50) {
        $('.navbar').addClass('fix');
    } else {
        $('.navbar').removeClass('fix');
    }
});
