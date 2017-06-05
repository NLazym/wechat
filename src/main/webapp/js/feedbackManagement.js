/**
 * Created by zzy on 2017/6/3.
 */

$(function () {
	var table = $('#feedback-table').DataTable({
		//这样配置后，即可用DT的API来访问表格数据
		columns: [
			{data: "column1"},
			{data: "column2"},
			{data: "column3"},
			{data: "column4"}
		]
	});
	//给行绑定选中事件
	$('#feedback-table tbody').on( 'click', 'tr', function () {
		if ($(this).hasClass('selected')) {
			$(this).removeClass('selected');
		}
		else {
			table.$('tr.selected').removeClass('selected');
			$(this).addClass('selected');
			$("#edit-area").css('display', 'none');
		}
	} );
	//给按钮绑定点击事件
	$("#check").click(function () {
		var column1 = table.row('.selected').data().column1;
		var column2 = table.row('.selected').data().column2;
		var column3 = table.row('.selected').data().column3;
		var column4 = table.row('.selected').data().column4;
		alert("选中的反馈信息：\n" + "反馈ID：" + column1 + "\n" + "发送者：" + column2 + "\n"
			+ "内容：" + column3 + "\n" + "发送时间：" + column4);
	});
	
	$("#delete").click(function () {
		var column1 = table.row('.selected').data().column1;
		var column2 = table.row('.selected').data().column2;
		var column3 = table.row('.selected').data().column3;
		var column4 = table.row('.selected').data().column4;
		if (confirm("确定删除该信息？" + "\n" + "反馈ID：" + column1 + "\n" + "发送者：" + column2 + "\n"
				+ "内容：" + column3 + "\n" + "发送时间：" + column4)) {
			$.ajax({
				url: 'deleteOneFeedback',
				type: 'post',
				data: {
					feedbackId: column1
				},
				success: function (data) {
					if (data === "success") {
						alert("删除成功！");
						location.reload();
					} else {
						alert("删除失败！");
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
		$("#feedbackId").val(column1);
		$("#sendId").val(column2);
		$("#content").val(column3);
		$("#createTime").val(column4);
	});
	
	$("#save").click(function () {
		$.ajax({
			url: 'editOneFeedback',
			type: 'post',
			data: {
				feedbackId: $("#feedbackId").val(),
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
		$("#edit-area").css('display', 'none');
		
	});
	
});