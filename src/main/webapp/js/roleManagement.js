/**
 * Created by zzy on 2017/5/26.
 */
$(function () {
	var table = $('#role-table').DataTable({
		//这样配置后，即可用DT的API来访问表格数据
		columns: [
			{data: "column1"},
			{data: "column2"},
			{data: "column3"}
		]
	});
	//给行绑定选中事件
	$('#role-table tbody').on( 'click', 'tr', function () {
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
		alert("选中的用户：\n" + "账号：" + column1 + "\n" + "姓名：" + column2 + "\n"
			 + "角色：" + column3);
	});
	
	$("#edit").click(function () {
		var column1 = table.row('.selected').data().column1;
		var column2 = table.row('.selected').data().column2;
		var column3 = table.row('.selected').data().column3;
		
		$("#edit-area").css('display', 'block');
		$("#userId").val(column1);
		$("#username").val(column2);
		$("#role").val(column3);
	});
	
	$("#save").click(function () {
		$.ajax({
			url: 'editOneUserRole',
			type: 'post',
			data: {
				userId: $("#userId").val(),
				role: $('#role').val()
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
		$("#role").val("");
		$("#edit-area").css('display', 'none');
		
	});
	
});