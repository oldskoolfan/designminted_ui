import DS from 'ember-data';

export default DS.Model.extend({
	firstname: DS.attr('string'),
	lastname: DS.attr('string'),
	email: DS.attr('string'),
	message: DS.attr('string'),
	createdDate: DS.attr('date')
});
