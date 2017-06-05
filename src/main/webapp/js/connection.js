/**
 * Created by zzy on 2017/6/3.
 */
$(function () {
	$('#send').click(function () {
		$.ajax({
			url: 'feedback',
			type: 'post',
			data: {
				content : $('#content').val()
			},
			success: function (data) {
				if (data === "success") {
					alert("发送成功！");
				} else {
					alert("发送失败！");
				}
			}
		})
	});
});