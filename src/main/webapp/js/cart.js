//悬浮变色
$("#book-recommand .recommand_list li").each(function() {

	$(this).find(".recommand_book_add").hover(function() {
		$(this).animate({
			backgroundColor : '#ff6700',
			color : '#fff'
		})
	}, function() {
		$(this).animate({
			backgroundColor : '#fff',
			color : '#ff6700'
		})
	})
})

// 选中更改样式
function changeClass(ck, ele) {
	if (ck.prop("checked")) {
		$(ele).addClass("selected").removeClass("not-selected");
	} else {
		$(ele).removeClass("selected").addClass("not-selected")
	}
}
// 全选
function checkAll() {
	$(".cart_table .cartItem").each(function() {
		if ($(this).prop("checked")) {
			$(this).prop("checked", false)
		} else {
			$(this).prop("checked", true)
		}
		$(this).trigger("change");
	})
}
// 事件绑定
// 复选框被选中样式改变
$(".cart_table .cartItem").each(function() {
	$(this).change(function() {
		changeClass($(this), $(this).parent().parent());
	})
});
// 全选
$(".checkAll").bind("click", function() {
	if ($(this).attr("type") != "checkbox") {
		if ($("input[class*='checkAll']").is(":checked")) {
			$("input[class*='checkAll']").prop("checked", false);
		} else {
			$("input[class*='checkAll']").prop("checked", true);
		}
	}
	checkAll();
});
// 清空
$("#clearCart").bind("click", function() {
	clearCart();
});
// 批量删除
$("#delCartItems").bind("click", delBatchBooks);
