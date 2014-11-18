'use strict';

/* Services */
angular.module('todomvc')
.factory('Todo', ['$resource',
  function($resource){
    return $resource('todos', {}, {
      query: {method:'GET', isArray:true}
    });
  }]);