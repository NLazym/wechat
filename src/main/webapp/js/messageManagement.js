/**
 * Created by zzy on 2017/5/26.
 */
$(function () {
	var table = $('#message-table').DataTable({
		//这样配置后，即可用DT的API来访问表格数据
		columns: [
			{data: "column1"},
			{data: "column2"},
			{data: "column3"},
			{data: "column4"}
		]
	});
	//给行绑定选中事件
	$('#message-table tbody').on( 'click', 'tr', function () {
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
		alert("选中的信息：\n" + "信息ID：" + column1 + "\n" + "发送者：" + column2 + "\n"
			+ "内容：" + column3 + "\n" + "发送时间：" + column4);
	});
	
	$("#delete").click(function () {
		var column1 = table.row('.selected').data().column1;
		var column2 = table.row('.selected').data().column2;
		var column3 = table.row('.selected').data().column3;
		var column4 = table.row('.selected').data().column4;
		if (confirm("确定删除该信息？" + "\n" + "信息ID：" + column1 + "\n" + "发送者：" + column2 + "\n"
				+ "内容：" + column3 + "\n" + "发送时间：" + column4)) {
			$.ajax({
				url: 'deleteOneMessage',
				type: 'post',
				data: {
					messageId: column1
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
		
		$("#edit-area").css('display', 'block');
		$("#messageId").val(column1);
		$("#sendId").val(column2);
		$("#content").val(column3);
		$("#createTime").val(column4);
	});
	
	$("#save").click(function () {
		$.ajax({
			url: 'editOneMessage',
			type: 'post',
			data: {
				messageId: $("#userId").val(),
				content: $('#content').val()
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
		$("#messageId").val("");
		$("#sendId").val("");
		$("#content").val("");
		$("#createTime").val("");
		$("#edit-area").css('display', 'none');
		
	});
	
});