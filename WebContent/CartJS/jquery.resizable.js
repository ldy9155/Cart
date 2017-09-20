(function($) {
	$.fn.resizable = function(options) {
		var defaults = {
			'maxHeight'		:	500,
			'plusHeight'	:	13
		};
		$.extend(defaults, options || {});
		var self = this;
		var minHeight = this.height();
		self.next('.ej-editor-resize-bar').drag("start",function(ev, dd) {
			dd.height = self.height();
		})
		.drag(function(ev, dd) {
			var h = Math.max(1, dd.height + dd.deltaY);
			if(h >= minHeight && h <= defaults.maxHeight) {
				//	������ textarea�� ũ�� ����
				var	edtmp	=	self.attr('id').split("ejEdt_");
				var	tarea	=	document.getElementsByName(edtmp[1])[0];
				tarea.style.height	=	h + defaults.plusHeight + 'px';
				self.css('height', h);
			}
		});
		return this;
	};
})(jQuery);