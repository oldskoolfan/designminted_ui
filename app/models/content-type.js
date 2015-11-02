import DS from 'ember-data';

export default DS.Model.extend({
	contents: DS.hasMany('content', {async:true}),
	typeName: DS.attr('string')
});
