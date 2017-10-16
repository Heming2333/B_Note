window.__justep.__ResourceEngine.loadCss([{url: '/system/components/bootstrap.min.css', include: '$model/system/components/bootstrap/lib/css/bootstrap,$model/system/components/bootstrap/lib/css/bootstrap-theme'},{url: '/system/components/comp.min.css', include: '$model/system/components/justep/lib/css2/dataControl,$model/system/components/justep/input/css/datePickerPC,$model/system/components/justep/messageDialog/css/messageDialog,$model/system/components/justep/lib/css3/round,$model/system/components/justep/input/css/datePicker,$model/system/components/justep/row/css/row,$model/system/components/justep/attachment/css/attachment,$model/system/components/justep/barcode/css/barcodeImage,$model/system/components/bootstrap/dropdown/css/dropdown,$model/system/components/justep/dataTables/css/dataTables,$model/system/components/justep/contents/css/contents,$model/system/components/justep/common/css/forms,$model/system/components/justep/locker/css/locker,$model/system/components/justep/menu/css/menu,$model/system/components/justep/scrollView/css/scrollView,$model/system/components/justep/loadingBar/loadingBar,$model/system/components/justep/dialog/css/dialog,$model/system/components/justep/bar/css/bar,$model/system/components/justep/popMenu/css/popMenu,$model/system/components/justep/lib/css/icons,$model/system/components/justep/lib/css4/e-commerce,$model/system/components/justep/toolBar/css/toolBar,$model/system/components/justep/popOver/css/popOver,$model/system/components/justep/panel/css/panel,$model/system/components/bootstrap/carousel/css/carousel,$model/system/components/justep/wing/css/wing,$model/system/components/bootstrap/scrollSpy/css/scrollSpy,$model/system/components/justep/titleBar/css/titleBar,$model/system/components/justep/lib/css1/linear,$model/system/components/justep/numberSelect/css/numberList,$model/system/components/justep/list/css/list,$model/system/components/justep/dataTables/css/dataTables'}]);window.__justep.__ResourceEngine.loadJs(['/system/core.min.js','/system/common.min.js','/system/components/comp.min.js']);define(function(require){
require('$model/UI2/system/components/justep/model/model');
require('$model/UI2/system/components/justep/loadingBar/loadingBar');
require('$model/UI2/system/components/justep/button/button');
require('$model/UI2/system/components/justep/scrollView/scrollView');
require('$model/UI2/system/components/justep/menu/menu');
require('$model/UI2/system/components/justep/panel/child');
require('$model/UI2/system/components/justep/panel/panel');
require('$model/UI2/system/components/justep/popOver/popOver');
require('$model/UI2/system/components/justep/contents/content');
require('$model/UI2/system/components/justep/windowContainer/windowContainer');
require('$model/UI2/system/components/justep/popMenu/popMenu');
require('$model/UI2/system/components/justep/titleBar/titleBar');
require('$model/UI2/system/components/justep/contents/contents');
require('$model/UI2/system/components/justep/data/data');
require('$model/UI2/system/components/justep/window/window');
require('$model/UI2/system/components/justep/button/buttonGroup');
var __parent1=require('$model/UI2/system/lib/base/modelBase'); 
var __parent0=require('$model/UI2/B_Note/home'); 
var __result = __parent1._extend(__parent0).extend({
	constructor:function(contextUrl){
	this.__sysParam='true';
	this.__contextUrl=contextUrl;
	this.__id='';
	this.__cid='c3uQfUn';
	this._flag_='0ad5c6ef1d3a66301307078c38ff891a';
	this.callParent(contextUrl);
 var __Data__ = require("$UI/system/components/justep/data/data");new __Data__(this,{"autoLoad":false,"autoNew":false,"confirmDelete":true,"confirmRefresh":true,"defCols":{"EmailAddress":{"define":"EmailAddress","name":"EmailAddress","relation":"EmailAddress","type":"String"},"account":{"define":"account","name":"account","relation":"account","type":"String"},"gender":{"define":"gender","name":"gender","relation":"gender","type":"String"},"headimgURL":{"define":"headimgURL","name":"headimgURL","relation":"headimgURL","type":"String"},"nickName":{"define":"nickName","name":"nickName","relation":"nickName","type":"String"},"openId":{"define":"openId","name":"openId","relation":"openId","type":"String"},"password":{"define":"password","name":"password","relation":"password","type":"String"},"userId":{"define":"userId","name":"userId","relation":"userId","type":"String"},"userIntro":{"define":"userIntro","name":"userIntro","relation":"userIntro","type":"String"}},"directDelete":false,"events":{"onCustomRefresh":"userCustomRefresh"},"idColumn":"userId","limit":20,"xid":"user"});
 new __Data__(this,{"autoLoad":false,"autoNew":false,"confirmDelete":true,"confirmRefresh":true,"defCols":{"boardBackGroundId":{"define":"boardBackGroundId","name":"boardBackGroundId","relation":"boardBackGroundId","type":"String"},"noteBoardId":{"define":"noteBoardId","name":"noteBoardId","relation":"noteBoardId","type":"String"},"userId":{"define":"userId","name":"userId","relation":"userId","type":"String"}},"directDelete":false,"events":{"onCustomRefresh":"note_boardCustomRefresh"},"idColumn":"noteBoardId","limit":20,"xid":"note_board"});
 new __Data__(this,{"autoLoad":false,"autoNew":false,"confirmDelete":true,"confirmRefresh":true,"defCols":{"boardBackGroundId":{"define":"boardBackGroundId","name":"boardBackGroundId","relation":"boardBackGroundId","type":"String"},"boardBackGroundName":{"define":"boardBackGroundName","name":"boardBackGroundName","relation":"boardBackGroundName","type":"String"}},"directDelete":false,"events":{"onCustomRefresh":"boardBackGroundCustomRefresh"},"idColumn":"boardBackGroundId","limit":20,"xid":"boardBackGround"});
}}); 
return __result;});
