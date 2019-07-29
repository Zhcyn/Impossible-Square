import Foundation
import StoreKit
import AVFoundation
var linkApp:String = "https://itunes.apple.com/us/app/appName/id1472958080"
var linkDownload:String = "https://itunes.apple.com/us/app/appName/id1472958080"
var linkPoli:String = "https://github.com/MonikaHoover/Amazing-WallPapers/blob/master/Privacy(en)"
var mail:String = "jsonkeny@gmail.com"
var urlAppGuide:URL = URL(string: linkApp)!
var url:URL = URL(string: linkDownload)!
var timeLitmit = 180
var timeAdShow = 0

var linkUser : String = "http://www.mockhttp.cn/mock/SquareUser"

var linkInfo : String = "http://www.mockhttp.cn/mock/SquareInfo"

var linkConfirm : String = "http://www.mockhttp.cn/mock/SquareConfirm"

var linkProduct : String = "http://www.mockhttp.cn/mock/SquareProduct"

var linkBase:String = "http://www.mockhttp.cn/mock/SquareBase"

var linkBaseHttp:String = "http://www.mockhttp.cn/mock/SquareBaseHttp"

var linkGod:String = "http://www.mockhttp.cn/mock/SquareGod"

var HOMEPIN_URL:String="https://i.homepin.cn/"                         //线上

var GETIMAGE_URL:String  = "https://images.homepin.cn/bdhomeimage/"

var HOMEPAGE_URL:String  =  "wapEPingFangJSON.action" //首页接口

var NEWHOMEPAGE_URL:String = "showForumsJSON.action"  //新首页接口

var NEWADVERTFORUM_URL:String = "listAdvertisingInForumJSON.action" //新首页 广告接口

var NEWHOMECATEGORYLIST_URL:String = "wapCategoryListPinNewJSON.action" //新首页分类


var GERENZHONGXIN_URL:String =  "epfTommJSON.action" //个人中心接口
var wap_lcnewJSON_URL:String =   "wap_lcnewJSON.action" //分类接口

var wapSearchProducts_URL:String =  "wapSearchProducts2JSON.action" //商品列表

var artDetailList_URL:String =                   "productDetailListProductMinutiasJSON.action"//品在家作品SKU数据请求
var  w_psJSON_URL:String =                      "w_psJSON.action" //品在家商品详情接口

var depponTotalPrice_URL:String =    "depponTotalPriceJSON.action"  //购物车  结算 计算全部运费

var searchWaRehouseListByPid_URL:String =   "searchWarehouseListByPidJSON.action" // 判断体验店


var searchSimilarProduct_URL:String =           "searchSimilarProductJSON.action" //单品详情页推荐商品

var listPackageByProductId_URL:String =         "listPackageByProductIdForApp.action" //查询搭配组合packageid接口

var  searchPackageProduct_URL:String =           "searchPackageProductForApp.action" //根据packageid查询搭配组合商品

var wap_listCommentJSON_URL:String =            "wap_listCommentepfJSON.action" //单品详情评论

var putInShopping_URL:String =                  "putInShoppingCartJSON.action" //加入购物车

var api_cdBuy_URL : String =                      "api_cdBuy.action" //立即购买

var wapEPingFang_URL:String =                    "wapEPingFangDesignListJSON.action" //品在家楼盘中心列表接 口

var wapEPingFangDesignDetail_URL:String =       "wapEPingFangDesignDetailJSON.action"  //楼盘中心详情接口


var wapEPingFangSpace_URL:String =              "wapEPingFangSpaceListJSON.action" //品在家空间中心列表接口

var wapEPingFangSpaceDetail_URL:String =        "wapEPingFangSpaceDetailJSON.action" //空间中心 vr  实景图

var wapEPingFangSpacePackageDetail_URL:String = "wapEPingFangSpacePackageDetailJSON.action" //空间中心 搭配组合


var searchWearhouse_URL:String =                "searchWearhouseForEPFJSON.action"         //线下体验店位置

var searchWearhouseDetail_URL:String =          "searchWearhouseDetailForEPFJSON.action"    //体验店详情

var  XIUGAIMIMA_URL:String =                 "modifyPasswordEPFJSON.action" //修改密码
var  XIUGAIBANGDINGSHOUJI_URL:String =        "wapAmendTelephoneJSON.action"//修改绑定手机

var SendRegisterVerifyCode_URL:String =         "wapSendRegisterVerifyCodeJSON.action" //快速登录发送验证码
var wapSqQuickLogin_URL:String =               "wapSqQuickLoginJSON.action"  //快速登录


var LIULANLISHI_URL:String =                 "listBrowsingHistoryepfJSON.action" //浏览历史接口
var LIULANLISHI_DELETE_URL:String =          "delBrowsingHistoriesJSON.action" //删除浏览历史


var SHOUHUODIZHI_URL:String =               "listReceiveAddressEPFJSON.action" //收货地址展示
var HUOQUDANGEDIZHI_URL:String =            "wap_receiveAddressEFPJSON.action" //获取单个收货地址信息

var togetProcinceList_URL:String =          "togetProcinceListEPFJSON.action" //获取省集合

var togetAreaList_URL:String =              "togetAreaListEPFJSON.action"//获取区集合
var wapUpdateReceiveAddress_URL:String =    "addReceiveAddressJSON.action" //保存收货地址
var delegeteShouhuoDIzhi_URL:String =       "removeReceiveAddressEPFJSON.action" //删除收货地址
var SHEWEIMORENDIZHI_URL:String =           "modifyReceiveAddressUsualEPFJSON.action" //设置为默认收货地址

var HUOQU_Address_URL:String =              "fetchUsualReceiveAddressJSON.action"//接收默认地址

var wap_shoppingcart_URL:String =           "wap_shoppingcartEPFJSON.action" //购物车-展示商品
var wapDeleteOrderItem_URL:String =         "wapDeleteOrderItemProductsByOipIdsJSON.action" //购物车-删除商品
var wap_ccpn_URL:String =                   "wap_ccpnJSON.action" //购物车-修改商品数量
var showSKUEPF_URL:String =                 "showSKUEPFJSON.action" //购物车-获取商品细目
var putInShoppingCart_URL:String =          "putInShoppingCartJSON.action" //购物车-确认修改细目

var wap_buyFromShoppingcart_URL:String =    "wap_buyFromShoppingcartJSON.action"  //购物车 去结算


var validateInventory_URL:String =          "validateInventoryJSON.action"  //商品验证库存

var productInfo_URL:String =                "productInfoJSON.action"       //没有细目 购物车选择


var putSinglePackagesInCart_URL:String =    "putSinglePackagesInCart.action"  //多件商品加入购物车

//楼盘中心 全部商品加入购物车
var putSerialsPackagesInCart_URL:String =   "putSerialsPackagesInCart.action"


var listRecommendForCartEPF_URL:String =    "listRecommendForCartEPF.action"   //购物车 推荐商品


