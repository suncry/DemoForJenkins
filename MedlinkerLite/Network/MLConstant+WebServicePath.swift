//
//  MLConstant+WebServicePath.swift
//  MedLinker
//
//  Created by EchoRed on 09/02/2017.
//  Copyright © 2017 medlinker. All rights reserved.
//

import UIKit

struct MLConstantWebServicePath {


    //MARK: - 数据同步接口
    /// 5.1新版数据同步
    let dataSync = "/sync/data"
    /// 病种科室同步
    let syncDiseasesList = "/sync/diseases/list" // r
    /// 注册科室同步
    let dataSectionsSync = "/sync/sections/registers/list"

    //MARK: - 登录注册
    /// 用户登录
    let login = "/users/login" // r
    /// 用户登出
    let logout = "/users/logout"
    /// 用户注册
    let register = "/users/register" // r
    /// 用户验证码登录
    let loginWithVerifyCode = "/users/verifycodes/login" // r
    /// 三方用户登录
    let thirdParthLogin = "/users/third-party/login"
    /// 游客登录
    let visitorLogin = "/users/visitors/add"
    /// 获取短信验证码
    let getVerifyCode = "/verifycodes/get" // cy r
    /// 获取注册科室选择列表
    let userSectionsTree = "/users/sections/trees/get" // r
    /// 添加消息token
    let addDeviceToken = "/users/messages/tokens/add" // r
    /// 九宫格
    let girdInfo = "/grid/list"
    /// 验证码绑定第三方
    let thridBindWithVerifyCode = "/users/verify-code/bind"
    /// 密码绑定第三方
    let thridBindWithPassword = "/users/bind"
    //  绑定三方帐号
    let thirdPartyBind = "/users/third-party/bind"
    //  解绑三方帐号
    let thirdPartyUnbind = "/users/third-party/unbind"
    //  三方帐号绑定列表
    let thirdPartyBindList = "/users/third-party"

    // 获取滑动拼图验证的图片
    let slideVerificationCodePicture = "/slide-jigsaw"
    // 滑动拼图验证
    let slideVerificationCodePictureVerify = "/sms-code-slide-jigsaw"
    
    /// 举报
    let reportAdd = "/reports/add"

    //MARK: - 上传图片相关
    let getImageToken = "/upfiles/tokens/get"
    let uploadImageInfo = "/files/create"

    //MARK: - 用户
    ///获取用户选择科室的注册人数
    let registerNumberOfSection = "/sections/people/count" // r
    /// 用户资料
    let userInfo = "/users/details/get" // r
    /// 修改密码
    let updatePassword = "/users/passwords/update" // r
    /// 更换手机号
    let changeCellphone = "/users/cellphones/change" // r
    /// 用户资料
    let userInfoEdit = "/users/details/edit" // r
    /// 用户病例列表
    let casemList = "/users/casems/list" // r
    /// 用户问题列表
    let questionList = "/users/questions/list" // r
    /// 用户回答列表
    let answerList = "/users/answers/list" // r
    /// 用户问答列表
    let userQAList = "/users/qas/list" // r
    /// 用户关注的内容列表
    let followContentList = "/users/follows/stuffs/list" // r
    /// 用户关注的病例列表
    let followCasemList = "/users/follows/casems/list" // cy r
    /// 用户关注的问题列表
    let followQuestionList = "/users/follows/questions/list" // r
    /// 用户关注人列表
    let followList = "/users/followings/list" // r
    /// 用户粉丝列表
    let followerList = "/users/followers/list" // r
    /// 关注用户
    let follow = "/users/follow" // r
    /// 取消关注用户
    let unFollow = "/users/unfollow" // r
    /// 草稿箱
    let userCaseDraft = "/users/drafts/list" // r
    /// 更新用户认证信息
    let userDoctorInfoUpdate = "/users/doctors/update" // r
    /// 修改资质证明
    let multiLicenseUpdateInfo = "/multiLicense/updateInfo"

    /// 用户圈子列表
    let userCircleList = "/users/circles/list" // r
    /// 用户添加学校信息
    let addEducationInfo = "/users/education/add"
    /// 用户添加代表作
    let addCasemmasterpiece = "/users/casemmasterpiece/add"
    /// 用户删除代表作
    let deleteCasemmasterpiece = "/users/casemmasterpiece/delete"
    /// 获取代表作
    let casemmasterpieceList = "/users/casemmasterpiece/list"
    /// 获取资料完善百分比
    let profilePercent = "/users/profilepercent"
    /// 获取指定用户学术交流内容
    let academeContentList = "/users/content/list"
    /// 病例贡献给我点赞的人
    let casemUpList = "/users/casems/up/list"
    /// 用户上传过的视频列表
    let userVideoList = "/videos/user/getList"
    /// 我收藏的视频列表
    let videoFollowList = "/videos/follow/list"
    /// 我参加的课程列表
    let videoFollowCourseList = "/videos/follow/course/list"

    /// 用户点券
    let getUserCoupon = "/users/coupon/get"
    /// 用户点券余额支付
    let userCouponPay = "/users/coupon/pay"
    /// 用户个人服务
    let userServices = "/users/services/get"

    /// 消息创建分组
    let createGroup = "/users/groups/add"
    /// 编辑分组
    let groupUpdate = "/users/groups/update"
    /// 消息分组列表
    let groupList = "/users/groups/list"
    /// 消息分组成员列表
    let groupMemberList = "/users/groups/members/list"
    /// 删除消息分组
    let groupListDelete = "/users/groups/delete"
    /// 成员备注
    let groupMembersRemark = "/users/groups/members/remark"
    /// 设置成员分组
    let groupMembersSet = "/users/groups/members/set"
    /// 从群聊中添加成员
    let groupChatsMembersList = "/users/groups/chats/members/list"
    /// 设置群聊昵称
    let groupChatNicknamesModify = "/chatgroups/nicknames/modify"

    //MARK: - 链接
    /// 解析链接
    let linkParse = "/headline/news/crawler/content"
    /// 发布链接
    let linkPublish = "/headline/news/publish"

    //MARK: - 帖子
    /// 添加问题
    let questionPublish = "/questions/add" // r
    /// 更新问题
    let questionUpdate = "/questions/update"
    /// 问题详情
    let questionDetail = "/questions/details/get" // r
    /// 问题回答列表
    let questionAnswerList = "/questions/answers/list" // r
    /// 关注问题
    let questionFollow = "/questions/follow" // r
    /// 取消关注
    let questionUnfollow = "/questions/unfollow" // r
    /// 删除问题
    let questionDelete = "/questions/delete" // r
    /// 问题投票
    let questionVote = "/questions/votes/add" // r
    /// 问题详情邀请回答推荐列表
    let questionSuggestUserList = "/questions/users/recommendations/list" // r
    /// 邀请回答关注列表数据
    let questionInvitedUserList = "/questions/users/invitations/list" // r
    /// 邀请回答
    let questionInviteUserAnswer = "/questions/users/invite" // r
    /// 热门投票
    let hotVotes = "/votes/list"


    //MARK: - 回答问题
    // 发布答案
    let kWebServiceAnswerPublish = "/answers/add" // r
    // 答案详情
    let kWebServiceAnswerDetails = "/answers/details/get" // r
    // 发布答案的评论，与回复评论
    let kWebServiceAnswerCommentPublish = "/answers/comments/add" // r
    // 答案的评论列表
    let kWebServiceAnswerCommentList = "/answers/comments/list" // r
    // 赞答案
    let kWebServiceAnswerVoteUp = "/answers/up" // r
    // 踩答案
    let kWebServiceAnswerVoteDown = "/answers/down" // r
    // 删除答案
    let kWebServiceAnswerDelete = "/answers/remove" // r
    // 删除评论
    let kWebServiceAnswerCommentRemove = "/answers/comments/remove" // r

    //MARK: - 病例
    // 发布病例
    let casePublish = "/casems/add" // r
    // 更新病例
    let caseUpdate = "/casems/update" // r
    // 病例详情
    let caseDetails = "/casems/details/get" // r
    // 点评病例
    let caseAnswerPublish = "/casems/comments/add" // r
    // 评论病例点评
    let caseAnswerCommentPublish = "/casems/comments/reply" // r
    // 病例点评列表
    let caseAnswerList = "/casems/comments/get" // r
    // 病例点评详情
    let caseAnswerDetail = "/casems/comments/details/get" // r
    // 顶病例的点评
    let caseAnswerUp = "/casems/comments/up" // r
    // 踩病例的点评
    let caseAnswerDown = "/casems/comments/down" // r
    // 点评的评论列表
    let caseAnswerCommentList = "/casems/replycomments/get" // r
    // 删除病例
    let caseDelete = "/casems/delete" // r
    // 删除病例点评
    let caseAnswerDelete = "/casems/comments/delete"
    // 删除病例点评的评论
    let caseAnswerCommentDelete = "/casems/replycomments/delete" // r
    // 关注病例
    let caseFollow = "/casems/follow" // r
    // 取消病例关注
    let caseUnfollow = "/casems/unfollow" // r
    // 计数器更新
    let counterGet = "/common/counters/get"
    // 搜索 科室 病种
    let searchSectionOrDisease = "/search/do"
    // 病例排行榜 附加信息
    let contributeAdditional = "/casems/top-extra"
    // 病例贡献排行榜
    let contributeCharts = "/casems/top"
    /// 科室 或者 病种 最佳贡献
    let sectionOrDiseaseBestContribute = "/casems/top-first"
    /// 贡献排行榜 点赞
    let medicalCaseUpUser = "/users/casems/up"
    /// 病例 打赏的人
    let medicalCaseRewardList = "/casems/reward/list"
    /// 打赏病例
    let rewardMedicalCase = "/casems/reward"
    /// 打赏病例的概要信息
    let rewardSummary = "/casems/rewardSummary"

    /// 病例/帖子/视频点赞
    let casemsRecommentsUp = "/casems/recomments/up"
    let videosRecommentsUp = "/videos/recomments/up"
    let answersRecommentsUp = "/answers/recomments/up"
    /// 病例/帖子/视频 踩
    let casemsRecommentsDown = "/casems/recomments/down"
    let videosRecommentsDown = "/videos/recomments/down"
    let answersRecommentsDown = "/answers/recomments/down"

    //MARK: - 病例库
    /// 病例库流
    let diseasesList = "/diseases/list" // r
    /// 病例库病种搜索
    let diseaseSearch = "/diseases/search/list"

    let videoIndexHotList = "/videos/index/hot/list"

    let topicVideoList = "/videos/topic/list"

    let haveVideoTagList = "videos/topic/tab/list"

    let answerPublish = "answers/add"

    let addVideoComment = "videos/comments/add"

    let videoCommentsReply = "/videos/comments/replies/add"

    /// 4.0评论列表格式 病例/帖子/视频
    let questionsAnswerandcommentList = "/h5/questions/answerandcomment/list"
    let casemsAnswerandcommentList = "/h5/casems/answerandcomment/list"
    let videosAnswerandcommentList = "/h5/videos/answerandcomment/list"


    //MARK: - 搜索
    /// 搜索病种
    let searchDiseases = "/search/v4"

    // MARK: - 推广
    let bannerList = "/banners/list" // r

    // MARK: - 直播

    /// 创建直播
    let publishLiveVideo = "/lives/addLive"

    /// 创建立即直播
    let publishLiveVideoStartImmediately = "/lives/rtmp/immediate/add"

    /// 直播开始推流
    let liveVideoStartPush = "/lives/rtmp/push/start"

    /// 直播停止推流
    let liveVideoStopPush = "/lives/rtmp/push/stop"

    /// 直播保存录像
    let liveVideoSaveRecord = "/lives/rtmp/replay/save"

    /// 直播删除录像
    let liveVideoDeleteRecord = "/lives/rtmp/replay/delete"

    //视频直播流-直播列表
    let liveVideoList = "/new-videos/live-list"

    //视频直播流-视频列表
    let videoIndexList = "/new-videos/video-list"

    // 直播分类流接口
    let livesTopicList = "/lives/new/topic/list"

    // 直播tab list
    let livesTopicTabList = "/lives/topic/tab/list"

    //视频tab-直播播放地址
    let liveVideoPlayUrl = "/lives/rtmp/play/get"

    //视频tab-直播录像播放地址
    let liveVideoReplayUrl = "/lives/rtmp/replay/get"

    /// 用户发布的直播列表接口
    let publishedLiveList = "/lives/user/publish/list"

    /// 用户报名的直播列表接口
    let signUpLiveList = "/lives/user/signup/list"

    /// 用户全部直播下 我的订阅
    let allLiveMineSubcibe = "/lives/subscribe/list"

    /// 用户全部直播 对应标签下的直播
    let allLiveTag = "/lives/inroottopic/list"

    /// 用户报名
    let liveVideoUserSignUp = "/lives/user/signup"

    /// 幻灯片上传
    let liveVideoPPTUpload = "/lives/showImageUpload"

    /// 获取用户签名
    let liveVideoUserSignatureGet = "/lives/user/sign/get"

    /// 直播用户在线列表
    let liveVideoOnlinePeopleList = "/lives/users/list"

    /// 直播详情
    let liveDetail = "/lives/detail"

    /// 获取直播间历史消息
    let liveHistoryChatMsg = "/lives/chat-list"

    /// 使用邀请码购买直播
    let liveInviteCodePay = "/lives/invite-code/pay"

    // MARK: - 视频
    /// 参加课程
    let joinCourse = "/videos/courses/join"
    /// 获取实际播放/下载链接
    let getActualVideoUrl = "/videos/getPlayUrl"
    /// 批量获取实际播放/下载链接
    let batchGetActualVideoUrl = "/videos/getPlayUrls"
    /// 视频详情
    let videoDetails = "/videos/details/get"
    /// 取消关注视频
    let unFollowVideo = "/videos/unfollow"
    /// 关注视频
    let followVideo = "/videos/follow"
    /// 视频阅读数
    let videoWatchCount = "/videos/readcounters/plus"
    /// 用户点券
    let userCouponGet = "/users/coupon/get"
    /// 视频验证
    let videoReceiptVerify = "/videos/receipts/verify"

    // MARK: - 点赞

    /// 删除视频评论
    let videosCommentsDelete = "/videos/comments/delete"
    /// 删除视频评论回复
    let videosCommentsRepliesDelete = "/videos/comments/replies/delete"


    // 顶病例的点评
    let casemsCommentsUp = "/casems/comments/up"
    // 踩病例的点评
    let casemsCommentsDown = "/casems/comments/down"
    /// 视频评论点赞
    let videosCommentsUp = "/videos/comments/up"
    /// 视频评论点踩
    let videosCommentsDown = "/videos/comments/down"
    // 赞答案
    let answersUp = "/answers/up"
    // 踩答案
    let answersDown = "/answers/down"

    //MARK: - 推送
    let pushesStatusGet = "/users/pushes/status/get" // r
    let pushesOperate = "/users/pushes/switchs/set" // r

    //MARK: - 天使谷
    /// 首页入口列表
    let angelHomeEntrance = "/angel-valley/config/entrance"
    /// 跑马灯
    let angelMarquee = "/angel-valley/marquee/list"
    /// 首页整合接口
    let angelJobTotal = "/angel-valley/job/total"
    /// 首页任务领取
    let angelTaskAward = "/angel-valley/job/award/receive"
    /// 小红点
    let angelReddot = "/angel-valley/reddot"
    /// 天使分提升记录
    let angelScoreList = "/angel-valley/score/list"
    /// 天使分解读任务列表
    let angelScoreDetail = "/angel-valley/score/detail"
    //发起挑战
    let fightLaunch = "/angel-valley/fight-launch"
    //排名用户列表
    let fightRankUsers = "/angel-valley/fight-rank-users"
    //匹配用户列表
    let fightMatchUsers = "/angel-valley/fight-match-users"
    //宝箱列表
    let boxList = "/angel-valley/chest/list"
    //战绩详情 动态
    let fightRecord = "/angel-valley/fight-record"
    //战绩详情 全部
    let fightAllRecord = "/angel-valley/fight-all-record"

    //战斗列表
    let combatList =  "/angel-valley/fight-his"
    //商城广告位
    let marketAds =  "/angel-valley/market-ads"
    //打开宝箱
    let openBox =  "/angel-valley/chest/open"
    //签到详情
    let checkinDetail =  "/angel-valley/checkin/checkinDetail"
    //签到
    let checkin =  "/angel-valley/checkin/checkin"
    //补签
    let recheckin =  "/angel-valley/checkin/recheckin"
    /// 天使获取名片
    let angelCard = "/angel-valley/card"
    /// 天使成就列表
    let angelAchievementList = "/angel-valley/achievement/list"
    /// 天使战绩列表
    let angelRecordList = "/angel-valley/fight-record"
    /// 设置成就展示
    let angelCardAchievement = "/angel-valley/card/achievement"
    /// 设置战绩展示
    let angelCardRecord = "/angel-valley/card/fight"
    //开启天使评价
    let evaluationEnable = "/evaluation/enableV5"
    //天使谷主页弹窗消息列表
    let msgboxList = "/angel-valley/index/msgbox/list"


    let commentsList = "notices/comment-list"

    let fancyList = "notices/like-list"

    let readNotify = "notices/receipts/update"



    // 同步用户通讯录
    let usersContactsSet = "users/contacts/set"


    //MARK: - 羽毛积分 API

    //获取羽毛积分详情
    let creditInfo = "/integrals/details/get"

    //签到提醒设置
    let creditCheckinRemindSetting = "/integrals/sets/remind"

    //获取羽毛数量
    let creditCountGet = "/feather/get"

    //获取商品列表
    let creditGoodsList = "/market/goods/list"


    //MARK: - 资料编辑 新增API

    // 论文列表
    let papersList = "/users/papers/list"
    // 增加论文
    let papersAdd = "/users/papers/add"
    // 删除论文
    let papersDelete = "/users/papers/delete"
    // 会议列表
    let meetsList = "/users/meets/list"
    // 增加会议
    let meetsAdd = "/users/meets/add"
    // 删除会议
    let meetsDelete = "/users/meets/delete"

    // 术式添加
    let surgicalmethodAdd = "/users/surgicalmethod/add"
    // 推荐术式
    let surgicalmethodRecommendlist = "/users/surgicalmethod/recommend/list"
    // 术式获取
    let surgicalmethodList = "/users/surgicalmethod/list"


    //MARK: - 兴趣
    /// 导航配置
    let navsConfig = "/navs/config"
    /// 用户加入的小组的动态
    let groupsFeedsListsUser = "/groups/feeds/lists/user"
    /// 精选小组
    let groupsListsPrime = "/groups/lists/prime"
    /// 热门小组
    let groupsListsHot = "/groups/lists/hot"
    /// 推荐小组
    let groupsRecommend = "/groups/recommend/list"
    /// 小组分类列表
    let groupsList = "/groups/list"
    /// 小组动态
    let groupsFeedsList = "/groups/feeds/list"
    /// 小组置顶列表
    let groupsFeedsTopList = "/groups/feeds/top/list"
    /// 小组详情
    let groupsDetailGet = "/groups/details/get"
    /// 加入小组
    let groupsIn = "/groups/in"
    /// 退出小组
    let groupsOut = "/groups/out"
    /// 更新小组
    let groupsIntroUpdate = "groups/details/up"
    /// 搜索小组
    let groupsListsSearch = "/groups/lists/search"
    /// 搜索搜索小组成员
    let groupsUsersListsSearch = "groups/users/list/search"
    /// 管理员管理的小组列表
    let groupsUsersManagement = "/groups/users/management"

    
    /// 小组精选
    let groupsListsSelected = "/groups/lists/selected"
    /// 我的小组
    let groupsListsMe = "/groups/lists/user"

    /// 精选列表   用于debug
    let selectedList = "/selected/list"
    /// 热门搜索
    let hotSearch = "/search/hot-search"
    /// 搜索4.0
    let searchV4 = "/search/v4"

    //MARK: - 打赏
    /// 打赏验证
    let donate = "/rewards/ios-reward"

    /// 打赏
    let rewards = "/rewards/do"

    /// 用户打赏列表
    let rewardsList = "/rewards/list"

    /// 病例、帖子、直播打赏详情
    let rewardsRecordGet = "/rewards/records/get"

    /// 直播打赏信息
    let liveVideoRewardsInfo = "/rewards/info/get"

    // MARK: - 精选
    /// 精选列表
    let concentrationList = "/selected/list"

    /// 精选社区列表
    let concentrationCommunityList = "/selected/community/feeds/list"

    /// 栏目树
    let concentrationCategoryList = "/selected/category/tree"

    /// 用户订阅的栏目列表
    let concentrationUserSelectedCategoryList = "/selected/user/category/list"

    /// 更新用户订阅的栏目
    let concentrationUserSelectedCategoryUpdate = "/selected/user/category/update"

    /// 热门搜索
    let concentrationHotSearch = "/search/hot-search"

    /// 搜索4.0
    let concentrationSearchV4 = "/search/v4"

    //用户二维码
    let userSQContent = "/users/qrcode"

    let serviceList = "/users/services/get"

    //MARK: - 社区

    //社区首页
    let communityFeedsList = "/community/feeds/list"
    //获取社区列表
    let communityList = "/community/list"
    // 通过注册科室获取社区列表
    let communityDefaultList = "/community/default/list"
    /// 获取社区管理权限列表
    let communityJurisdictionList = "/community/dismission/list"
    /// 数据加精华
    let communityEssenceMark = "/community/essence/mark"
    /// 通过注册科室获取对应二级社区
    let communityGettedBySection = "/community/id/get"

    //MARK: - 头条
    /// 获取新的推荐资讯
    let headlineRecommend = "/headline/recommend"
    /// 获取看过的推荐资讯
    let headlinelist = "/headline/list"
    /// 资讯详情
    let headlineDetail = "/headline/news/detail"
    /// 喜欢
    let headlineNewsLike = "/headline/news/like"
    /// 取消喜欢
    let headlineNewsDislike = "/headline/news/dislike"
    /// 阅读(上报)
    let headlineNewsRead = "/headline/news/read"
    /// 分享(上报)
    let headlineNewsShare = "/headline/news/share"
    /// 举报
    let headlineNewsReport = "/headline/news/report"
    /// 小调查 投票
    let surveyVote = "/survey/vote"
    /// 删除头条
    let headlineNewsRemove = "/headline/news/remove"



    //MARK: - 5.0 IM
    // 通讯录 我的好友
    let userFriendList = "/user/friend-list"
    // 通讯录好友判断
    let userContactsCheck = "/user/contacts-check"
    // 同院同事列表
    let userWorkmateList = "/user/workmate-list"
    // 群详情
    let groupInfo = "/group/info"
    // 成员列表
    let groupUserList = "/group/user-list"
    // 用户详情
    let msgUserDetail = "/user/detail"
    // 保存群聊到通讯录
    let userAddGroupToContact = "/user/add-group-to-contact"
    // 删除保存的群聊
    let userDelGroupToContact = "/user/del-group-from-contact"
    // 通讯录保存的群聊列表
    let userContactGroupList = "/user/contact-group-list"
    // 设置是否对指定群免打扰
    let userBlockGroup = "/user/block-group"
    // 修改群名称
    let setGroupName = "/group/set-group-name"
    // 设置群主
    let setGroupOwer = "/group/set-owner"
    // 设置群公告
    let setBroadcast = "/group/set-broadcast"
    // 修改群介绍
    let setGroupContent = "/group/set-content"
    // 设置为公开群
    let setGroupPublic = "/group/set-public"
    // 修改群头像
    let setGroupAvatar = "/group/set-avatar"
    // 推荐群列表
    let groupRecommendList = "/group/get-recommend-list"
    // 搜索用户
    let userSearch = "/user/search"
    // 搜索好友和群和公开群
    let userSearchFriendGroup = "/user/search-friend-group"
    // 设置是否对指定用户免打扰
    let userBlockUser = "/user/block-user"
    // 离线消息
    let messageOffline = "/offline"
    // 消息回执
    let messageReceipt = "/receipt"
    // 消息历史记录
    let messageHistory = "/message/history"
    // 系统消息历史记录
    let sysMessageHistory = "/message/sys-history"
    // 会话列表
    let messageChatList = "/message/chat-list"
    // 删除会话
    let messageDelteChat = "/message/del-chat"
    // 加群和好友申请记录
    let userGetNewApplyList = "/user/get-new-apply-list"

    // 处方详情
    let prescriptionDetail = "/app/5.0/prescriptions/new/"
    // 问诊发送消息
    let sendMessageInquiry = "/doctor/inquiry/"   // {inquiryId}/sendMessage
    // 开药门诊发送消息
    let sendMessageMedicineclinic = "doctor/medicine-clinic/chat/callback/"   // {id}/sendMessage
    // 问诊详情
    let inquiryDetail = "/doctor/inquiry/"   // {inquiryId}
    // 开药门诊详情
    let medicineclinic = "doctor/medicine-clinic/"   // {id}
    // 退回接单池
    let throwInPool = "doctor/medicine-clinic/throw-in-pool/"   // {id}
    // 结束对话
    let closeMedicine = "/doctor/medicine-clinic/close/"   // {id}
    // 我的经纪人(d2d)
    let userAgent = "/app/5.0/users/my-me"
    // 判断绑定状态(d2d)
    let patientIsBind = "/app/5.0/patient/"  // {pid}/isbind
    // 医生端与患者的绑定操作
    let patientBindAction = "/app/5.0/patient/"
    // 经纪人详情(d2d)
    let brokerDetail = "/brokers/" // GET /brokers/{brokerId}
    // 添加常用语
    let commonlyAdd = "/app/5.0/im/commonly/add"
    // 删除常用语
    let commonlyDelete = "/app/5.0/im/commonly/del"
    // 拉取常用语
    let commonlyList = "/app/5.0/im/commonly/list"
    // 取患教消息
    let msgTemplateList = "/app/5.0/im/msg-template/list"
    // 添加患教消息
    let msgTemplateAdd = "/app/5.0/im/msg-template/add"
    // 编辑患教消息
    let msgTemplateUpdate = "/app/5.0/im/msg-template/update"
    // 删除患教消息
    let msgTemplateDelete = "/app/5.0/im/msg-template/del"



    //比美特
    let kWebServiceBimeites = "/bimeites/get"

    //MARK: - 病历 API

    // 我的病历列表
    let caseHistoryList = "/users/medicalrecords/list"

    //MARK: - 二维码
    let weixinQRcodeUrl = "/wechat/qrcode-value"
    //MARK: - 信息管理

    /// 增加奖项
    let awardsAdd = "/users/awards/add"
    /// 删除奖项
    let awardsDelete = "/users/awards/delete"
    /// 获奖列表
    let awardsList = "/users/awards/list"
    /// 增加作品
    let worksAdd = "/users/works/add"
    /// 删除作品
    let worksDelete = "/users/works/delete"
    /// 作品列表
    let worksList = "/users/works/list"
    /// 增加任职
    let dutiesAdd = "/users/duties/add"
    /// 删除任职
    let dutiesDelete = "/users/duties/delete"
    /// 任职列表
    let dutiesList = "/users/duties/list"

    /// 任职列表
    let usersApplicationsList = "/users/applications/list"

    //广告
    let activityBannerList = "/banners/index-float/get"

    // MARK: - 统计
    let serviceCollect = "service/collect"

    // 分享成功调用的接口
    let shareNTF = "/share/ntf"
    
    // 5.1.1
    // 帖子评论与回复
    let questionsAnswerwithcommentList = "/h5/questions/answerwithcomment/list"
    // 病例评论与回复
    let casemsAnswerwithcommentList = "/h5/casems/answerwithcomment/list"
    // 视频评论与回复
    let videosAnswerwithcommentList = "/h5/videos/answerwithcomment/list"

    // 执业推广配置
    let doctorWorkSpreadList = "/doctor/work/spread-list"

    // 服务端一血
    let userFirstBlood = "/users/first-blood"

    //MARK: - 6.0
    // 首页推广数据接口
    let homePage = "/homePage"
    let homeFeedAll = "/groups/feeds/all"
    
    
    
    //MARK: Lite
    // 我的患者
    let patientAll = "/app/5.0/patient/all"

}
