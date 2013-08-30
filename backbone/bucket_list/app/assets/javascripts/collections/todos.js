BucketList.Collections.Todos = Backbone.Collection.extend({

  model: BucketList.Models.Todo,
  url: '/api/todos'

});
