angular.module('app', [])
    .controller('appCtrl', ['$scope', function($scope){
        //将大段文字字符串转为段落list
        var formatSpan = function (v) {
            return v.trim().split('\n');
        }

        $.ajax({
            url: '/jeecgos/productInfoController.do?publishInfo',
            async: false,
            success: function(data){
                $scope.data = eval('(' + data + ')');
                console.log($scope.data);
            }
        });
        //公司名
        $scope.cardName = $scope.data.cardInfoEntity.cardName;
        //公司名片
        $scope.cardContent = formatSpan($scope.data.cardInfoEntity.cardContent);
        //公告
        $scope.gonggaoEntities = $scope.data.gonggaoEntities;
        for (var i = 0; i < $scope.gonggaoEntities.length; i++) {
            $scope.gonggaoEntities[i].gonggaoNeirong = formatSpan($scope.gonggaoEntities[i].gonggaoNeirong);
        }
        //产品
        $scope.products = $scope.data.products;
        $scope.selectProduct = function(item) {
            $scope.currentProduct = item;
            $scope.currentProduct.product_content = formatSpan($scope.currentProduct.product_content);
            console.log($scope.currentProduct.product_content);
        }

        //友情链接
        $scope.linkageinfoEntities = $scope.data.linkageinfoEntities;
        $scope.newPage = function (l) {
            if (l.indexOf('http://') == -1) {
                l = 'http://' + l;
            }
            window.open(l);
        }


        $scope.tipShow = false;
        $scope.alertType = 'alert alert-warning';

        //联系我们
        $scope.contact = function () {
            console.log($scope.boadrPerson);
            if ($scope.boadrPerson == undefined || $scope.boadrPerson == ''
                || $scope.boadrTel == undefined || $scope.boadrTel == '') {
                $scope.tipShow = true;
                $scope.tipContent = '留下您的姓名和电话吧,方便联系!';
                return;
            }
            if ($scope.boadrContent == undefined || $scope.boadrContent == '') {
                $scope.tipShow = true;
                $scope.tipContent = '说点什么吧!';
                return;
            }
            $.post('/boardInfoController.do?doAdd', {
                boadrPerson: $scope.boadrPerson,
                boadrCompany: $scope.boadrCompany,
                boadrTel: $scope.boadrTel,
                boadrQq: $scope.boadrQq,
                boadrContent: $scope.boadrContent,
            }, function (data) {
                var result = eval('(' + data + ')')
                console.log(result.success);
                if (result.success) {
                    $scope.tipShow = true;
                    $scope.alertType = 'alert alert-success';
                    $scope.tipContent = '留言成功!';
                    $scope.$apply();
                    setTimeout(function () {
                        $scope.tipShow = false;
                        $scope.alertType = 'alert alert-warning';
                        $scope.$apply();
                    }, 2000);
                }
            });
        }

    }]);