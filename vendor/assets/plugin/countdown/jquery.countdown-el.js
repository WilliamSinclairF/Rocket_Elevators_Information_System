﻿/* http://keith-wood.name/countdown.html
   Greek initialisation for the jQuery countdown extension
   Written by Philip. */
(function($) {
	$.countdown.regionalOptions['el'] = {
		labels: ['', '', '', '', '', '', ''],
		labels1: ['', '', '', '', '', '', ''],
		compactLabels: ['.', '.', '.', '.'],
		whichLabels: null,
		digits: ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'],
		timeSeparator: ':', isRTL: false};
	$.countdown.setDefaults($.countdown.regionalOptions['el']);
})(jQuery);