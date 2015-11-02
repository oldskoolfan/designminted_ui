import Ember from 'ember';

export default Ember.Route.extend({
	model: function () {
		return this.store.findAll("blog")
		.then(function (result){
			return result;
		}, function (error) {
			console.error(error);
		});
		//return {};
	}
});
