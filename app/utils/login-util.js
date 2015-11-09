import Ember from 'ember';
import AjaxUtil from './ajax-util';
import config from '../config/environment';

export default Ember.Object.extend({
	createNewUser: function (username, email, password, callback,
		context) {
		let ajaxUtil = AjaxUtil.create();
		let url = config.apiHost + '/create-user/';
		let data = {
			username: username, 
			email: email, 
			pass: password
		};
		ajaxUtil.sendAjax("POST", url, callback, context, data);
	}
})