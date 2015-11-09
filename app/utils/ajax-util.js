import Ember from 'ember';

export default Ember.Object.extend({
	sendAjax: function(method, url, callback, context, data) {
		let ajax = new XMLHttpRequest();
		ajax.open(method, url, true);
		if (method == "POST") {
			ajax.setRequestHeader("Content-type", 
				"application/x-www-form-urlencoded");
			if (data != null) {
				let dataStr = '';
				for (var key in data) {
					dataStr += '&' + key + '=' + data[key];
				}
				dataStr = dataStr.substring(1);
				ajax.send(dataStr);
			}
		} else {
			ajax.send();	
		}
		

		ajax.onreadystatechange = function() {
			switch (ajax.status) {
				case 200:
					callback(JSON.parse(ajax.responseText), context);
					break
				case 500:
					callback("Internal Server Error encountered");
					break
				default:
					callback("Problem sending request");
					break
			}
		}
	}
});