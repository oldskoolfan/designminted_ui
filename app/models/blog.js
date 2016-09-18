import DS from 'ember-data';
import Em from 'ember';

export default DS.Model.extend({
	blogTitle: DS.attr('string'),
	pubDate: DS.attr('string'),
	pageType: DS.attr('number'),

	// FK relations
	user: DS.belongsTo('user'),
	comments: DS.hasMany('comment', {async: false}),
	contents: DS.hasMany('content', {async: false}),

	// computed properties
	commentProp: (function(){
		return "comment" + this.get('id').toString();
	}).property('id'),

	hasComments: (function(){
		return this.get('comments').get('length') > 0;
	}).property('comments'),

	urlTitle: Em.computed('blogTitle', function() {
		let title = this.get('blogTitle');
		if (title) {
			title = title.toLowerCase().dasherize();
		}
		return title;
	})
});
