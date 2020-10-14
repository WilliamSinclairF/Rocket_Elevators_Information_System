/* http://keith-wood.name/countdown.html
 * Bengali/Bangla initialisation for the jQuery countdown extension
 * Written by Mohammed Tajuddin (tajuddin@chittagong-it.com) Jan 2011. */
(function($) {
    $.countdown.regionalOptions['bn'] = {
        labels: ['', '', '', '', '', '', ''],
        labels1: ['', '', '', '', '', '', ''],
        compactLabels: ['', '', '', ''],
        whichLabels: null,
		digits: ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'],
        timeSeparator: ':', isRTL: false
    };
    $.countdown.setDefaults($.countdown.regionalOptions['bn']);
})(jQuery);