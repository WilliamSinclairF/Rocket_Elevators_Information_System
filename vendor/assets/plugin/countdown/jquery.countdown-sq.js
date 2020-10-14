﻿/* http://keith-wood.name/countdown.html
   Albanian initialisation for the jQuery countdown extension
   Written by Erzen Komoni. */
(function($) {
    $.countdown.regionalOptions['sq'] = {
        labels: ['Vite', 'Muaj', 'Jav', 'Dit', 'Or', 'Minuta', 'Sekonda'],
        labels1: ['Vit', 'Muaj', 'Jav', 'Dit', 'Or', 'Minut', 'Sekond'],
        compactLabels: ['V', 'M', 'J', 'D'],
        whichLabels: null,
        digits: ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'],
        timeSeparator: ':', isRTL: false};
    $.countdown.setDefaults($.countdown.regionalOptions['sq']);
})(jQuery);