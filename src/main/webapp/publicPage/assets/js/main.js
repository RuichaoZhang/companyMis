angular.module('app', [])
    .controller('appCtrl', ['$scope', function($scope){

        var formatSpan = function (v) {
            return v.trim().split('\n');
        }

        $.ajax({
            url: "/cardInfoController.do?publishInfo",
            async: false,
            success: function(data){
                $scope.data = eval('(' + data + ')');
                console.log($scope.data);
            }
        });
        //公司名
        $scope.company_name = $scope.data.cardName;
        //公司名片
        $scope.cards = formatSpan($scope.data);
        $scope.notices = $scope.data.notices;
        $scope.products = $scope.data.products;
        $scope.links = $scope.data.links;

        $scope.selectProduct = function(item) {
            $scope.currentItem = item;
        }
        $scope.keydown = function(item) {
            console.log($scope.c);
        }
    }]);