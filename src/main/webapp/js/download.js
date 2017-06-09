/**
 * Created by zzy on 2017/4/21.
 */
$(function () {
	$('#documentName').bind("input propertychange change", function () {
		$.ajax({
			url: 'fileCheck',
			type: 'get',
			data: {
				documentName: $('#documentName').val()
			},
			error: function () {
			
			},
			success: function (data) {
				if (data === 'n') {
					$('#submit').attr('disabled', true);
					$('span').val("该文件不存在或没有权限下载！");
				}
				if (data === 'y') {
					$('span').val("");
					$('#submit').attr('disabled', false);
				}
			}
		})
	})
});

