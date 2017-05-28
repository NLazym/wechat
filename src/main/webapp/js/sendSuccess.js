/**
 * Created by zzy on 2017/4/23.
 */
window.onload = function () {
	var num = document.getElementById("num");
	var i = num.innerText;
	setInterval(function () {
		i --;
		num.innerText = i;
		if (i === 0) {
			window.location.href = 'home';
		}
	}, 1000);
};