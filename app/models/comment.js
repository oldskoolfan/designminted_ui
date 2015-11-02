import DS from 'ember-data';

export default DS.Model.extend({
	commentDate: DS.attr('string'),
	commentText: DS.attr('string'),
	blog: DS.belongsTo('blog')
});
