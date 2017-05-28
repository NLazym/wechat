/**
 * Created by zzy on 2017/4/13.
 */
$(function () {
	$('#submit').click(function () {
		$.ajax({
			url: 'update',
			type: 'post',
			data: {
				username: $('#username').val(),
				sex: $('#sex').val(),
				phone: $('#phone').val(),
				email: $('#email').val(),
				introduction: $('#introduction').val()
			},
			success: function (data) {
				
				if (data) {
					alert("修改成功！")
				}
			}
		})
	});
});
