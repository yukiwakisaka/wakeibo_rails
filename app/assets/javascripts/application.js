// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require highcharts/highcharts
//= require highcharts/highcharts-more
//= require bootstrap-sprockets
//= require_tree .

$(document).on('page:change', function(){$('body').fadeIn("slow");});

function addFigure(str) {
    var num = new String(str).replace(/,/g, "");
    while(num != (num = num.replace(/^(-?\d+)(\d{3})/, "$1,$2")));
    return num;
}

function balanceFormat(str) {
    var pm = str > 0;
    var num = addFigure(str);

    if (pm)
        return "<b>"+num+"</b>";
    else
        return "<span style=\"color:#B00100\">"+num+"</span>";
}
