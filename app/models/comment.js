import DS from 'ember-data';

export default DS.Model.extend({
	commentDate: DS.attr('date'),
	commentText: DS.attr('string'),
	blog: DS.belongsTo('blog'),
	user: DS.belongsTo('user'),
	isApproved: DS.attr('boolean')
});
