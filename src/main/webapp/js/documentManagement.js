/**
 * Created by zzy on 2017/6/3.
 */
$(function () {
	var table = $('#document-table').DataTable({
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
	$('#document-table tbody').on( 'click', 'tr', function () {
		if ($(this).hasClass('selected')) {
			$(this).removeClass('selected');
		}
		else {
			table.$('tr.selected').removeClass('selected');
			$(this).addClass('selected');
		}
	} );
	
	$("#download").click(function () {
		var column2 = table.row('.selected').data().column2;
		$("#documentName").val(column2);
		$("#download-form").submit();
	});
	
	$("#delete").click(function () {
		var column1 = table.row('.selected').data().column1;
		var column2 = table.row('.selected').data().column2;
		var column3 = table.row('.selected').data().column3;
		var column4 = table.row('.selected').data().column4;
		var column5 = table.row('.selected').data().column5;
		if (confirm("确定删除该文章？" + "\n" + "文章ID：" + column1 + "\n" + "文章名：" + column2 + "\n"
				+ "发送者：" + column3 + "\n" + "接收者：" + column4 + "\n" + "发送时间：" + column5)) {
			$.ajax({
				url: 'deleteOneDocument',
				type: 'post',
				data: {
					documentId: column1
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
	
});