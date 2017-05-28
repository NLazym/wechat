/**
 * Created by zzy on 2017/4/21.
 */
$(function () {
	$('#test').click(function () {
		$.ajax({
			url: 'fileCheck',
			type: 'get',
			data: {
				fileName: $('#fileName').val().trim()
			},
			success: function (data) {
				if (data == 'n') {
					alert("该文件不存在！");
				}
				if (data == 'y') {
					$('#submit').attr('disabled', false);
				}
			}
		})
	})
});

