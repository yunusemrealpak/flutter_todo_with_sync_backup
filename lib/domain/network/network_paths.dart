class NetworkPaths {
  // Auth
  static const googleSignin = '/api/User/GoogleLogin';
  static const appleSignin = '/api/User/AppleLogin';
  static const facebookSignin = '/api/User/FacebookLogin';
  static const register = '/api/User/Register';
  static const login = '/api/User/Login';
  static const forgotPassword = '/api/User/ForgetPassword';
  static const checkToken = '/api/User/CheckToken';
  static const guestLogin = '/api/User/GuestLogin';
  static const getCities = '/api/User/City';
  static const getCountries = '/api/User/Country';
  static const updatePushToken = '/api/User/UpdatePushToken';
  static const sendSms = '/api/User/SendSms';
  static const validateSms = '/api/User/ValidateSmsCode';
  static const upgradePremium = '/api/Purchase/InApp';
  static const downloadAppWithReferralCode =
      '/api/User/DownloadAppWithReferenceCode';
  static const checkReferanceCode = '/api/User/CheckReferenceCode';
  static const checkUsername = '/api/User/CheckUserName';
  static const checkPhoneNumber = '/api/User/CheckPhoneNumber';
  static const checkEmail = '/api/User/CheckEmail';

  // Category
  static const categories = '/api/Category/SubCategories';
  static const updateUserCategories = '/api/User/UpdateUserCategories';

  // Home
  static const getAnnouncements = '/api/Advertisement/GetAdvertisements';
  static const getFeedDiscover = '/api/Feed/DiscoverNewVersion';
  static const searchFeedDiscover = '/api/Feed/Search';
  static const getCatalogAllItems = '/api/Feed/FeedCatalogContentItems';
  static const getSpeakerPlaylist = '/api/PlayList/SpeakerPlaylists';
  static const getPlaylistContents = '/api/PlayList/FeaturedPlayLists';
  static const getSubscribedCreators =
      '/api/ContentCreator/SubscribedContentCreators';
  static const getRadioLink = '/api/Feed/RadioLink';
  static const getContentCreators = '/api/ContentCreator/List';
  static const getCreatorDetails = '/api/ContentCreator/Detail';
  static const subscribeContentCreator = '/api/ContentCreator/Subscribe';
  static const unsubscribeContentCreator = '/api/ContentCreator/Unsubscribe';
  static const getDeepLink = '/api/Deeplink/GetDeepLink';

  // Radio
  static const pressRadioButton = '/api/Feed/PlayRadio';
  static const radioPing = '/api/Feed/RadioPing';

  static const checkVersion = '/api/Settings/CheckVersion';

  // Premium
  static const getPremiumDatas = '/api/User/Offerings';

  // Playlist
  static const getPlaylists = '/api/PlayList/CategoryPlaylists';
  static const getPlaylist = '/api/PlayList/Playlist/Detail';
  static const getPlaylistSection = '/api/PlayList/Sections/Detail';
  static const updateSectionStatus =
      '/api/PlayList/UpdatePlayListSectionListeningStatus';
  static const subscribePlaylist = '/api/PlayList/Subscribe';
  static const unsubscribePlaylist = '/api/PlayList/Unsubscribe';
  static const getNextPlaylistSection =
      '/api/PlayList/Sections/NavigatedPlaylistSectionForApp';

  static const subscribePlaylistSection =
      '/api/PlayList/PlaylistSection/Subscribe';
  static const unsubscribePlaylistSection =
      '/api/PlayList/PlaylistSection/Unsubscribe';

  // Profile
  static const changePasswordEndpoint = '/api/User/ChangePassword';
  static const changeNotificationStatus = '/api/User/UpdateUserSetting';
  static const getSubscribedPlaylists = '/api/PlayList/SubscribedPlaylists';
  static const getSubscribedPlaylistSections =
      '/api/PlayList/SubscribedPlaylistSections';
  static const getSubscribedSpeakers = '/api/Speaker/SubscribedSpeakers';
  static const getPlaylistHistory = '/api/PlayList/UserPlaylistSectionHistory';
  static const uploadProfileImage = '/api/User/UpdateUserProfilePhoto';
  static const updateUser = '/api/User/Update';
  static const getNotifications = '/api/Notification/List';
  static const getAggrements = '/api/User/AggrementLinks';
  static const getUnseenNotificationCount =
      '/api/Notification/UnSeenNotificationCount';
  static const deleteAccount = '/api/User/DeleteAccount';
  static const sendFeedback = '/api/UserFeedback/Create';
  static const getProfile = '/api/User/FullProfile';
  static const getMyReferanceCodeModel = '/api/User/ReferenceCode';
  static const useReferanceCode = '/api/User/UseReferenceCode';
  static const getLeaderboard = '/api/User/LeaderBoard';

  // Friendship
  static const getFriendRequests = '/api/Friendship/GetFriendRequests';
  static const sendFriendRequest = '/api/Friendship/SendFriendRequest';
  static const acceptFriendRequest = '/api/Friendship/AcceptFriendRequest';
  static const rejectFriendRequest = '/api/Friendship/RejectFriendRequest';
  static const cancelFriendRequest = '/api/Friendship/CancelFriendRequest';
  static const unfriend = '/api/Friendship/Unfriend';
}
