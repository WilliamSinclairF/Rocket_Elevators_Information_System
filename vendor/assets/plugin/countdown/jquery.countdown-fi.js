﻿/* http://keith-wood.name/countdown.html
   Finnish initialisation for the jQuery countdown extension
   Written by Kalle Vnsk and Juha Suni (juhis.suni@gmail.com). Corrected by Olli. */
(function($) {
	$.countdown.regionalOptions['fi'] = {
		labels: ['vuotta', 'kuukautta', 'viikkoa', 'piv', 'tuntia', 'minuuttia', 'sekuntia'],
		labels1: ['vuosi', 'kuukausi', 'viikko', 'piv', 'tunti', 'minuutti', 'sekunti'],
		compactLabels: ['v', 'kk', 'vk', 'pv'],
		whichLabels: null,
		digits: ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'],
		timeSeparator: ':', isRTL: false};
	$.countdown.setDefaults($.countdown.regionalOptions['fi']);
})(jQuery);