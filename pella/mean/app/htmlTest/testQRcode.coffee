console.log("start")

angular.module("compile",[],
  ($compileProvider)->
    $compileProvider.directive(
      "compile",
    ($compile)->
      (scope,element,attrs)->
        scope.$watch(
          (scope)->
            scope.$eval(attrs.compile)
        ),
        (value)
    )
)