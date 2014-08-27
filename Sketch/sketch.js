$(document).ready(function() {
    var $grid = $('#grid');
    var tableDimension = 50

    for (i = 0; i < tableDimension; i++) {
        var $row = ('<div class="row">');

        for (j = 0; j < tableDimension; j++) {
            $row += '<div class="cell"></div>';
        }
        $row += '</div>';
        $grid.append($row);
    }
    $('.cell').css('height', 960/tableDimension);
    $('.cell').css('width', 960/tableDimension);
    $('.cell').mouseenter(function () {
        $(this).addClass('on');
    });
    function newSketch() {
        $('.cell').removeClass('on');
    }
});
