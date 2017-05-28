/**
 * Created by zzy on 2017/4/7.
 */
$(function () {
	$("#userId").blur(function () {
		// var userId = $('#userId').val();
		$.ajax({
			url: 'userCheck',
			type: 'get',
			data: {
				userId: $('#userId').val()
			},
			success: function (data) {
				var user = JSON.parse(data);
				if (user != null) {
					alert("该用户已存在！");//暂时先alert，后面再改成<span>提示
				}
			}
		});
	});
});