/**
 * Created by zzy on 2017/5/25.
 */
$(function () {
	var table = $('#user-table').DataTable({
		//这样配置后，即可用DT的API来访问表格数据
		columns: [
			{data: "column1"},
			{data: "column2"},
			{data: "column3"},
			{data: "column4"},
			{data: "column5"}
		]
	});
	//给行绑定选中事件
	$('#user-table tbody').on( 'click', 'tr', function () {
		if ($(this).hasClass('selected')) {
			$(this).removeClass('selected');
		}
		else {
			table.$('tr.selected').removeClass('selected');
			$(this).addClass('selected');
		}
	} );
	//给按钮绑定点击事件
	$("#check").click(function () {
		var column1 = table.row('.selected').data().column1;
		var column2 = table.row('.selected').data().column2;
		var column3 = table.row('.selected').data().column3;
		var column4 = table.row('.selected').data().column4;
		var column5 = table.row('.selected').data().column5;
		alert("选中的用户：\n" + "账号：" + column1 + "\n" + "姓名：" + column2 + "\n"
			+ "性别：" + column3 + "\n" + "角色：" + column4 + "\n" + "个人信息：" + column5);
	});
	
	$("#delete").click(function () {
		var column1 = table.row('.selected').data().column1;
		var column2 = table.row('.selected').data().column2;
		var column3 = table.row('.selected').data().column3;
		var column4 = table.row('.selected').data().column4;
		var column5 = table.row('.selected').data().column5;
		if (confirm("确定删除该用户？" + "\n" + "账号：" + column1 + "\n" + "姓名：" + column2 + "\n"
				+ "性别：" + column3 + "\n" + "角色：" + column4 + "\n" + "个人信息：" + column5)) {
			$.ajax({
				url: 'deleteOneUser',
				type: 'post',
				data: {
					userId: column1
				},
				success: function (data) {
					if (data === "success") {
						location.reload();
					} else {
						alert("删除失败");
					}
				}
			})
		}
	});
	
	$("#edit").click(function () {
		var column1 = table.row('.selected').data().column1;
		var column2 = table.row('.selected').data().column2;
		var column3 = table.row('.selected').data().column3;
		var column4 = table.row('.selected').data().column4;
		var column5 = table.row('.selected').data().column5;
		
		$("#edit-area").css('display', 'block');
		$("#userId").val(column1);
		$("#username").val(column2);
		$("#sex").val(column3);
		$("#role").val(column4);
		$("#introduction").val(column5);
	});
	
	$("#save").click(function () {
		$.ajax({
			url: 'editOneUser',
			type: 'post',
			data: {
				userId: $("#userId").val(),
				username: $('#username').val(),
				sex: $('#sex').val(),
				role: $('#role').val(),
				introduction: $('#introduction').val()
			},
			success: function (data) {
				if (data === "success") {
					alert("编辑成功");
					location.reload();
				}
			}
		})
	});
	
	$("#cancel").click(function () {
		$("#userId").val("");
		$("#username").val("");
		$("#sex").val("");
		$("#role").val("");
		$("#introduction").val("");
		$("#edit-area").css('display', 'none');
		
	});
	
});