angular.module('app', [])
    .controller('appCtrl', ['$scope', function($scope){
        //将大段文字字符串转为段落list
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
        $scope.cards = formatSpan($scope.data.cardContent);
        $scope.notices = $scope.data.notices;
        $scope.products = $scope.data.products;
        $scope.links = $scope.data.links;

        $scope.selectProduct = function(item) {
            $scope.currentItem = item;
        }
        $scope.keydown = function(item) {
            console.log($scope.c);
        }







        //联系我们
        $scope.contact = function () {
            $.post('post', {
                contact_username: $scope.contact_username,
                contact_company: $scope.contact_company,
                contact_phone: $scope.contact_phone,
                contact_qq: $scope.contact_qq,
                contact_content: $scope.contact_content,
            }, function (data) {

            });
            console.log($scope.contact_username);
            console.log($scope.contact_company);
            console.log($scope.contact_phone);
            console.log($scope.contact_qq);
            console.log($scope.contact_content);
        }
    }]);