// Homepage hero resizing
    (function () {
    var e;
    e = function () {
        $(".hero").css("height", $(window).height() - 90);
    };
    $(function () {
        return $(window).on("load resize", e)
    })
    }).call(this);