window.BucketList = {
  Models: {},
  Collections: {},
  Views: {},
  Routers: {},
  initialize: function() {
    new BucketList.Routers.Todos;
    Backbone.history.start();
  }
};

$(document).ready(function(){
  BucketList.initialize();
});
