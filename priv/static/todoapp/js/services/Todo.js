'use strict';

/* Services */
angular.module('todomvc')
.factory('Todo', ['$resource',
  function($resource){
    return $resource('todos/:todoId', {
      todoId: '@id'
    }, {
      query: {method:'GET', isArray:true}
    });
  }]);