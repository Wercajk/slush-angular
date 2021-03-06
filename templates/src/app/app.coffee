angular.module('<%= modulename %>', [
  'ngRoute'
  <% if (example) { %>'<%= modulename %>.todo'
  <% } %>'<%= nameDashed %>-templates'
])<% if (example) { %>
.config ($routeProvider) ->
  'use strict'
  $routeProvider
    .when '/todo', 
      controller: 'TodoCtrl'
      templateUrl: '/<%= nameDashed %>/todo/todo.html'
    .otherwise
      redirectTo: '/todo'
<% } %>
