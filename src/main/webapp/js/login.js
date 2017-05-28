/**
 * Created by zzy on 2017/4/7.
 */

$(function () {
	$("#submit").click(function () {
		$.ajax({
			
			}
		)
	})
});

/*$(function () {
	$("#userId").blur(function () {
		// var userId = $('#userId').val();
		$.ajax({
				url: 'user/check',
				type: 'get',
				data: {
					userId: $("#userId").val()
				},
				success: function (data) {		//在jQuery 1.9之前(不含1.9)：如果传入一个空字符串、null或undefined，JSON.parser()函数将返回null，而不是抛出一个错误，即使它不是有效的JSON字符串。因此不再JSON.parser(data)进行判断，而直接判断data是否为空
					if (data === undefined || data === null || data === '') {
						alert("用户ID错误或不存在！");//暂时先alert，后面再改成<span>提示
					}
				}
			}
		)
	})
});*/

/*..
 之前错误的版本
 success: function (data) {
 var user = JSON.parse(data);
 if (user == null) {
 alert("用户ID错误或不存在！");
 }
 }*/



/*
 function checkInput() {
 if ($('#userId').val() == null) {
 alert("请填写用户ID！");
 $('#userId').focus();
 return false;
 }
 if ($('#password').val() == null) {
 alert("请填写用户密码！");
 $('#password').focus();
 return false;
 }
 }*/
