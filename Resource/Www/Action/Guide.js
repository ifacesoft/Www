$(document).ready(function () {
    $('body').scrollspy({target: '.guide-sidebar'});
    $('.guide-sidebar').affix({
        offset: {
            top: 0,
            bottom: function () {
                return (this.bottom = $('.footer').outerHeight(true))
            }
        }
    });
    hljs.initHighlightingOnLoad();
});

