/**
 * Created by zzy on 2017/6/9.
 */
$(function () {
	function check() {
		$.ajax({
			url: 'unknownMessageCheck',
			type: 'post',
			success: function (data) {
				if (data !== "0") {
					$("#n").text(data);
				} else {
					$("#n").text("");
				}
			}
		})
	}
	setInterval(check(), 10000)
});