import DS from 'ember-data';

export default DS.Model.extend({
	contentCaption: DS.attr('string'),
	contentText: DS.attr('string'),
	contentData: DS.attr('string'),
	fileExtension: DS.attr('string'),
	contentType: DS.belongsTo('contentType',{async:true}),
	createdDate: DS.attr('string'),
	isText: (function () {
		return this.get('contentType').get('id') === '1';
	}).property('contentType.id'),
	isImage: (function () {
		return this.get('contentType').get('id') === '2';
	}).property('contentType.id'),
	blog: DS.belongsTo('blog')
});
