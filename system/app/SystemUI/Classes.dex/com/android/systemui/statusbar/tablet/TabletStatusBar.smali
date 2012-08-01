.class public Lcom/android/systemui/statusbar/tablet/TabletStatusBar;
.super Lcom/android/systemui/statusbar/StatusBar;
.source "TabletStatusBar.java"

# interfaces
.implements Lcom/android/systemui/statusbar/tablet/HeightReceiver$OnBarHeightChangedListener;
.implements Lcom/android/systemui/statusbar/tablet/InputMethodsPanel$OnHardKeyboardEnabledChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/tablet/TabletStatusBar$TouchOutsideListener;,
        Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationIconTouchListener;,
        Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationTriggerTouchListener;,
        Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationClicker;,
        Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field public static final DEBUG_COMPAT_HELP:Z = false

.field private static final FAKE_SPACE_BAR:Z = true

.field public static final MSG_CLOSE_COMPAT_MODE_PANEL:I = 0x41b

.field public static final MSG_CLOSE_INPUT_METHODS_PANEL:I = 0x411

.field public static final MSG_CLOSE_MINI_MODE_APPS_PANEL:I = 0x425

.field public static final MSG_CLOSE_NOTIFICATION_PANEL:I = 0x3e9

.field public static final MSG_CLOSE_NOTIFICATION_PEEK:I = 0x3eb

.field public static final MSG_CLOSE_RECENTS_PANEL:I = 0x3fd

.field public static final MSG_HIDE_CHROME:I = 0x407

.field public static final MSG_OPEN_COMPAT_MODE_PANEL:I = 0x41a

.field public static final MSG_OPEN_INPUT_METHODS_PANEL:I = 0x410

.field public static final MSG_OPEN_MINI_MODE_APPS_PANEL:I = 0x424

.field public static final MSG_OPEN_NOTIFICATION_PANEL:I = 0x3e8

.field public static final MSG_OPEN_NOTIFICATION_PEEK:I = 0x3ea

.field public static final MSG_OPEN_RECENTS_PANEL:I = 0x3fc

.field public static final MSG_SHOW_CHROME:I = 0x406

.field public static final MSG_STOP_TICKER:I = 0x7d0

.field static final NOTIFICATION_PEEK_ENABLED:Z = false

.field static final NOTIFICATION_PEEK_FADE_DELAY:I = 0xbb8

.field static final NOTIFICATION_PEEK_HOLD_THRESH:I = 0xc8

.field private static final NUM_TRAYOPEN_SOUND_CHANNELS:I = 0x1

.field public static final TAG:Ljava/lang/String; = "TabletStatusBar"


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field mBackButton:Landroid/widget/ImageView;

.field mBarContents:Landroid/view/ViewGroup;

.field mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

.field mBluetoothController:Lcom/android/systemui/statusbar/policy/BluetoothController;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mButtonOnTouchListener:Landroid/view/View$OnTouchListener;

.field mCloseMiniAppsPanel:Ljava/lang/reflect/Method;

.field mCompatModeButton:Lcom/android/systemui/statusbar/policy/CompatModeButton;

.field private mCompatModePanel:Lcom/android/systemui/statusbar/tablet/CompatModePanel;

.field mCompatibilityHelpDialog:Landroid/view/View;

.field mDisabled:I

.field mFakeSpaceBar:Landroid/view/View;

.field mFeedbackIconArea:Landroid/view/ViewGroup;

.field mHandler:Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;

.field mHeightReceiver:Lcom/android/systemui/statusbar/tablet/HeightReceiver;

.field mHomeButton:Landroid/view/View;

.field mIconHPadding:I

.field mIconLayout:Lcom/android/systemui/statusbar/tablet/NotificationIconArea$IconLayout;

.field mIconSize:I

.field mInputMethodSwitchButton:Lcom/android/systemui/statusbar/tablet/InputMethodButton;

.field private mInputMethodsPanel:Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;

.field mIsMiniAppPanelLoadedProperly:Z

.field mLatestNotificationCart:Landroid/widget/LinearLayout;

.field mLatestNotificationItems:Landroid/view/ViewGroup;

.field mLatestNotificationTitle:Landroid/widget/TextView;

.field mLocationController:Lcom/android/systemui/statusbar/policy/LocationController;

.field private mMaxNotificationIcons:I

.field mMenuButton:Landroid/view/View;

.field private mMiniConPile:Landroid/widget/LinearLayout;

.field private mMiniModeAppsPanel:Landroid/view/ViewGroup;

.field private mMiniModeAppsPanelInAnim:Landroid/view/animation/Animation;

.field private mMiniModeAppsPanelOutAnim:Landroid/view/animation/Animation;

.field mMiniModeTrayClass:Ljava/lang/Class;

.field mMiniModeTrayEnabled:Z

.field private mMiniModeTrayView:Landroid/view/View;

.field mNaturalBarHeight:I

.field mNavigationArea:Landroid/view/ViewGroup;

.field mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

.field mNotificationArea:Landroid/view/View;

.field mNotificationDNDDummyEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;

.field mNotificationDNDMode:Z

.field private mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

.field mNotificationFlingVelocity:I

.field mNotificationIconArea:Lcom/android/systemui/statusbar/tablet/NotificationIconArea;

.field mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

.field mNotificationPanelParams:Landroid/view/WindowManager$LayoutParams;

.field mNotificationPeekIndex:I

.field mNotificationPeekKey:Landroid/os/IBinder;

.field mNotificationPeekRow:Landroid/view/ViewGroup;

.field mNotificationPeekScrubLeft:Landroid/animation/LayoutTransition;

.field mNotificationPeekScrubRight:Landroid/animation/LayoutTransition;

.field mNotificationPeekTapDuration:I

.field mNotificationPeekWindow:Lcom/android/systemui/statusbar/tablet/NotificationPeekPanel;

.field mNotificationTrigger:Landroid/view/View;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field mOngoingNotificationCart:Landroid/widget/LinearLayout;

.field mOngoingNotificationItems:Landroid/view/ViewGroup;

.field mOngoingNotificationTitle:Landroid/widget/TextView;

.field mOpenMiniAppsPanel:Ljava/lang/reflect/Method;

.field private mPanelSlightlyVisible:Z

.field mPile:Landroid/view/ViewGroup;

.field mQuickLaunchButton:Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;

.field mRecentButton:Landroid/view/View;

.field private mRecentTasksLoader:Lcom/android/systemui/recent/RecentTasksLoader;

.field private mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

.field mShadow:Landroid/view/View;

.field private mSoundPool:Landroid/media/SoundPool;

.field private mSoundPoolId:[I

.field mSpaceBarKeyEvent:Landroid/view/KeyEvent;

.field private mStatusBarContainerView:Landroid/view/View;

.field private mStatusBarInAnim:Landroid/view/animation/Animation;

.field private mStatusBarOutAnim:Landroid/view/animation/Animation;

.field mStatusBarView:Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mSystemUiVisibility:I

.field mTicker:Lcom/android/systemui/statusbar/tablet/TabletTicker;

.field private mUseMiniCon:Z

.field private mVibrator:Landroid/os/Vibrator;

.field mWindowManager:Landroid/view/IWindowManager;

.field private sLocale:Ljava/util/Locale;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v0, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 128
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBar;-><init>()V

    .line 163
    iput v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNaturalBarHeight:I

    .line 164
    iput v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIconSize:I

    .line 165
    iput v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIconHPadding:I

    .line 166
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMaxNotificationIcons:I

    .line 168
    new-instance v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;-><init>(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;Lcom/android/systemui/statusbar/tablet/TabletStatusBar$1;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mHandler:Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;

    .line 173
    new-instance v0, Lcom/android/systemui/statusbar/NotificationData;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/NotificationData;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    .line 234
    iput-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mSpaceBarKeyEvent:Landroid/view/KeyEvent;

    .line 236
    iput-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCompatibilityHelpDialog:Landroid/view/View;

    .line 239
    iput v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mDisabled:I

    .line 247
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniModeTrayEnabled:Z

    .line 248
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIsMiniAppPanelLoadedProperly:Z

    .line 249
    iput-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniModeTrayClass:Ljava/lang/Class;

    .line 252
    iput-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mOpenMiniAppsPanel:Ljava/lang/reflect/Method;

    .line 253
    iput-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCloseMiniAppsPanel:Ljava/lang/reflect/Method;

    .line 255
    iput-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniModeAppsPanel:Landroid/view/ViewGroup;

    .line 268
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mSoundPoolId:[I

    .line 271
    iput v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mSystemUiVisibility:I

    .line 281
    iput-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 282
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->sLocale:Ljava/util/Locale;

    .line 1966
    new-instance v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$7;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$7;-><init>(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 1978
    new-instance v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$8;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$8;-><init>(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mButtonOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 2776
    new-instance v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$9;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$9;-><init>(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 2801
    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->playTraySound()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Landroid/view/ViewGroup;
    .registers 2
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniModeAppsPanel:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Landroid/view/animation/Animation;
    .registers 2
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniModeAppsPanelInAnim:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Landroid/view/animation/Animation;
    .registers 2
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mStatusBarOutAnim:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mStatusBarContainerView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniModeTrayView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Landroid/view/animation/Animation;
    .registers 2
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniModeAppsPanelOutAnim:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Landroid/view/animation/Animation;
    .registers 2
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mStatusBarInAnim:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->hideCompatibilityHelp()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Lcom/android/internal/statusbar/IStatusBarService;
    .registers 2
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->animateCollapse(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Lcom/android/internal/statusbar/IStatusBarService;
    .registers 2
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Lcom/android/systemui/statusbar/NotificationData;
    .registers 2
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/ViewGroup;)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 128
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->inflateViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/ViewGroup;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Lcom/android/systemui/recent/RecentsPanelView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;
    .registers 2
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mInputMethodsPanel:Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Lcom/android/systemui/statusbar/tablet/CompatModePanel;
    .registers 2
    .parameter "x0"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCompatModePanel:Lcom/android/systemui/statusbar/tablet/CompatModePanel;

    return-object v0
.end method

.method static synthetic access$872(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;I)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    iget v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mSystemUiVisibility:I

    and-int/2addr v0, p1

    iput v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mSystemUiVisibility:I

    return v0
.end method

.method static synthetic access$876(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;I)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    iget v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mSystemUiVisibility:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mSystemUiVisibility:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->notifyUiVisibilityChanged()V

    return-void
.end method

.method private animateCollapse(Z)V
    .registers 7
    .parameter "excludeRecents"

    .prologue
    const/16 v4, 0x41b

    const/16 v3, 0x411

    const/16 v2, 0x3fd

    const/16 v1, 0x3e9

    .line 1713
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mHandler:Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->removeMessages(I)V

    .line 1714
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mHandler:Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->sendEmptyMessage(I)Z

    .line 1715
    if-nez p1, :cond_1e

    .line 1716
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mHandler:Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->removeMessages(I)V

    .line 1717
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mHandler:Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->sendEmptyMessage(I)Z

    .line 1719
    :cond_1e
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mHandler:Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->removeMessages(I)V

    .line 1720
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mHandler:Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->sendEmptyMessage(I)Z

    .line 1721
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mHandler:Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->removeMessages(I)V

    .line 1722
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mHandler:Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->sendEmptyMessage(I)Z

    .line 1727
    return-void
.end method

.method private getNotificationPanelHeight()I
    .registers 7

    .prologue
    .line 669
    iget-object v4, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 670
    .local v2, res:Landroid/content/res/Resources;
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/WindowManagerImpl;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 671
    .local v0, d:Landroid/view/Display;
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 672
    .local v3, size:Landroid/graphics/Point;
    invoke-virtual {v0, v3}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 675
    const v1, 0x7f0a0045

    .line 676
    .local v1, npHeight:I
    sget-boolean v4, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->useTouchWizGUI:Z

    if-eqz v4, :cond_20

    .line 677
    const v1, 0x7f0a004b

    .line 680
    :cond_20
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget v5, v3, Landroid/graphics/Point;->y:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    return v4
.end method

.method private hasDirectionChanged(Landroid/content/res/Configuration;)Z
    .registers 3
    .parameter "configuration"

    .prologue
    .line 2947
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->hasDirectionChanged(Ljava/util/Locale;)Z

    move-result v0

    return v0
.end method

.method private hasDirectionChanged(Ljava/util/Locale;)Z
    .registers 5
    .parameter "locale"

    .prologue
    .line 2951
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->sLocale:Ljava/util/Locale;

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->isLanguageRTL(Ljava/util/Locale;)Z

    move-result v1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->isLanguageRTL(Ljava/util/Locale;)Z

    move-result v2

    if-eq v1, v2, :cond_10

    const/4 v0, 0x1

    .line 2952
    .local v0, result:Z
    :goto_d
    iput-object p1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->sLocale:Ljava/util/Locale;

    .line 2953
    return v0

    .line 2951
    .end local v0           #result:Z
    :cond_10
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private hasTicker(Landroid/app/Notification;)Z
    .registers 3
    .parameter "n"

    .prologue
    .line 1667
    iget-object v0, p1, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    if-nez v0, :cond_c

    iget-object v0, p1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private hideCompatibilityHelp()V
    .registers 3

    .prologue
    .line 1839
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCompatibilityHelpDialog:Landroid/view/View;

    if-eqz v0, :cond_10

    .line 1840
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCompatibilityHelpDialog:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/WindowManagerImpl;->removeView(Landroid/view/View;)V

    .line 1841
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCompatibilityHelpDialog:Landroid/view/View;

    .line 1843
    :cond_10
    return-void
.end method

.method private inflateViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/ViewGroup;)Z
    .registers 22
    .parameter "entry"
    .parameter "parent"

    .prologue
    .line 2644
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    move-object/from16 v17, v0

    .line 2645
    .local v17, sbn:Lcom/android/internal/statusbar/StatusBarNotification;
    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v15, v3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 2646
    .local v15, remoteViews:Landroid/widget/RemoteViews;
    if-nez v15, :cond_10

    .line 2647
    const/4 v3, 0x0

    .line 2723
    :goto_f
    return v3

    .line 2651
    :cond_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v5, "layout_inflater"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/LayoutInflater;

    .line 2654
    .local v13, inflater:Landroid/view/LayoutInflater;
    const/16 v16, 0x0

    .line 2655
    .local v16, row:Landroid/view/View;
    sget-boolean v3, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->useTouchWizGUI:Z

    if-eqz v3, :cond_f7

    .line 2656
    const v3, 0x7f03002c

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v13, v3, v0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v16

    .line 2661
    :goto_2c
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->workAroundBadLayerDrawableOpacity(Landroid/view/View;)V

    .line 2662
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v3}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->updateNotificationVetoButton(Landroid/view/View;Lcom/android/internal/statusbar/StatusBarNotification;)Landroid/view/View;

    move-result-object v18

    .line 2663
    .local v18, vetoButton:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v5, 0x7f08006f

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2667
    const v3, 0x7f0f007c

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageView;

    .line 2668
    .local v14, largeIcon:Landroid/widget/ImageView;
    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v3, v3, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_103

    .line 2669
    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v3, v3, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v14, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2670
    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v3, v3, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-virtual {v14, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2675
    :goto_74
    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v3, v3, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-virtual {v14, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2678
    const v3, 0x7f0f0070

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    .line 2680
    .local v8, content:Landroid/view/ViewGroup;
    const/high16 v3, 0x6

    invoke-virtual {v8, v3}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 2682
    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v4, v3, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 2683
    .local v4, contentIntent:Landroid/app/PendingIntent;
    if-eqz v4, :cond_110

    .line 2684
    new-instance v2, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationClicker;

    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    move-object/from16 v0, v17

    iget-object v6, v0, Lcom/android/internal/statusbar/StatusBarNotification;->tag:Ljava/lang/String;

    move-object/from16 v0, v17

    iget v7, v0, Lcom/android/internal/statusbar/StatusBarNotification;->id:I

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationClicker;-><init>(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;I)V

    .line 2687
    .local v2, listener:Landroid/view/View$OnClickListener;
    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2693
    .end local v2           #listener:Landroid/view/View$OnClickListener;
    :goto_ad
    const/4 v11, 0x0

    .line 2694
    .local v11, expanded:Landroid/view/View;
    const/4 v10, 0x0

    .line 2696
    .local v10, exception:Ljava/lang/Exception;
    :try_start_af
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v15, v3, v8}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    :try_end_b6
    .catch Ljava/lang/RuntimeException; {:try_start_af .. :try_end_b6} :catch_117

    move-result-object v11

    .line 2701
    :goto_b7
    if-nez v11, :cond_11a

    .line 2702
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "/0x"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    iget v5, v0, Lcom/android/internal/statusbar/StatusBarNotification;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 2703
    .local v12, ident:Ljava/lang/String;
    const-string v3, "TabletStatusBar"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "couldn\'t inflate view for notification "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2704
    const/4 v3, 0x0

    goto/16 :goto_f

    .line 2658
    .end local v4           #contentIntent:Landroid/app/PendingIntent;
    .end local v8           #content:Landroid/view/ViewGroup;
    .end local v10           #exception:Ljava/lang/Exception;
    .end local v11           #expanded:Landroid/view/View;
    .end local v12           #ident:Ljava/lang/String;
    .end local v14           #largeIcon:Landroid/widget/ImageView;
    .end local v18           #vetoButton:Landroid/view/View;
    :cond_f7
    const v3, 0x7f030015

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v13, v3, v0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v16

    goto/16 :goto_2c

    .line 2672
    .restart local v14       #largeIcon:Landroid/widget/ImageView;
    .restart local v18       #vetoButton:Landroid/view/View;
    :cond_103
    invoke-virtual {v14}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    const/4 v5, 0x0

    iput v5, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2673
    const/4 v3, 0x4

    invoke-virtual {v14, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_74

    .line 2689
    .restart local v4       #contentIntent:Landroid/app/PendingIntent;
    .restart local v8       #content:Landroid/view/ViewGroup;
    :cond_110
    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_ad

    .line 2698
    .restart local v10       #exception:Ljava/lang/Exception;
    .restart local v11       #expanded:Landroid/view/View;
    :catch_117
    move-exception v9

    .line 2699
    .local v9, e:Ljava/lang/RuntimeException;
    move-object v10, v9

    goto :goto_b7

    .line 2709
    .end local v9           #e:Ljava/lang/RuntimeException;
    :cond_11a
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mUseMiniCon:Z

    if-eqz v3, :cond_126

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/statusbar/StatusBarNotification;->isMiniCon()Z

    move-result v3

    if-nez v3, :cond_129

    .line 2710
    :cond_126
    invoke-virtual {v8, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 2713
    :cond_129
    const/4 v3, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 2716
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v8}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->applyLegacyRowBackground(Lcom/android/internal/statusbar/StatusBarNotification;Landroid/view/View;)V

    .line 2718
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Landroid/view/View;

    .line 2719
    move-object/from16 v0, p1

    iput-object v8, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->content:Landroid/view/View;

    .line 2720
    move-object/from16 v0, p1

    iput-object v11, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->expanded:Landroid/view/View;

    .line 2721
    move-object/from16 v0, p1

    iput-object v14, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->largeIcon:Landroid/widget/ImageView;

    .line 2723
    const/4 v3, 0x1

    goto/16 :goto_f
.end method

.method private initTraySound()V
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 701
    new-instance v0, Landroid/media/SoundPool;

    invoke-direct {v0, v1, v1, v4}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mSoundPool:Landroid/media/SoundPool;

    .line 702
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mSoundPoolId:[I

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mSoundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v3, 0x7f050003

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    aput v1, v0, v4

    .line 704
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mAudioManager:Landroid/media/AudioManager;

    .line 705
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mVibrator:Landroid/os/Vibrator;

    .line 706
    return-void
.end method

.method private isImmersive()Z
    .registers 3

    .prologue
    .line 1927
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->isTopActivityImmersive()Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    move-result v1

    .line 1931
    :goto_8
    return v1

    .line 1929
    :catch_9
    move-exception v0

    .line 1931
    .local v0, ex:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_8
.end method

.method private isLanguageRTL(Ljava/util/Locale;)Z
    .registers 4
    .parameter "locale"

    .prologue
    .line 2940
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 2941
    .local v0, currentLanguage:Ljava/lang/String;
    const-string v1, "ar"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    const-string v1, "he"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    const-string v1, "iw"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    :cond_1c
    const/4 v1, 0x1

    :goto_1d
    return v1

    :cond_1e
    const/4 v1, 0x0

    goto :goto_1d
.end method

.method private loadNotificationPanel()V
    .registers 12

    .prologue
    .line 2507
    iget-object v9, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/NotificationData;->size()I

    move-result v0

    .line 2509
    .local v0, N:I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2511
    .local v7, toShow:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_c
    if-ge v2, v0, :cond_20

    .line 2512
    iget-object v9, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    sub-int v10, v0, v2

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v9, v10}, Lcom/android/systemui/statusbar/NotificationData;->get(I)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v9

    iget-object v5, v9, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Landroid/view/View;

    .line 2513
    .local v5, row:Landroid/view/View;
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2511
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 2516
    .end local v5           #row:Landroid/view/View;
    :cond_20
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2517
    .local v6, toRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v2, 0x0

    :goto_26
    iget-object v9, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mPile:Landroid/view/ViewGroup;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    if-ge v2, v9, :cond_40

    .line 2518
    iget-object v9, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mPile:Landroid/view/ViewGroup;

    invoke-virtual {v9, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2519
    .local v1, child:Landroid/view/View;
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3d

    .line 2520
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2517
    :cond_3d
    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    .line 2524
    .end local v1           #child:Landroid/view/View;
    :cond_40
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_44
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_56

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 2525
    .local v4, remove:Landroid/view/View;
    iget-object v9, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mPile:Landroid/view/ViewGroup;

    invoke-virtual {v9, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_44

    .line 2528
    .end local v4           #remove:Landroid/view/View;
    :cond_56
    const/4 v2, 0x0

    :goto_57
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v2, v9, :cond_74

    .line 2529
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    .line 2530
    .local v8, v:Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    if-nez v9, :cond_71

    .line 2531
    iget-object v9, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mPile:Landroid/view/ViewGroup;

    add-int/lit8 v10, v0, -0x1

    sub-int/2addr v10, v2

    invoke-virtual {v9, v8, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 2528
    :cond_71
    add-int/lit8 v2, v2, 0x1

    goto :goto_57

    .line 2535
    .end local v8           #v:Landroid/view/View;
    :cond_74
    iget-object v9, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    invoke-virtual {v9, v0}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->setNotificationCount(I)V

    .line 2536
    return-void
.end method

.method private notifyUiVisibilityChanged()V
    .registers 3

    .prologue
    .line 1749
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mWindowManager:Landroid/view/IWindowManager;

    iget v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mSystemUiVisibility:I

    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->statusBarVisibilityChanged(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 1752
    :goto_7
    return-void

    .line 1750
    :catch_8
    move-exception v0

    goto :goto_7
.end method

.method private playTraySound()V
    .registers 9

    .prologue
    const/4 v3, 0x2

    const/4 v4, 0x0

    .line 710
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v7

    .line 712
    .local v7, mRingerMode:I
    packed-switch v7, :pswitch_data_2a

    .line 721
    :goto_b
    return-void

    .line 714
    :pswitch_c
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    int-to-float v1, v1

    div-float v2, v0, v1

    .line 715
    .local v2, adjustmentValue:F
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mSoundPoolId:[I

    aget v1, v1, v4

    const/high16 v6, 0x3f80

    move v3, v2

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto :goto_b

    .line 712
    :pswitch_data_2a
    .packed-switch 0x2
        :pswitch_c
    .end packed-switch
.end method

.method private reloadAllNotificationIcons()V
    .registers 2

    .prologue
    .line 2402
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIconLayout:Lcom/android/systemui/statusbar/tablet/NotificationIconArea$IconLayout;

    if-nez v0, :cond_5

    .line 2405
    :goto_4
    return-void

    .line 2403
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIconLayout:Lcom/android/systemui/statusbar/tablet/NotificationIconArea$IconLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/tablet/NotificationIconArea$IconLayout;->removeAllViews()V

    .line 2404
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->updateNotificationIcons()V

    goto :goto_4
.end method

.method private reloadBars()V
    .registers 16

    .prologue
    .line 2891
    iget-object v6, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    .line 2892
    .local v6, context:Landroid/content/Context;
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v14

    .line 2893
    .local v14, wm:Landroid/view/WindowManagerImpl;
    invoke-static {}, Landroid/util/LocaleUtil;->isLayoutDirectionRtl()Z

    move-result v12

    .line 2895
    .local v12, rtl:Z
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-virtual {v6, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2896
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mBluetoothController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    invoke-virtual {v6, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2897
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-virtual {v6, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2899
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mInputMethodsPanel:Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;

    invoke-virtual {v14, v1}, Landroid/view/WindowManagerImpl;->removeViewImmediate(Landroid/view/View;)V

    .line 2900
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniModeAppsPanel:Landroid/view/ViewGroup;

    if-eqz v1, :cond_27

    .line 2901
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniModeAppsPanel:Landroid/view/ViewGroup;

    invoke-virtual {v14, v1}, Landroid/view/WindowManagerImpl;->removeViewImmediate(Landroid/view/View;)V

    .line 2903
    :cond_27
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v14, v1}, Landroid/view/WindowManagerImpl;->removeViewImmediate(Landroid/view/View;)V

    .line 2904
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPeekWindow:Lcom/android/systemui/statusbar/tablet/NotificationPeekPanel;

    if-eqz v1, :cond_35

    .line 2905
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPeekWindow:Lcom/android/systemui/statusbar/tablet/NotificationPeekPanel;

    invoke-virtual {v14, v1}, Landroid/view/WindowManagerImpl;->removeViewImmediate(Landroid/view/View;)V

    .line 2907
    :cond_35
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    invoke-virtual {v14, v1}, Landroid/view/WindowManagerImpl;->removeViewImmediate(Landroid/view/View;)V

    .line 2908
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;

    invoke-virtual {v14, v1}, Landroid/view/WindowManagerImpl;->removeViewImmediate(Landroid/view/View;)V

    .line 2909
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCompatModePanel:Lcom/android/systemui/statusbar/tablet/CompatModePanel;

    if-eqz v1, :cond_48

    .line 2910
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCompatModePanel:Lcom/android/systemui/statusbar/tablet/CompatModePanel;

    invoke-virtual {v14, v1}, Landroid/view/WindowManagerImpl;->removeViewImmediate(Landroid/view/View;)V

    .line 2913
    :cond_48
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationData;->size()I

    move-result v8

    .line 2914
    .local v8, entriesCount:I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 2915
    .local v7, entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    const/4 v10, 0x0

    .local v10, i:I
    :goto_54
    if-ge v10, v8, :cond_62

    .line 2916
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v1, v10}, Lcom/android/systemui/statusbar/NotificationData;->get(I)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2915
    add-int/lit8 v10, v10, 0x1

    goto :goto_54

    .line 2918
    :cond_62
    new-instance v1, Lcom/android/systemui/statusbar/NotificationData;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/NotificationData;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    .line 2920
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->makeStatusBarView()Landroid/view/View;

    move-result-object v13

    .line 2921
    .local v13, sb:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->getStatusBarHeight()I

    move-result v2

    .line 2922
    .local v2, height:I
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/16 v3, 0x7d0

    const v4, 0x800048

    const/4 v5, 0x2

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 2930
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->getStatusBarGravity()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 2931
    const-string v1, "StatusBar"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 2932
    invoke-virtual {v14, v13, v0}, Landroid/view/WindowManagerImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2934
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :goto_8f
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 2935
    .local v9, entry:Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v1, v9, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Landroid/os/IBinder;

    iget-object v3, v9, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    invoke-virtual {p0, v1, v3}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->addNotificationViews(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;)Lcom/android/systemui/statusbar/StatusBarIconView;

    goto :goto_8f

    .line 2937
    .end local v9           #entry:Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_a3
    return-void
.end method

.method private sendKey(Landroid/view/KeyEvent;)V
    .registers 3
    .parameter "key"

    .prologue
    .line 1961
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v0, p1}, Landroid/view/IWindowManager;->injectInputEventNoWait(Landroid/view/InputEvent;)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1964
    :goto_5
    return-void

    .line 1962
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method private setAreThereNotifications()V
    .registers 3

    .prologue
    .line 1936
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    if-eqz v0, :cond_18

    .line 1937
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationData;->hasClearableItems()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->setClearable(Z)V

    .line 1939
    sget-boolean v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->useTouchWizGUI:Z

    if-eqz v0, :cond_18

    .line 1940
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->updateClearButton()V

    .line 1944
    :cond_18
    return-void
.end method

.method private setNavigationVisibility(I)V
    .registers 13
    .parameter "visibility"

    .prologue
    const/4 v9, 0x4

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1632
    const/high16 v8, 0x20

    and-int/2addr v8, p1

    if-eqz v8, :cond_78

    move v2, v6

    .line 1633
    .local v2, disableHome:Z
    :goto_9
    const/high16 v8, 0x100

    and-int/2addr v8, p1

    if-eqz v8, :cond_7a

    move v3, v6

    .line 1634
    .local v3, disableRecent:Z
    :goto_f
    const/high16 v8, 0x40

    and-int/2addr v8, p1

    if-eqz v8, :cond_7c

    move v0, v6

    .line 1637
    .local v0, disableBack:Z
    :goto_15
    sget-boolean v8, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->useTouchWizGUI:Z

    if-eqz v8, :cond_56

    .line 1638
    const/high16 v8, 0x200

    and-int/2addr v8, p1

    if-eqz v8, :cond_7e

    move v1, v6

    .line 1639
    .local v1, disableCapture:Z
    :goto_1f
    iget-object v10, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mQuickLaunchButton:Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;

    if-nez v3, :cond_2d

    if-nez v1, :cond_2d

    iget-object v8, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mQuickLaunchButton:Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->isQuickLaunchNoneMode()Z

    move-result v8

    if-eqz v8, :cond_80

    :cond_2d
    move v8, v9

    :goto_2e
    invoke-virtual {v10, v8}, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->setVisibility(I)V

    .line 1644
    sget-boolean v8, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->useTouchWizGUI:Z

    if-eqz v8, :cond_56

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniModeTrayEnabled:Z

    if-eqz v8, :cond_56

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIsMiniAppPanelLoadedProperly:Z

    if-eqz v8, :cond_56

    .line 1645
    const/high16 v8, 0x400

    and-int/2addr v8, p1

    if-eqz v8, :cond_82

    move v4, v6

    .line 1646
    .local v4, disableTray:Z
    :goto_43
    iget-object v8, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;

    const v10, 0x7f0f0037

    invoke-virtual {v8, v10}, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 1647
    .local v5, mCue:Landroid/view/View;
    if-eqz v5, :cond_56

    .line 1648
    if-nez v3, :cond_52

    if-eqz v4, :cond_84

    :cond_52
    move v8, v9

    :goto_53
    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1658
    .end local v1           #disableCapture:Z
    .end local v4           #disableTray:Z
    .end local v5           #mCue:Landroid/view/View;
    :cond_56
    iget-object v10, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mBackButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_86

    move v8, v9

    :goto_5b
    invoke-virtual {v10, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1659
    iget-object v10, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mHomeButton:Landroid/view/View;

    if-eqz v2, :cond_88

    move v8, v9

    :goto_63
    invoke-virtual {v10, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1660
    iget-object v8, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mRecentButton:Landroid/view/View;

    if-eqz v3, :cond_8a

    :goto_6a
    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1662
    iget-object v8, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mInputMethodSwitchButton:Lcom/android/systemui/statusbar/tablet/InputMethodButton;

    const/high16 v9, 0x10

    and-int/2addr v9, p1

    if-eqz v9, :cond_8c

    :goto_74
    invoke-virtual {v8, v6}, Lcom/android/systemui/statusbar/tablet/InputMethodButton;->setScreenLocked(Z)V

    .line 1664
    return-void

    .end local v0           #disableBack:Z
    .end local v2           #disableHome:Z
    .end local v3           #disableRecent:Z
    :cond_78
    move v2, v7

    .line 1632
    goto :goto_9

    .restart local v2       #disableHome:Z
    :cond_7a
    move v3, v7

    .line 1633
    goto :goto_f

    .restart local v3       #disableRecent:Z
    :cond_7c
    move v0, v7

    .line 1634
    goto :goto_15

    .restart local v0       #disableBack:Z
    :cond_7e
    move v1, v7

    .line 1638
    goto :goto_1f

    .restart local v1       #disableCapture:Z
    :cond_80
    move v8, v7

    .line 1639
    goto :goto_2e

    :cond_82
    move v4, v7

    .line 1645
    goto :goto_43

    .restart local v4       #disableTray:Z
    .restart local v5       #mCue:Landroid/view/View;
    :cond_84
    move v8, v7

    .line 1648
    goto :goto_53

    .end local v1           #disableCapture:Z
    .end local v4           #disableTray:Z
    .end local v5           #mCue:Landroid/view/View;
    :cond_86
    move v8, v7

    .line 1658
    goto :goto_5b

    :cond_88
    move v8, v7

    .line 1659
    goto :goto_63

    :cond_8a
    move v9, v7

    .line 1660
    goto :goto_6a

    :cond_8c
    move v6, v7

    .line 1662
    goto :goto_74
.end method

.method private showCompatibilityHelp()V
    .registers 8

    .prologue
    const/4 v1, -0x1

    .line 1805
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCompatibilityHelpDialog:Landroid/view/View;

    if-eqz v2, :cond_6

    .line 1836
    :goto_5
    return-void

    .line 1809
    :cond_6
    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v3, 0x7f030001

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCompatibilityHelpDialog:Landroid/view/View;

    .line 1810
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCompatibilityHelpDialog:Landroid/view/View;

    const v3, 0x7f0f0007

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 1812
    .local v6, button:Landroid/view/View;
    new-instance v2, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$6;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$6;-><init>(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)V

    invoke-virtual {v6, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1822
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7d8

    const v4, 0x20300

    const/4 v5, -0x3

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 1830
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    const-string v1, "CompatibilityModeDialog"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 1831
    const/16 v1, 0x31

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 1833
    const v1, 0x10301e3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1835
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCompatibilityHelpDialog:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroid/view/WindowManagerImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_5
.end method

.method private tick(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;Z)V
    .registers 6
    .parameter "key"
    .parameter "n"
    .parameter "firstTime"

    .prologue
    .line 1672
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1691
    :cond_8
    :goto_8
    return-void

    .line 1677
    :cond_9
    if-nez p3, :cond_13

    iget-object v0, p2, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget v0, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_8

    .line 1684
    :cond_13
    iget-object v0, p2, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->hasTicker(Landroid/app/Notification;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 1685
    iget v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mDisabled:I

    const/high16 v1, 0xa

    and-int/2addr v0, v1

    if-nez v0, :cond_8

    .line 1687
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mTicker:Lcom/android/systemui/statusbar/tablet/TabletTicker;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/tablet/TabletTicker;->add(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;)V

    .line 1688
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mFeedbackIconArea:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_8
.end method

.method private tw_loadNotificationPanel()V
    .registers 16

    .prologue
    .line 2540
    iget-object v13, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v13}, Lcom/android/systemui/statusbar/NotificationData;->size()I

    move-result v0

    .line 2542
    .local v0, N:I
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 2543
    .local v11, toShowOngoing:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 2544
    .local v9, toShowLatest:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 2546
    .local v10, toShowMiniCon:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_16
    if-ge v2, v0, :cond_62

    .line 2547
    iget-object v13, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    sub-int v14, v0, v2

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v13, v14}, Lcom/android/systemui/statusbar/NotificationData;->get(I)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v13

    iget-object v5, v13, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Landroid/view/View;

    .line 2548
    .local v5, row:Landroid/view/View;
    iget-object v13, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    sub-int v14, v0, v2

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v13, v14}, Lcom/android/systemui/statusbar/NotificationData;->get(I)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v13

    iget-object v13, v13, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    invoke-virtual {v13}, Lcom/android/internal/statusbar/StatusBarNotification;->isMiniCon()Z

    move-result v13

    if-eqz v13, :cond_48

    .line 2549
    iget-object v13, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    sub-int v14, v0, v2

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v13, v14}, Lcom/android/systemui/statusbar/NotificationData;->get(I)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v13

    iget-object v13, v13, Lcom/android/systemui/statusbar/NotificationData$Entry;->expanded:Landroid/view/View;

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2546
    :goto_45
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 2550
    :cond_48
    iget-object v13, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    sub-int v14, v0, v2

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v13, v14}, Lcom/android/systemui/statusbar/NotificationData;->get(I)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v13

    iget-object v13, v13, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    invoke-virtual {v13}, Lcom/android/internal/statusbar/StatusBarNotification;->isOngoing()Z

    move-result v13

    if-eqz v13, :cond_5e

    .line 2551
    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_45

    .line 2553
    :cond_5e
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_45

    .line 2557
    .end local v5           #row:Landroid/view/View;
    :cond_62
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 2558
    .local v8, toRemoveOngoing:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v2, 0x0

    :goto_68
    iget-object v13, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mOngoingNotificationItems:Landroid/view/ViewGroup;

    invoke-virtual {v13}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v13

    if-ge v2, v13, :cond_82

    .line 2559
    iget-object v13, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mOngoingNotificationItems:Landroid/view/ViewGroup;

    invoke-virtual {v13, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2560
    .local v1, child:Landroid/view/View;
    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_7f

    .line 2561
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2558
    :cond_7f
    add-int/lit8 v2, v2, 0x1

    goto :goto_68

    .line 2565
    .end local v1           #child:Landroid/view/View;
    :cond_82
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2566
    .local v6, toRemoveLatest:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v2, 0x0

    :goto_88
    iget-object v13, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mLatestNotificationItems:Landroid/view/ViewGroup;

    invoke-virtual {v13}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v13

    if-ge v2, v13, :cond_a2

    .line 2567
    iget-object v13, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mLatestNotificationItems:Landroid/view/ViewGroup;

    invoke-virtual {v13, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2568
    .restart local v1       #child:Landroid/view/View;
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_9f

    .line 2569
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2566
    :cond_9f
    add-int/lit8 v2, v2, 0x1

    goto :goto_88

    .line 2573
    .end local v1           #child:Landroid/view/View;
    :cond_a2
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2574
    .local v7, toRemoveMiniCon:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v2, 0x0

    :goto_a8
    iget-object v13, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniConPile:Landroid/widget/LinearLayout;

    invoke-virtual {v13}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v13

    if-ge v2, v13, :cond_c2

    .line 2575
    iget-object v13, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniConPile:Landroid/widget/LinearLayout;

    invoke-virtual {v13, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2576
    .restart local v1       #child:Landroid/view/View;
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_bf

    .line 2577
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2574
    :cond_bf
    add-int/lit8 v2, v2, 0x1

    goto :goto_a8

    .line 2581
    .end local v1           #child:Landroid/view/View;
    :cond_c2
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_c6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_d8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 2582
    .local v4, remove:Landroid/view/View;
    iget-object v13, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mOngoingNotificationItems:Landroid/view/ViewGroup;

    invoke-virtual {v13, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_c6

    .line 2585
    .end local v4           #remove:Landroid/view/View;
    :cond_d8
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_dc
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_ee

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 2586
    .restart local v4       #remove:Landroid/view/View;
    iget-object v13, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mLatestNotificationItems:Landroid/view/ViewGroup;

    invoke-virtual {v13, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_dc

    .line 2589
    .end local v4           #remove:Landroid/view/View;
    :cond_ee
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_f2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_104

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 2590
    .restart local v4       #remove:Landroid/view/View;
    iget-object v13, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniConPile:Landroid/widget/LinearLayout;

    invoke-virtual {v13, v4}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    goto :goto_f2

    .line 2593
    .end local v4           #remove:Landroid/view/View;
    :cond_104
    const/4 v2, 0x0

    :goto_105
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v2, v13, :cond_120

    .line 2594
    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/View;

    .line 2595
    .local v12, v:Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v13

    if-nez v13, :cond_11d

    .line 2596
    iget-object v13, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mOngoingNotificationItems:Landroid/view/ViewGroup;

    const/4 v14, 0x0

    invoke-virtual {v13, v12, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 2593
    :cond_11d
    add-int/lit8 v2, v2, 0x1

    goto :goto_105

    .line 2600
    .end local v12           #v:Landroid/view/View;
    :cond_120
    const/4 v2, 0x0

    :goto_121
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v2, v13, :cond_13c

    .line 2601
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/View;

    .line 2602
    .restart local v12       #v:Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v13

    if-nez v13, :cond_139

    .line 2603
    iget-object v13, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mLatestNotificationItems:Landroid/view/ViewGroup;

    const/4 v14, 0x0

    invoke-virtual {v13, v12, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 2600
    :cond_139
    add-int/lit8 v2, v2, 0x1

    goto :goto_121

    .line 2607
    .end local v12           #v:Landroid/view/View;
    :cond_13c
    const/4 v2, 0x0

    :goto_13d
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v2, v13, :cond_158

    .line 2608
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/View;

    .line 2609
    .restart local v12       #v:Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v13

    if-nez v13, :cond_155

    .line 2610
    iget-object v13, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniConPile:Landroid/widget/LinearLayout;

    const/4 v14, 0x0

    invoke-virtual {v13, v12, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 2607
    :cond_155
    add-int/lit8 v2, v2, 0x1

    goto :goto_13d

    .line 2615
    .end local v12           #v:Landroid/view/View;
    :cond_158
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->updateNotificationCountText()V

    .line 2617
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-eqz v13, :cond_179

    .line 2618
    iget-object v13, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mOngoingNotificationCart:Landroid/widget/LinearLayout;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2623
    :goto_167
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-eqz v13, :cond_181

    .line 2624
    iget-object v13, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mLatestNotificationCart:Landroid/widget/LinearLayout;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2629
    :goto_173
    iget-object v13, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    invoke-virtual {v13, v0}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->setNotificationCount(I)V

    .line 2630
    return-void

    .line 2620
    :cond_179
    iget-object v13, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mOngoingNotificationCart:Landroid/widget/LinearLayout;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_167

    .line 2626
    :cond_181
    iget-object v13, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mLatestNotificationCart:Landroid/widget/LinearLayout;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_173
.end method

.method private updateNotificationIcons()V
    .registers 23

    .prologue
    .line 2411
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIconLayout:Lcom/android/systemui/statusbar/tablet/NotificationIconArea$IconLayout;

    if-nez v2, :cond_7

    .line 2504
    :cond_6
    :goto_6
    return-void

    .line 2415
    :cond_7
    sget-boolean v2, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->useTouchWizGUI:Z

    if-eqz v2, :cond_b2

    .line 2416
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->tw_loadNotificationPanel()V

    .line 2422
    :goto_e
    new-instance v15, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIconSize:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIconHPadding:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNaturalBarHeight:I

    invoke-direct {v15, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2426
    .local v15, params:Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationDNDMode:Z

    if-eqz v2, :cond_b7

    .line 2427
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIconLayout:Lcom/android/systemui/statusbar/tablet/NotificationIconArea$IconLayout;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/tablet/NotificationIconArea$IconLayout;->getChildCount()I

    move-result v2

    if-nez v2, :cond_6

    .line 2428
    new-instance v2, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v4, 0x7f0800b9

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v4, 0x7f0800ba

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    const v3, 0x7f020016

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v8

    .line 2435
    .local v8, dndNotification:Landroid/app/Notification;
    new-instance v13, Lcom/android/systemui/statusbar/StatusBarIconView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v3, "_dnd"

    invoke-direct {v13, v2, v3, v8}, Lcom/android/systemui/statusbar/StatusBarIconView;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/app/Notification;)V

    .line 2437
    .local v13, iconView:Lcom/android/systemui/statusbar/StatusBarIconView;
    const v2, 0x7f020016

    invoke-virtual {v13, v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->setImageResource(I)V

    .line 2438
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v13, v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 2439
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIconHPadding:I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIconHPadding:I

    const/4 v5, 0x0

    invoke-virtual {v13, v2, v3, v4, v5}, Lcom/android/systemui/statusbar/StatusBarIconView;->setPadding(IIII)V

    .line 2441
    new-instance v20, Lcom/android/systemui/statusbar/NotificationData$Entry;

    const/16 v21, 0x0

    new-instance v2, Lcom/android/internal/statusbar/StatusBarNotification;

    const-string v3, ""

    const/4 v4, 0x0

    const-string v5, ""

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/android/internal/statusbar/StatusBarNotification;-><init>(Ljava/lang/String;ILjava/lang/String;IILandroid/app/Notification;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v2, v13}, Lcom/android/systemui/statusbar/NotificationData$Entry;-><init>(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;Lcom/android/systemui/statusbar/StatusBarIconView;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationDNDDummyEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 2446
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIconLayout:Lcom/android/systemui/statusbar/tablet/NotificationIconArea$IconLayout;

    invoke-virtual {v2, v13, v15}, Lcom/android/systemui/statusbar/tablet/NotificationIconArea$IconLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_6

    .line 2418
    .end local v8           #dndNotification:Landroid/app/Notification;
    .end local v13           #iconView:Lcom/android/systemui/statusbar/StatusBarIconView;
    .end local v15           #params:Landroid/widget/LinearLayout$LayoutParams;
    :cond_b2
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->loadNotificationPanel()V

    goto/16 :goto_e

    .line 2450
    .restart local v15       #params:Landroid/widget/LinearLayout$LayoutParams;
    :cond_b7
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mDisabled:I

    const/high16 v3, 0x2

    and-int/2addr v2, v3

    if-nez v2, :cond_6

    .line 2456
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/NotificationData;->size()I

    move-result v9

    .line 2462
    .local v9, N:I
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 2467
    .local v18, toShow:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMaxNotificationIcons:I

    .line 2468
    .local v14, maxNotificationIconsCount:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mInputMethodSwitchButton:Lcom/android/systemui/statusbar/tablet/InputMethodButton;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/tablet/InputMethodButton;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_df

    add-int/lit8 v14, v14, -0x1

    .line 2469
    :cond_df
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCompatModeButton:Lcom/android/systemui/statusbar/policy/CompatModeButton;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/CompatModeButton;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_ed

    add-int/lit8 v14, v14, -0x1

    .line 2471
    :cond_ed
    const/4 v11, 0x0

    .local v11, i:I
    :goto_ee
    if-ge v11, v14, :cond_f2

    .line 2472
    if-lt v11, v9, :cond_11a

    .line 2482
    :cond_f2
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 2483
    .local v17, toRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v11, 0x0

    :goto_f8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIconLayout:Lcom/android/systemui/statusbar/tablet/NotificationIconArea$IconLayout;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/tablet/NotificationIconArea$IconLayout;->getChildCount()I

    move-result v2

    if-ge v11, v2, :cond_149

    .line 2484
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIconLayout:Lcom/android/systemui/statusbar/tablet/NotificationIconArea$IconLayout;

    invoke-virtual {v2, v11}, Lcom/android/systemui/statusbar/tablet/NotificationIconArea$IconLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 2485
    .local v10, child:Landroid/view/View;
    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_117

    .line 2486
    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2483
    :cond_117
    add-int/lit8 v11, v11, 0x1

    goto :goto_f8

    .line 2474
    .end local v10           #child:Landroid/view/View;
    .end local v17           #toRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_11a
    sget-boolean v2, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->useTouchWizGUI:Z

    if-eqz v2, :cond_135

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    sub-int v3, v9, v11

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/NotificationData;->get(I)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v2

    iget-object v2, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    invoke-virtual {v2}, Lcom/android/internal/statusbar/StatusBarNotification;->isInvisibleIconNotification()Z

    move-result v2

    if-eqz v2, :cond_135

    .line 2471
    :goto_132
    add-int/lit8 v11, v11, 0x1

    goto :goto_ee

    .line 2479
    :cond_135
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    sub-int v3, v9, v11

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/NotificationData;->get(I)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v2

    iget-object v2, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_132

    .line 2490
    .restart local v17       #toRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_149
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :goto_14d
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_163

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/View;

    .line 2491
    .local v16, remove:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIconLayout:Lcom/android/systemui/statusbar/tablet/NotificationIconArea$IconLayout;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/tablet/NotificationIconArea$IconLayout;->removeView(Landroid/view/View;)V

    goto :goto_14d

    .line 2494
    .end local v16           #remove:Landroid/view/View;
    :cond_163
    const/4 v11, 0x0

    :goto_164
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v11, v2, :cond_193

    .line 2495
    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/view/View;

    .line 2496
    .local v19, v:Landroid/view/View;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIconHPadding:I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIconHPadding:I

    const/4 v5, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 2497
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_190

    .line 2498
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIconLayout:Lcom/android/systemui/statusbar/tablet/NotificationIconArea$IconLayout;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0, v11, v15}, Lcom/android/systemui/statusbar/tablet/NotificationIconArea$IconLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 2494
    :cond_190
    add-int/lit8 v11, v11, 0x1

    goto :goto_164

    .line 2501
    .end local v19           #v:Landroid/view/View;
    :cond_193
    invoke-static {}, Landroid/util/LocaleUtil;->isLayoutDirectionRtl()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2502
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIconLayout:Lcom/android/systemui/statusbar/tablet/NotificationIconArea$IconLayout;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/tablet/NotificationIconArea$IconLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIconLayout:Lcom/android/systemui/statusbar/tablet/NotificationIconArea$IconLayout;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/tablet/NotificationIconArea$IconLayout;->getChildCount()I

    move-result v3

    iget v4, v15, Landroid/view/ViewGroup$LayoutParams;->width:I

    mul-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x8

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto/16 :goto_6
.end method

.method private updateText()V
    .registers 7

    .prologue
    const v5, 0x7f0f006a

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 2832
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    const v2, 0x7f0f00c9

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2833
    .local v0, settingsTextView:Landroid/widget/TextView;
    const v1, 0x7f080016

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2837
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->updateNotificationCountText()V

    .line 2839
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    iget-object v1, v1, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mClearButton:Landroid/view/View;

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f080007

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 2844
    invoke-virtual {v0, v4, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 2845
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mOngoingNotificationTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v4, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 2846
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mLatestNotificationTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v4, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 2847
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    iget-object v1, v1, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mClearButton:Landroid/view/View;

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v4, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 2848
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    const v2, 0x7f0f0077

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v4, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 2849
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mBarContents:Landroid/view/ViewGroup;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v4, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 2850
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    invoke-virtual {v1, v5}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v4, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 2852
    return-void
.end method


# virtual methods
.method public addIcon(Ljava/lang/String;IILcom/android/internal/statusbar/StatusBarIcon;)V
    .registers 5
    .parameter "slot"
    .parameter "index"
    .parameter "viewIndex"
    .parameter "icon"

    .prologue
    .line 1365
    return-void
.end method

.method public addNotification(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;)V
    .registers 6
    .parameter "key"
    .parameter "notification"

    .prologue
    .line 1378
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->addNotificationViews(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;)Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 1380
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->isImmersive()Z

    move-result v0

    .line 1383
    .local v0, immersive:Z
    iget-object v1, p2, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_1f

    .line 1385
    const-string v1, "TabletStatusBar"

    const-string v2, "Notification has fullScreenIntent and activity is not immersive; sending fullScreenIntent"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1388
    :try_start_14
    iget-object v1, p2, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->send()V
    :try_end_1b
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_14 .. :try_end_1b} :catch_24

    .line 1395
    :goto_1b
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->setAreThereNotifications()V

    .line 1396
    return-void

    .line 1392
    :cond_1f
    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v1}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->tick(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;Z)V

    goto :goto_1b

    .line 1389
    :catch_24
    move-exception v1

    goto :goto_1b
.end method

.method addNotificationViews(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;)Lcom/android/systemui/statusbar/StatusBarIconView;
    .registers 13
    .parameter "key"
    .parameter "notification"

    .prologue
    const/4 v9, 0x0

    .line 2339
    new-instance v7, Lcom/android/systemui/statusbar/StatusBarIconView;

    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p2, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p2, Lcom/android/internal/statusbar/StatusBarNotification;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p2, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    invoke-direct {v7, v1, v2, v3}, Lcom/android/systemui/statusbar/StatusBarIconView;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/app/Notification;)V

    .line 2342
    .local v7, iconView:Lcom/android/systemui/statusbar/StatusBarIconView;
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v7, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 2344
    new-instance v0, Lcom/android/internal/statusbar/StatusBarIcon;

    iget-object v1, p2, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    iget-object v2, p2, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget v2, v2, Landroid/app/Notification;->icon:I

    iget-object v3, p2, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget v3, v3, Landroid/app/Notification;->iconLevel:I

    iget-object v4, p2, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget v4, v4, Landroid/app/Notification;->number:I

    iget-object v5, p2, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v5, v5, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Ljava/lang/String;IIILjava/lang/CharSequence;)V

    .line 2349
    .local v0, ic:Lcom/android/internal/statusbar/StatusBarIcon;
    invoke-virtual {v7, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    move-result v1

    if-nez v1, :cond_63

    .line 2350
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t attach StatusBarIcon: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->handleNotificationError(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;Ljava/lang/String;)V

    move-object v7, v9

    .line 2398
    .end local v7           #iconView:Lcom/android/systemui/statusbar/StatusBarIconView;
    :goto_62
    return-object v7

    .line 2354
    .restart local v7       #iconView:Lcom/android/systemui/statusbar/StatusBarIconView;
    :cond_63
    new-instance v6, Lcom/android/systemui/statusbar/NotificationData$Entry;

    invoke-direct {v6, p1, p2, v7}, Lcom/android/systemui/statusbar/NotificationData$Entry;-><init>(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;Lcom/android/systemui/statusbar/StatusBarIconView;)V

    .line 2357
    .local v6, entry:Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mUseMiniCon:Z

    if-eqz v1, :cond_ae

    invoke-virtual {p2}, Lcom/android/internal/statusbar/StatusBarNotification;->isMiniCon()Z

    move-result v1

    if-eqz v1, :cond_ae

    .line 2358
    const-string v1, "TabletStatusBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ADD:MiniCon-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget v3, v3, Landroid/app/Notification;->twQuickPanelEvent:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2359
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniConPile:Landroid/widget/LinearLayout;

    invoke-direct {p0, v6, v1}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->inflateViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/ViewGroup;)Z

    move-result v1

    if-nez v1, :cond_11c

    .line 2360
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t expand RemoteViews for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->handleNotificationError(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;Ljava/lang/String;)V

    move-object v7, v9

    .line 2362
    goto :goto_62

    .line 2367
    :cond_ae
    sget-boolean v1, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->useTouchWizGUI:Z

    if-eqz v1, :cond_fb

    .line 2368
    iget-object v1, v6, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    invoke-virtual {v1}, Lcom/android/internal/statusbar/StatusBarNotification;->isOngoing()Z

    move-result v1

    if-eqz v1, :cond_da

    .line 2369
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mOngoingNotificationItems:Landroid/view/ViewGroup;

    invoke-direct {p0, v6, v1}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->inflateViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/ViewGroup;)Z

    move-result v1

    if-nez v1, :cond_11c

    .line 2370
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t expand RemoteViews for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->handleNotificationError(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;Ljava/lang/String;)V

    move-object v7, v9

    .line 2372
    goto :goto_62

    .line 2375
    :cond_da
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mLatestNotificationItems:Landroid/view/ViewGroup;

    invoke-direct {p0, v6, v1}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->inflateViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/ViewGroup;)Z

    move-result v1

    if-nez v1, :cond_11c

    .line 2376
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t expand RemoteViews for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->handleNotificationError(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;Ljava/lang/String;)V

    move-object v7, v9

    .line 2378
    goto/16 :goto_62

    .line 2382
    :cond_fb
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mPile:Landroid/view/ViewGroup;

    invoke-direct {p0, v6, v1}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->inflateViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/ViewGroup;)Z

    move-result v1

    if-nez v1, :cond_11c

    .line 2383
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t expand RemoteViews for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->handleNotificationError(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;Ljava/lang/String;)V

    move-object v7, v9

    .line 2385
    goto/16 :goto_62

    .line 2392
    :cond_11c
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v1, v6}, Lcom/android/systemui/statusbar/NotificationData;->add(Lcom/android/systemui/statusbar/NotificationData$Entry;)I

    move-result v8

    .line 2396
    .local v8, pos:I
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->updateNotificationIcons()V

    goto/16 :goto_62
.end method

.method protected addPanelWindows()V
    .registers 31

    .prologue
    .line 287
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    .line 288
    .local v10, context:Landroid/content/Context;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    .line 289
    .local v26, res:Landroid/content/res/Resources;
    invoke-static {}, Landroid/util/LocaleUtil;->isLayoutDirectionRtl()Z

    move-result v27

    .line 292
    .local v27, rtl:Z
    sget-boolean v4, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->useTouchWizGUI:Z

    if-eqz v4, :cond_4ba

    .line 293
    const v4, 0x7f03002a

    const/4 v5, 0x0

    invoke-static {v10, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    .line 301
    :goto_22
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->setBar(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)V

    .line 302
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->show(ZZ)V

    .line 303
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    new-instance v5, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$TouchOutsideListener;

    const/16 v6, 0x3e9

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v6, v7}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$TouchOutsideListener;-><init>(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;ILcom/android/systemui/statusbar/tablet/StatusBarPanel;)V

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 307
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    const v6, 0x7f0f0026

    invoke-virtual {v4, v6}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {v5, v4}, Lcom/android/systemui/statusbar/policy/BatteryController;->addIconView(Landroid/widget/ImageView;)V

    .line 308
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    const v6, 0x7f0f0077

    invoke-virtual {v4, v6}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Lcom/android/systemui/statusbar/policy/BatteryController;->addLabelView(Landroid/widget/TextView;)V

    .line 312
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mBluetoothController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    const v6, 0x7f0f006b

    invoke-virtual {v4, v6}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {v5, v4}, Lcom/android/systemui/statusbar/policy/BluetoothController;->addIconView(Landroid/widget/ImageView;)V

    .line 317
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    const v5, 0x7f0f001d

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/ImageView;

    .line 319
    .local v20, mobileRSSI:Landroid/widget/ImageView;
    if-eqz v20, :cond_9c

    .line 320
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->addPhoneSignalIconView(Landroid/widget/ImageView;)V

    .line 322
    :cond_9c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    const v5, 0x7f0f0019

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v29

    check-cast v29, Landroid/widget/ImageView;

    .line 324
    .local v29, wifiRSSI:Landroid/widget/ImageView;
    if-eqz v29, :cond_b4

    .line 325
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->addWifiIconView(Landroid/widget/ImageView;)V

    .line 329
    :cond_b4
    sget-boolean v4, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->useTouchWizGUI:Z

    if-eqz v4, :cond_4ca

    .line 330
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    const v5, 0x7f0f0025

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Lcom/android/systemui/statusbar/SignalClusterView;

    .line 332
    .local v28, signalCluster:Lcom/android/systemui/statusbar/SignalClusterView;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->addSignalCluster(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;)V

    .line 333
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    const v6, 0x7f0f006a

    invoke-virtual {v4, v6}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Lcom/android/systemui/statusbar/policy/NetworkController;->addCombinedLabelView(Landroid/widget/TextView;)V

    .line 345
    .end local v28           #signalCluster:Lcom/android/systemui/statusbar/SignalClusterView;
    :goto_e2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mBarContents:Landroid/view/ViewGroup;

    const v6, 0x7f0f006a

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Lcom/android/systemui/statusbar/policy/NetworkController;->addCombinedLabelView(Landroid/widget/TextView;)V

    .line 348
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationTrigger:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->setIgnoreChildren(ILandroid/view/View;Landroid/view/View;)V

    .line 351
    const v21, 0x7f0a0044

    .line 352
    .local v21, npWidth:I
    sget-boolean v4, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->useTouchWizGUI:Z

    if-eqz v4, :cond_110

    .line 353
    const v21, 0x7f0a004a

    .line 356
    :cond_110
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, v26

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->getNotificationPanelHeight()I

    move-result v4

    const/16 v5, 0x7de

    const v6, 0x1820300

    const/4 v7, -0x3

    invoke-direct/range {v2 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanelParams:Landroid/view/WindowManager$LayoutParams;

    .line 367
    .local v2, lp:Landroid/view/WindowManager$LayoutParams;
    const/16 v4, 0x55

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 368
    if-eqz v27, :cond_135

    .line 369
    const/16 v4, 0x53

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 370
    :cond_135
    const-string v4, "NotificationPanel"

    invoke-virtual {v2, v4}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 371
    const/16 v4, 0x31

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 373
    const/high16 v4, 0x103

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 376
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    invoke-virtual {v4, v5, v2}, Landroid/view/WindowManagerImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 422
    new-instance v4, Lcom/android/systemui/recent/RecentTasksLoader;

    invoke-direct {v4, v10}, Lcom/android/systemui/recent/RecentTasksLoader;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mRecentTasksLoader:Lcom/android/systemui/recent/RecentTasksLoader;

    .line 424
    sget-boolean v4, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->useTouchWizGUI:Z

    if-eqz v4, :cond_508

    .line 425
    const v4, 0x7f03002d

    const/4 v5, 0x0

    invoke-static {v10, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/recent/RecentsPanelView;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    .line 432
    :goto_168
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/android/systemui/recent/RecentsPanelView;->setVisibility(I)V

    .line 433
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    const/high16 v5, 0x40

    invoke-virtual {v4, v5}, Lcom/android/systemui/recent/RecentsPanelView;->setSystemUiVisibility(I)V

    .line 434
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    new-instance v5, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$TouchOutsideListener;

    const/16 v6, 0x3fd

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v6, v7}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$TouchOutsideListener;-><init>(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;ILcom/android/systemui/statusbar/tablet/StatusBarPanel;)V

    invoke-virtual {v4, v5}, Lcom/android/systemui/recent/RecentsPanelView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 436
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mRecentTasksLoader:Lcom/android/systemui/recent/RecentTasksLoader;

    invoke-virtual {v4, v5}, Lcom/android/systemui/recent/RecentsPanelView;->setRecentTasksLoader(Lcom/android/systemui/recent/RecentTasksLoader;)V

    .line 437
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mRecentTasksLoader:Lcom/android/systemui/recent/RecentTasksLoader;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v4, v5}, Lcom/android/systemui/recent/RecentTasksLoader;->setRecentsPanel(Lcom/android/systemui/recent/RecentsPanelView;)V

    .line 438
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;

    const/4 v5, 0x2

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mRecentButton:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->setIgnoreChildren(ILandroid/view/View;Landroid/view/View;)V

    .line 440
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    .end local v2           #lp:Landroid/view/WindowManager$LayoutParams;
    const v4, 0x7f0a0047

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v3, v4

    const/4 v4, -0x1

    const/16 v5, 0x7de

    const v6, 0x1820100

    const/4 v7, -0x3

    invoke-direct/range {v2 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 449
    .restart local v2       #lp:Landroid/view/WindowManager$LayoutParams;
    const/16 v4, 0x53

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 450
    if-eqz v27, :cond_1d4

    .line 451
    const/16 v4, 0x55

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 452
    :cond_1d4
    const-string v4, "RecentsPanel"

    invoke-virtual {v2, v4}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 453
    const v4, 0x7f0c0008

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 454
    const/16 v4, 0x31

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 457
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v4, v5, v2}, Landroid/view/WindowManagerImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 458
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/android/systemui/recent/RecentsPanelView;->setBar(Lcom/android/systemui/statusbar/StatusBar;)V

    .line 462
    sget-boolean v4, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->useTouchWizGUI:Z

    if-eqz v4, :cond_39a

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniModeTrayEnabled:Z

    if-eqz v4, :cond_39a

    .line 464
    :try_start_200
    const-string v4, "com.android.systemui.statusbar.tablet.MiniModeAppsPanel"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniModeTrayClass:Ljava/lang/Class;
    :try_end_20a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_200 .. :try_end_20a} :catch_518
    .catch Ljava/lang/NoSuchMethodException; {:try_start_200 .. :try_end_20a} :catch_527
    .catch Ljava/lang/IllegalAccessException; {:try_start_200 .. :try_end_20a} :catch_536
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_200 .. :try_end_20a} :catch_545
    .catch Ljava/lang/Exception; {:try_start_200 .. :try_end_20a} :catch_554

    .line 465
    const/16 v19, -0x1

    .line 467
    .local v19, miniAppPanelId:I
    :try_start_20c
    const-class v4, Lcom/android/systemui/R$layout;

    const-string v5, "status_bar_mini_mode_apps_panel"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v15

    .line 468
    .local v15, layoutField:Ljava/lang/reflect/Field;
    if-eqz v15, :cond_21a

    .line 469
    invoke-virtual {v15, v15}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_219
    .catch Ljava/lang/SecurityException; {:try_start_20c .. :try_end_219} :catch_5a0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_20c .. :try_end_219} :catch_59d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_20c .. :try_end_219} :catch_59a
    .catch Ljava/lang/IllegalAccessException; {:try_start_20c .. :try_end_219} :catch_597
    .catch Ljava/lang/ClassNotFoundException; {:try_start_20c .. :try_end_219} :catch_518
    .catch Ljava/lang/NoSuchMethodException; {:try_start_20c .. :try_end_219} :catch_527
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_20c .. :try_end_219} :catch_545
    .catch Ljava/lang/Exception; {:try_start_20c .. :try_end_219} :catch_554

    move-result v19

    .line 477
    .end local v15           #layoutField:Ljava/lang/reflect/Field;
    :cond_21a
    :goto_21a
    if-lez v19, :cond_229

    .line 478
    const/4 v4, 0x0

    :try_start_21d
    move/from16 v0, v19

    invoke-static {v10, v0, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniModeAppsPanel:Landroid/view/ViewGroup;

    .line 481
    :cond_229
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniModeAppsPanel:Landroid/view/ViewGroup;

    if-eqz v4, :cond_234

    .line 482
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIsMiniAppPanelLoadedProperly:Z

    .line 485
    :cond_234
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniModeAppsPanel:Landroid/view/ViewGroup;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 487
    new-instance v3, Landroid/view/WindowManager$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    const/16 v6, 0x7de

    const v7, 0x800128

    const/4 v8, -0x3

    invoke-direct/range {v3 .. v8}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V
    :try_end_24a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_21d .. :try_end_24a} :catch_518
    .catch Ljava/lang/NoSuchMethodException; {:try_start_21d .. :try_end_24a} :catch_527
    .catch Ljava/lang/IllegalAccessException; {:try_start_21d .. :try_end_24a} :catch_536
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_21d .. :try_end_24a} :catch_545
    .catch Ljava/lang/Exception; {:try_start_21d .. :try_end_24a} :catch_554

    .line 496
    .end local v2           #lp:Landroid/view/WindowManager$LayoutParams;
    .local v3, lp:Landroid/view/WindowManager$LayoutParams;
    const/16 v4, 0x53

    :try_start_24c
    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 497
    if-eqz v27, :cond_254

    .line 498
    const/16 v4, 0x55

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 499
    :cond_254
    const-string v4, "MiniModeAppsPanel"

    invoke-virtual {v3, v4}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 501
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniModeAppsPanel:Landroid/view/ViewGroup;

    invoke-virtual {v4, v5, v3}, Landroid/view/WindowManagerImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 505
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniModeTrayClass:Ljava/lang/Class;

    const-string v5, "closeMiniAppsPanel"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCloseMiniAppsPanel:Ljava/lang/reflect/Method;

    .line 506
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniModeTrayClass:Ljava/lang/Class;

    const-string v5, "openMiniAppsPanel"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mOpenMiniAppsPanel:Ljava/lang/reflect/Method;

    .line 508
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniModeTrayClass:Ljava/lang/Class;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniModeAppsPanel:Landroid/view/ViewGroup;

    invoke-virtual {v4, v5}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2ea

    .line 509
    const/4 v4, 0x1

    new-array v0, v4, [Ljava/lang/Class;

    move-object/from16 v22, v0

    const/4 v4, 0x0

    const-class v5, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    aput-object v5, v22, v4

    .line 510
    .local v22, paramTypes1:[Ljava/lang/Class;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniModeTrayClass:Ljava/lang/Class;

    const-string v5, "setBar"

    move-object/from16 v0, v22

    invoke-virtual {v4, v5, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v17

    .line 511
    .local v17, mSetBar:Ljava/lang/reflect/Method;
    const/4 v4, 0x1

    new-array v0, v4, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/4 v4, 0x0

    aput-object p0, v24, v4

    .line 513
    .local v24, params:[Ljava/lang/Object;
    const/4 v4, 0x1

    new-array v0, v4, [Ljava/lang/Class;

    move-object/from16 v23, v0

    const/4 v4, 0x0

    const-class v5, Landroid/os/Handler;

    aput-object v5, v23, v4

    .line 514
    .local v23, paramTypes2:[Ljava/lang/Class;
    const/4 v4, 0x1

    new-array v0, v4, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mHandler:Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;

    aput-object v5, v25, v4

    .line 515
    .local v25, params2:[Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniModeTrayClass:Ljava/lang/Class;

    const-string v5, "setStatusBarHandler"

    move-object/from16 v0, v23

    invoke-virtual {v4, v5, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v18

    .line 517
    .local v18, mSetHandler:Ljava/lang/reflect/Method;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniModeAppsPanel:Landroid/view/ViewGroup;

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v4, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniModeAppsPanel:Landroid/view/ViewGroup;

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v4, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2ea
    .catch Ljava/lang/ClassNotFoundException; {:try_start_24c .. :try_end_2ea} :catch_594
    .catch Ljava/lang/NoSuchMethodException; {:try_start_24c .. :try_end_2ea} :catch_591
    .catch Ljava/lang/IllegalAccessException; {:try_start_24c .. :try_end_2ea} :catch_58e
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_24c .. :try_end_2ea} :catch_58b
    .catch Ljava/lang/Exception; {:try_start_24c .. :try_end_2ea} :catch_588

    .end local v17           #mSetBar:Ljava/lang/reflect/Method;
    .end local v18           #mSetHandler:Ljava/lang/reflect/Method;
    .end local v22           #paramTypes1:[Ljava/lang/Class;
    .end local v23           #paramTypes2:[Ljava/lang/Class;
    .end local v24           #params:[Ljava/lang/Object;
    .end local v25           #params2:[Ljava/lang/Object;
    :cond_2ea
    move-object v2, v3

    .line 538
    .end local v3           #lp:Landroid/view/WindowManager$LayoutParams;
    .end local v19           #miniAppPanelId:I
    .restart local v2       #lp:Landroid/view/WindowManager$LayoutParams;
    :goto_2eb
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIsMiniAppPanelLoadedProperly:Z

    if-eqz v4, :cond_39a

    .line 539
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniModeAppsPanel:Landroid/view/ViewGroup;

    const v5, 0x7f0f0058

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniModeTrayView:Landroid/view/View;

    .line 540
    new-instance v4, Lcom/android/systemui/statusbar/tablet/TFCubicRotateAnimation;

    const/4 v5, 0x3

    invoke-direct {v4, v5}, Lcom/android/systemui/statusbar/tablet/TFCubicRotateAnimation;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniModeAppsPanelOutAnim:Landroid/view/animation/Animation;

    .line 541
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniModeAppsPanelOutAnim:Landroid/view/animation/Animation;

    const-wide/16 v5, 0x10e

    invoke-virtual {v4, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 543
    new-instance v4, Lcom/android/systemui/statusbar/tablet/TFCubicRotateAnimation;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/android/systemui/statusbar/tablet/TFCubicRotateAnimation;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniModeAppsPanelInAnim:Landroid/view/animation/Animation;

    .line 544
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniModeAppsPanelInAnim:Landroid/view/animation/Animation;

    const-wide/16 v5, 0x10e

    invoke-virtual {v4, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 546
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;

    const v5, 0x7f0f0036

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mStatusBarContainerView:Landroid/view/View;

    .line 547
    new-instance v4, Lcom/android/systemui/statusbar/tablet/TFCubicRotateAnimation;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Lcom/android/systemui/statusbar/tablet/TFCubicRotateAnimation;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mStatusBarOutAnim:Landroid/view/animation/Animation;

    .line 548
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mStatusBarOutAnim:Landroid/view/animation/Animation;

    const-wide/16 v5, 0x10e

    invoke-virtual {v4, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 549
    new-instance v4, Lcom/android/systemui/statusbar/tablet/TFCubicRotateAnimation;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Lcom/android/systemui/statusbar/tablet/TFCubicRotateAnimation;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mStatusBarInAnim:Landroid/view/animation/Animation;

    .line 550
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mStatusBarInAnim:Landroid/view/animation/Animation;

    const-wide/16 v5, 0x10e

    invoke-virtual {v4, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 553
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mStatusBarOutAnim:Landroid/view/animation/Animation;

    new-instance v5, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$1;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$1;-><init>(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)V

    invoke-virtual {v4, v5}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 568
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;

    const v5, 0x7f0f0037

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v16

    .line 569
    .local v16, mCue:Landroid/view/View;
    if-eqz v16, :cond_563

    .line 570
    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 571
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mButtonOnTouchListener:Landroid/view/View$OnTouchListener;

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 572
    new-instance v4, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$2;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$2;-><init>(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 579
    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 583
    :goto_397
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->initTraySound()V

    .line 587
    .end local v16           #mCue:Landroid/view/View;
    :cond_39a
    sget-boolean v4, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->useTouchWizGUI:Z

    if-eqz v4, :cond_3aa

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniModeTrayEnabled:Z

    if-eqz v4, :cond_3aa

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIsMiniAppPanelLoadedProperly:Z

    if-nez v4, :cond_3ce

    .line 588
    :cond_3aa
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mShadow:Landroid/view/View;

    if-eqz v4, :cond_3ce

    .line 589
    const/4 v13, -0x1

    .line 591
    .local v13, id:I
    :try_start_3b1
    const-class v4, Lcom/android/systemui/R$id;

    const-string v5, "miniapp_tray_dot"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v14

    .line 592
    .local v14, idfield:Ljava/lang/reflect/Field;
    if-eqz v14, :cond_3bf

    .line 593
    invoke-virtual {v14, v14}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_3be
    .catch Ljava/lang/SecurityException; {:try_start_3b1 .. :try_end_3be} :catch_585
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3b1 .. :try_end_3be} :catch_582
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3b1 .. :try_end_3be} :catch_57f
    .catch Ljava/lang/IllegalAccessException; {:try_start_3b1 .. :try_end_3be} :catch_57c

    move-result v13

    .line 601
    .end local v14           #idfield:Ljava/lang/reflect/Field;
    :cond_3bf
    :goto_3bf
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mShadow:Landroid/view/View;

    invoke-virtual {v4, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 602
    .local v11, dotView:Landroid/view/View;
    if-eqz v11, :cond_3ce

    .line 603
    const/16 v4, 0x8

    invoke-virtual {v11, v4}, Landroid/view/View;->setVisibility(I)V

    .line 612
    .end local v11           #dotView:Landroid/view/View;
    .end local v13           #id:I
    :cond_3ce
    sget-boolean v4, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->useTouchWizGUI:Z

    if-eqz v4, :cond_56c

    .line 613
    const v4, 0x7f030027

    const/4 v5, 0x0

    invoke-static {v10, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mInputMethodsPanel:Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;

    .line 620
    :goto_3e0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mInputMethodsPanel:Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->setHardKeyboardEnabledChangeListener(Lcom/android/systemui/statusbar/tablet/InputMethodsPanel$OnHardKeyboardEnabledChangeListener;)V

    .line 621
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mInputMethodsPanel:Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;

    new-instance v5, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$TouchOutsideListener;

    const/16 v6, 0x411

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mInputMethodsPanel:Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v6, v7}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$TouchOutsideListener;-><init>(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;ILcom/android/systemui/statusbar/tablet/StatusBarPanel;)V

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 623
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mInputMethodsPanel:Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mInputMethodSwitchButton:Lcom/android/systemui/statusbar/tablet/InputMethodButton;

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->setImeSwitchButton(Lcom/android/systemui/statusbar/tablet/InputMethodButton;)V

    .line 624
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;

    const/4 v5, 0x3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mInputMethodSwitchButton:Lcom/android/systemui/statusbar/tablet/InputMethodButton;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mInputMethodsPanel:Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->setIgnoreChildren(ILandroid/view/View;Landroid/view/View;)V

    .line 625
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    .end local v2           #lp:Landroid/view/WindowManager$LayoutParams;
    const/4 v5, -0x2

    const/4 v6, -0x2

    const/16 v7, 0x7de

    const v8, 0x1820100

    const/4 v9, -0x3

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 634
    .restart local v2       #lp:Landroid/view/WindowManager$LayoutParams;
    const/16 v4, 0x55

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 635
    if-eqz v27, :cond_430

    .line 636
    const/16 v4, 0x53

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 637
    :cond_430
    const-string v4, "InputMethodsPanel"

    invoke-virtual {v2, v4}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 638
    const v4, 0x7f0c0008

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 640
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mInputMethodsPanel:Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;

    invoke-virtual {v4, v5, v2}, Landroid/view/WindowManagerImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 643
    const v4, 0x7f030007

    const/4 v5, 0x0

    invoke-static {v10, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/tablet/CompatModePanel;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCompatModePanel:Lcom/android/systemui/statusbar/tablet/CompatModePanel;

    .line 645
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCompatModePanel:Lcom/android/systemui/statusbar/tablet/CompatModePanel;

    new-instance v5, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$TouchOutsideListener;

    const/16 v6, 0x41b

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCompatModePanel:Lcom/android/systemui/statusbar/tablet/CompatModePanel;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v6, v7}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$TouchOutsideListener;-><init>(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;ILcom/android/systemui/statusbar/tablet/StatusBarPanel;)V

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/tablet/CompatModePanel;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 647
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCompatModePanel:Lcom/android/systemui/statusbar/tablet/CompatModePanel;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCompatModeButton:Lcom/android/systemui/statusbar/policy/CompatModeButton;

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/tablet/CompatModePanel;->setTrigger(Landroid/view/View;)V

    .line 648
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCompatModePanel:Lcom/android/systemui/statusbar/tablet/CompatModePanel;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/tablet/CompatModePanel;->setVisibility(I)V

    .line 649
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;

    const/4 v5, 0x4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCompatModeButton:Lcom/android/systemui/statusbar/policy/CompatModeButton;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCompatModePanel:Lcom/android/systemui/statusbar/tablet/CompatModePanel;

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->setIgnoreChildren(ILandroid/view/View;Landroid/view/View;)V

    .line 650
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    .end local v2           #lp:Landroid/view/WindowManager$LayoutParams;
    const/16 v5, 0xfa

    const/4 v6, -0x2

    const/16 v7, 0x7de

    const v8, 0x1820100

    const/4 v9, -0x3

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 659
    .restart local v2       #lp:Landroid/view/WindowManager$LayoutParams;
    const/16 v4, 0x55

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 660
    if-eqz v27, :cond_4a4

    .line 661
    const/16 v4, 0x53

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 662
    :cond_4a4
    const-string v4, "CompatModePanel"

    invoke-virtual {v2, v4}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 663
    const v4, 0x1030002

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 665
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCompatModePanel:Lcom/android/systemui/statusbar/tablet/CompatModePanel;

    invoke-virtual {v4, v5, v2}, Landroid/view/WindowManagerImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 666
    return-void

    .line 296
    .end local v2           #lp:Landroid/view/WindowManager$LayoutParams;
    .end local v20           #mobileRSSI:Landroid/widget/ImageView;
    .end local v21           #npWidth:I
    .end local v29           #wifiRSSI:Landroid/widget/ImageView;
    :cond_4ba
    const v4, 0x7f030012

    const/4 v5, 0x0

    invoke-static {v10, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    goto/16 :goto_22

    .line 336
    .restart local v20       #mobileRSSI:Landroid/widget/ImageView;
    .restart local v29       #wifiRSSI:Landroid/widget/ImageView;
    :cond_4ca
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    const v6, 0x7f0f0076

    invoke-virtual {v4, v6}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Lcom/android/systemui/statusbar/policy/NetworkController;->addWifiLabelView(Landroid/widget/TextView;)V

    .line 339
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    const v6, 0x7f0f001e

    invoke-virtual {v4, v6}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {v5, v4}, Lcom/android/systemui/statusbar/policy/NetworkController;->addDataTypeIconView(Landroid/widget/ImageView;)V

    .line 341
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    const v6, 0x7f0f0073

    invoke-virtual {v4, v6}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Lcom/android/systemui/statusbar/policy/NetworkController;->addMobileLabelView(Landroid/widget/TextView;)V

    goto/16 :goto_e2

    .line 428
    .restart local v2       #lp:Landroid/view/WindowManager$LayoutParams;
    .restart local v21       #npWidth:I
    :cond_508
    const v4, 0x7f030018

    const/4 v5, 0x0

    invoke-static {v10, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/recent/RecentsPanelView;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    goto/16 :goto_168

    .line 522
    :catch_518
    move-exception v12

    .line 523
    .local v12, ex:Ljava/lang/ClassNotFoundException;
    :goto_519
    const-string v4, "TabletStatusBar"

    const-string v5, "ClassNotFoundException"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIsMiniAppPanelLoadedProperly:Z

    goto/16 :goto_2eb

    .line 525
    .end local v12           #ex:Ljava/lang/ClassNotFoundException;
    :catch_527
    move-exception v12

    .line 526
    .local v12, ex:Ljava/lang/NoSuchMethodException;
    :goto_528
    const-string v4, "TabletStatusBar"

    const-string v5, "NoSuchMethodException"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIsMiniAppPanelLoadedProperly:Z

    goto/16 :goto_2eb

    .line 528
    .end local v12           #ex:Ljava/lang/NoSuchMethodException;
    :catch_536
    move-exception v12

    .line 529
    .local v12, ex:Ljava/lang/IllegalAccessException;
    :goto_537
    const-string v4, "TabletStatusBar"

    const-string v5, "IllegalAccessException"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIsMiniAppPanelLoadedProperly:Z

    goto/16 :goto_2eb

    .line 531
    .end local v12           #ex:Ljava/lang/IllegalAccessException;
    :catch_545
    move-exception v12

    .line 532
    .local v12, ex:Ljava/lang/reflect/InvocationTargetException;
    :goto_546
    const-string v4, "TabletStatusBar"

    const-string v5, "InvocationTargetException"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIsMiniAppPanelLoadedProperly:Z

    goto/16 :goto_2eb

    .line 534
    .end local v12           #ex:Ljava/lang/reflect/InvocationTargetException;
    :catch_554
    move-exception v12

    .line 535
    .local v12, ex:Ljava/lang/Exception;
    :goto_555
    const-string v4, "TabletStatusBar"

    const-string v5, "Loading MiniAppsPanel has failed"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIsMiniAppPanelLoadedProperly:Z

    goto/16 :goto_2eb

    .line 581
    .end local v12           #ex:Ljava/lang/Exception;
    .restart local v16       #mCue:Landroid/view/View;
    :cond_563
    const-string v4, "TabletStatusBar"

    const-string v5, "can not load resource. (R.id.traybar_handler)"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_397

    .line 617
    .end local v16           #mCue:Landroid/view/View;
    :cond_56c
    const v4, 0x7f03000b

    const/4 v5, 0x0

    invoke-static {v10, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mInputMethodsPanel:Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;

    goto/16 :goto_3e0

    .line 598
    .restart local v13       #id:I
    :catch_57c
    move-exception v4

    goto/16 :goto_3bf

    .line 597
    :catch_57f
    move-exception v4

    goto/16 :goto_3bf

    .line 596
    :catch_582
    move-exception v4

    goto/16 :goto_3bf

    .line 595
    :catch_585
    move-exception v4

    goto/16 :goto_3bf

    .line 534
    .end local v2           #lp:Landroid/view/WindowManager$LayoutParams;
    .end local v13           #id:I
    .restart local v3       #lp:Landroid/view/WindowManager$LayoutParams;
    .restart local v19       #miniAppPanelId:I
    :catch_588
    move-exception v12

    move-object v2, v3

    .end local v3           #lp:Landroid/view/WindowManager$LayoutParams;
    .restart local v2       #lp:Landroid/view/WindowManager$LayoutParams;
    goto :goto_555

    .line 531
    .end local v2           #lp:Landroid/view/WindowManager$LayoutParams;
    .restart local v3       #lp:Landroid/view/WindowManager$LayoutParams;
    :catch_58b
    move-exception v12

    move-object v2, v3

    .end local v3           #lp:Landroid/view/WindowManager$LayoutParams;
    .restart local v2       #lp:Landroid/view/WindowManager$LayoutParams;
    goto :goto_546

    .line 528
    .end local v2           #lp:Landroid/view/WindowManager$LayoutParams;
    .restart local v3       #lp:Landroid/view/WindowManager$LayoutParams;
    :catch_58e
    move-exception v12

    move-object v2, v3

    .end local v3           #lp:Landroid/view/WindowManager$LayoutParams;
    .restart local v2       #lp:Landroid/view/WindowManager$LayoutParams;
    goto :goto_537

    .line 525
    .end local v2           #lp:Landroid/view/WindowManager$LayoutParams;
    .restart local v3       #lp:Landroid/view/WindowManager$LayoutParams;
    :catch_591
    move-exception v12

    move-object v2, v3

    .end local v3           #lp:Landroid/view/WindowManager$LayoutParams;
    .restart local v2       #lp:Landroid/view/WindowManager$LayoutParams;
    goto :goto_528

    .line 522
    .end local v2           #lp:Landroid/view/WindowManager$LayoutParams;
    .restart local v3       #lp:Landroid/view/WindowManager$LayoutParams;
    :catch_594
    move-exception v12

    move-object v2, v3

    .end local v3           #lp:Landroid/view/WindowManager$LayoutParams;
    .restart local v2       #lp:Landroid/view/WindowManager$LayoutParams;
    goto :goto_519

    .line 474
    :catch_597
    move-exception v4

    goto/16 :goto_21a

    .line 473
    :catch_59a
    move-exception v4

    goto/16 :goto_21a

    .line 472
    :catch_59d
    move-exception v4

    goto/16 :goto_21a

    .line 471
    :catch_5a0
    move-exception v4

    goto/16 :goto_21a
.end method

.method public animateCollapse()V
    .registers 2

    .prologue
    .line 1709
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->animateCollapse(Z)V

    .line 1710
    return-void
.end method

.method public animateExpand()V
    .registers 3

    .prologue
    const/16 v1, 0x3e8

    .line 1704
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mHandler:Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->removeMessages(I)V

    .line 1705
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mHandler:Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->sendEmptyMessage(I)Z

    .line 1706
    return-void
.end method

.method public applyEDMPolicy()V
    .registers 1

    .prologue
    .line 2857
    invoke-super {p0}, Lcom/android/systemui/statusbar/StatusBar;->applyEDMPolicy()V

    .line 2858
    return-void
.end method

.method applyLegacyRowBackground(Lcom/android/internal/statusbar/StatusBarNotification;Landroid/view/View;)V
    .registers 9
    .parameter "sbn"
    .parameter "content"

    .prologue
    .line 2727
    iget-object v3, p1, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v3, v3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v3}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v3

    const v4, 0x10900c1

    if-eq v3, v4, :cond_29

    .line 2729
    const/4 v2, 0x0

    .line 2731
    .local v2, version:I
    :try_start_e
    iget-object v3, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p1, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 2732
    .local v1, info:Landroid/content/pm/ApplicationInfo;
    iget v2, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_1d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_e .. :try_end_1d} :catch_2a

    .line 2736
    .end local v1           #info:Landroid/content/pm/ApplicationInfo;
    :goto_1d
    if-lez v2, :cond_46

    const/16 v3, 0x9

    if-ge v2, v3, :cond_46

    .line 2737
    const v3, 0x7f02003e

    invoke-virtual {p2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2748
    .end local v2           #version:I
    :cond_29
    :goto_29
    return-void

    .line 2733
    .restart local v2       #version:I
    :catch_2a
    move-exception v0

    .line 2734
    .local v0, ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "TabletStatusBar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed looking up ApplicationInfo for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1d

    .line 2740
    .end local v0           #ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_46
    sget-boolean v3, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->useTouchWizGUI:Z

    if-eqz v3, :cond_51

    .line 2741
    const v3, 0x7f02012f

    invoke-virtual {p2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_29

    .line 2743
    :cond_51
    const v3, 0x7f02003d

    invoke-virtual {p2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_29
.end method

.method public clearAll()V
    .registers 2

    .prologue
    .line 2752
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBarService;->onClearAllNotifications()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_d

    .line 2756
    :goto_5
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->animateCollapse()V

    .line 2757
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->visibilityChanged(Z)V

    .line 2758
    return-void

    .line 2753
    :catch_d
    move-exception v0

    goto :goto_5
.end method

.method public disable(I)V
    .registers 13
    .parameter "state"

    .prologue
    const/16 v10, 0x425

    const/16 v9, 0x3fd

    const/4 v3, 0x1

    const/high16 v8, 0x100

    const/4 v4, 0x0

    .line 1563
    iget v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mDisabled:I

    .line 1564
    .local v1, old:I
    xor-int v0, p1, v1

    .line 1565
    .local v0, diff:I
    iput p1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mDisabled:I

    .line 1568
    const/high16 v5, 0x80

    and-int/2addr v5, v0

    if-eqz v5, :cond_38

    .line 1569
    const/high16 v5, 0x80

    and-int/2addr v5, p1

    if-nez v5, :cond_f1

    move v2, v3

    .line 1570
    .local v2, show:Z
    :goto_19
    const-string v6, "TabletStatusBar"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DISABLE_CLOCK: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz v2, :cond_f4

    const-string v5, "no"

    :goto_2a
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1571
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->showClock(Z)V

    .line 1573
    .end local v2           #show:Z
    :cond_38
    const/high16 v5, 0x10

    and-int/2addr v5, v0

    if-eqz v5, :cond_67

    .line 1574
    const/high16 v5, 0x10

    and-int/2addr v5, p1

    if-nez v5, :cond_f8

    move v2, v3

    .line 1575
    .restart local v2       #show:Z
    :goto_43
    const-string v5, "TabletStatusBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DISABLE_SYSTEM_INFO: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v2, :cond_fb

    const-string v3, "no"

    :goto_54
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1576
    iget-object v5, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationTrigger:Landroid/view/View;

    if-eqz v2, :cond_ff

    move v3, v4

    :goto_64
    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1578
    .end local v2           #show:Z
    :cond_67
    const/high16 v3, 0x1

    and-int/2addr v3, v0

    if-eqz v3, :cond_7e

    .line 1579
    const/high16 v3, 0x1

    and-int/2addr v3, p1

    if-eqz v3, :cond_7e

    .line 1580
    const-string v3, "TabletStatusBar"

    const-string v5, "DISABLE_EXPAND: yes"

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1581
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->animateCollapse()V

    .line 1582
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->visibilityChanged(Z)V

    .line 1585
    :cond_7e
    const/high16 v3, 0x2

    and-int/2addr v3, v0

    if-eqz v3, :cond_128

    .line 1586
    iget-object v3, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/Prefs;->read(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v5, "do_not_disturb"

    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationDNDMode:Z

    .line 1589
    const/high16 v3, 0x2

    and-int/2addr v3, p1

    if-eqz v3, :cond_106

    .line 1590
    const-string v4, "TabletStatusBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DISABLE_NOTIFICATION_ICONS: yes"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationDNDMode:Z

    if-eqz v3, :cond_103

    const-string v3, " (DND)"

    :goto_a9
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1591
    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mTicker:Lcom/android/systemui/statusbar/tablet/TabletTicker;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/tablet/TabletTicker;->halt()V

    .line 1597
    :goto_b9
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->reloadAllNotificationIcons()V

    .line 1603
    :cond_bc
    :goto_bc
    const/high16 v3, 0x760

    and-int/2addr v3, v0

    if-eqz v3, :cond_d2

    .line 1612
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->setNavigationVisibility(I)V

    .line 1614
    and-int v3, p1, v8

    if-eqz v3, :cond_d2

    .line 1616
    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mHandler:Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;

    invoke-virtual {v3, v9}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->removeMessages(I)V

    .line 1617
    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mHandler:Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;

    invoke-virtual {v3, v9}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->sendEmptyMessage(I)Z

    .line 1621
    :cond_d2
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniModeTrayEnabled:Z

    if-eqz v3, :cond_f0

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIsMiniAppPanelLoadedProperly:Z

    if-eqz v3, :cond_f0

    .line 1622
    const/high16 v3, 0x400

    and-int/2addr v3, v0

    or-int/2addr v3, v8

    if-eqz v3, :cond_f0

    .line 1623
    const/high16 v3, 0x400

    and-int/2addr v3, p1

    or-int/2addr v3, v8

    if-eqz v3, :cond_f0

    .line 1624
    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mHandler:Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;

    invoke-virtual {v3, v10}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->removeMessages(I)V

    .line 1625
    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mHandler:Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;

    invoke-virtual {v3, v10}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->sendEmptyMessage(I)Z

    .line 1629
    :cond_f0
    return-void

    :cond_f1
    move v2, v4

    .line 1569
    goto/16 :goto_19

    .line 1570
    .restart local v2       #show:Z
    :cond_f4
    const-string v5, "yes"

    goto/16 :goto_2a

    .end local v2           #show:Z
    :cond_f8
    move v2, v4

    .line 1574
    goto/16 :goto_43

    .line 1575
    .restart local v2       #show:Z
    :cond_fb
    const-string v3, "yes"

    goto/16 :goto_54

    .line 1576
    :cond_ff
    const/16 v3, 0x8

    goto/16 :goto_64

    .line 1590
    .end local v2           #show:Z
    :cond_103
    const-string v3, ""

    goto :goto_a9

    .line 1593
    :cond_106
    const-string v4, "TabletStatusBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DISABLE_NOTIFICATION_ICONS: no"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationDNDMode:Z

    if-eqz v3, :cond_125

    const-string v3, " (DND)"

    :goto_119
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b9

    :cond_125
    const-string v3, ""

    goto :goto_119

    .line 1598
    :cond_128
    const/high16 v3, 0x8

    and-int/2addr v3, v0

    if-eqz v3, :cond_bc

    .line 1599
    const/high16 v3, 0x8

    and-int/2addr v3, p1

    if-eqz v3, :cond_bc

    .line 1600
    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mTicker:Lcom/android/systemui/statusbar/tablet/TabletTicker;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/tablet/TabletTicker;->halt()V

    goto :goto_bc
.end method

.method public doneTicking()V
    .registers 3

    .prologue
    .line 1695
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mFeedbackIconArea:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1696
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 2824
    const-string v0, "mDisabled=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2825
    iget v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mDisabled:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2826
    const-string v0, "mNetworkController:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2827
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/statusbar/policy/NetworkController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2828
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 284
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method protected getStatusBarGravity()I
    .registers 2

    .prologue
    .line 1079
    const/16 v0, 0x57

    return v0
.end method

.method public getStatusBarHeight()I
    .registers 2

    .prologue
    .line 1075
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mHeightReceiver:Lcom/android/systemui/statusbar/tablet/HeightReceiver;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/tablet/HeightReceiver;->getHeight()I

    move-result v0

    return v0
.end method

.method handleNotificationError(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;Ljava/lang/String;)V
    .registers 11
    .parameter "key"
    .parameter "n"
    .parameter "message"

    .prologue
    .line 1950
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->removeNotification(Landroid/os/IBinder;)V

    .line 1952
    :try_start_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-object v1, p2, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    iget-object v2, p2, Lcom/android/internal/statusbar/StatusBarNotification;->tag:Ljava/lang/String;

    iget v3, p2, Lcom/android/internal/statusbar/StatusBarNotification;->id:I

    iget v4, p2, Lcom/android/internal/statusbar/StatusBarNotification;->uid:I

    iget v5, p2, Lcom/android/internal/statusbar/StatusBarNotification;->initialPid:I

    move-object v6, p3

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationError(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_13} :catch_14

    .line 1956
    :goto_13
    return-void

    .line 1953
    :catch_14
    move-exception v0

    goto :goto_13
.end method

.method protected loadDimens()V
    .registers 6

    .prologue
    .line 746
    iget-object v4, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 748
    .local v3, res:Landroid/content/res/Resources;
    const v4, 0x105000b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNaturalBarHeight:I

    .line 751
    const v4, 0x1050010

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 753
    .local v1, newIconSize:I
    const v4, 0x7f0a0010

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 757
    .local v0, newIconHPadding:I
    sget-boolean v4, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->useTouchWizGUI:Z

    if-eqz v4, :cond_2f

    .line 758
    const v4, 0x7f0a0048

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 760
    const v4, 0x7f0a0049

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 765
    :cond_2f
    iget v4, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIconHPadding:I

    if-ne v0, v4, :cond_37

    iget v4, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIconSize:I

    if-eq v1, v4, :cond_3e

    .line 767
    :cond_37
    iput v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIconHPadding:I

    .line 768
    iput v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIconSize:I

    .line 769
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->reloadAllNotificationIcons()V

    .line 781
    :cond_3e
    const/4 v2, 0x0

    .line 782
    .local v2, numIcons:I
    sget-boolean v4, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->useTouchWizGUI:Z

    if-eqz v4, :cond_54

    .line 783
    const v4, 0x7f090003

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 789
    :goto_4a
    iget v4, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMaxNotificationIcons:I

    if-eq v2, v4, :cond_53

    .line 790
    iput v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMaxNotificationIcons:I

    .line 792
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->reloadAllNotificationIcons()V

    .line 794
    :cond_53
    return-void

    .line 785
    :cond_54
    const/high16 v4, 0x7f09

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    goto :goto_4a
.end method

.method public makeClicker(Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;I)Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationClicker;
    .registers 11
    .parameter "intent"
    .parameter "pkg"
    .parameter "tag"
    .parameter "id"

    .prologue
    .line 2021
    new-instance v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationClicker;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationClicker;-><init>(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method

.method protected makeStatusBarView()Landroid/view/View;
    .registers 25

    .prologue
    .line 797
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    .line 799
    .local v9, context:Landroid/content/Context;
    const-string v20, "window"

    invoke-static/range {v20 .. v20}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mWindowManager:Landroid/view/IWindowManager;

    .line 804
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v20

    const-string v21, "com.sec.feature.minimode_tray"

    invoke-virtual/range {v20 .. v21}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniModeTrayEnabled:Z

    .line 809
    new-instance v20, Lcom/android/systemui/statusbar/tablet/HeightReceiver;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-direct/range {v20 .. v21}, Lcom/android/systemui/statusbar/tablet/HeightReceiver;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mHeightReceiver:Lcom/android/systemui/statusbar/tablet/HeightReceiver;

    .line 810
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mHeightReceiver:Lcom/android/systemui/statusbar/tablet/HeightReceiver;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/systemui/statusbar/tablet/HeightReceiver;->registerReceiver()V

    .line 811
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->loadDimens()V

    .line 822
    const/4 v13, 0x0

    .line 823
    .local v13, sb:Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;
    sget-boolean v20, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->useTouchWizGUI:Z

    if-eqz v20, :cond_583

    .line 824
    const v20, 0x7f030024

    const/16 v21, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v9, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    .end local v13           #sb:Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;
    check-cast v13, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;

    .line 828
    .restart local v13       #sb:Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;
    :goto_5b
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;

    .line 831
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mHandler:Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->setHandler(Landroid/os/Handler;)V

    .line 836
    :try_start_6a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mWindowManager:Landroid/view/IWindowManager;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Landroid/view/IWindowManager;->hasNavigationBar()Z

    move-result v20

    if-eqz v20, :cond_7f

    .line 837
    new-instance v20, Ljava/lang/RuntimeException;

    const-string v21, "Tablet device cannot show navigation bar and system bar"

    invoke-direct/range {v20 .. v21}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v20
    :try_end_7e
    .catch Landroid/os/RemoteException; {:try_start_6a .. :try_end_7e} :catch_7e

    .line 840
    :catch_7e
    move-exception v20

    .line 843
    :cond_7f
    const v20, 0x7f0f002c

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/view/ViewGroup;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mBarContents:Landroid/view/ViewGroup;

    .line 846
    const v20, 0x7f0f002f

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationArea:Landroid/view/View;

    .line 848
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationArea:Landroid/view/View;

    move-object/from16 v20, v0

    new-instance v21, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationTriggerTouchListener;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationTriggerTouchListener;-><init>(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)V

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 852
    const v20, 0x7f0f0068

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationTrigger:Landroid/view/View;

    .line 858
    const v20, 0x7f0f0022

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/android/systemui/statusbar/tablet/NotificationIconArea;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationIconArea:Lcom/android/systemui/statusbar/tablet/NotificationIconArea;

    .line 861
    const v20, 0x7f0f0020

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/android/systemui/statusbar/tablet/NotificationIconArea$IconLayout;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIconLayout:Lcom/android/systemui/statusbar/tablet/NotificationIconArea$IconLayout;

    .line 866
    invoke-static {v9}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v18

    .line 867
    .local v18, vc:Landroid/view/ViewConfiguration;
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPeekTapDuration:I

    .line 868
    const/16 v20, 0x12c

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationFlingVelocity:I

    .line 870
    new-instance v20, Lcom/android/systemui/statusbar/tablet/TabletTicker;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/tablet/TabletTicker;-><init>(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mTicker:Lcom/android/systemui/statusbar/tablet/TabletTicker;

    .line 873
    new-instance v20, Lcom/android/systemui/statusbar/policy/LocationController;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-direct/range {v20 .. v21}, Lcom/android/systemui/statusbar/policy/LocationController;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mLocationController:Lcom/android/systemui/statusbar/policy/LocationController;

    .line 875
    new-instance v20, Lcom/android/systemui/statusbar/policy/BatteryController;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-direct/range {v20 .. v21}, Lcom/android/systemui/statusbar/policy/BatteryController;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    .line 876
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    move-object/from16 v21, v0

    const v20, 0x7f0f0026

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/ImageView;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/BatteryController;->addIconView(Landroid/widget/ImageView;)V

    .line 877
    new-instance v20, Lcom/android/systemui/statusbar/policy/BluetoothController;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-direct/range {v20 .. v21}, Lcom/android/systemui/statusbar/policy/BluetoothController;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mBluetoothController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    .line 878
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mBluetoothController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    move-object/from16 v21, v0

    const v20, 0x7f0f006b

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/ImageView;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/BluetoothController;->addIconView(Landroid/widget/ImageView;)V

    .line 880
    new-instance v20, Lcom/android/systemui/statusbar/policy/NetworkController;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-direct/range {v20 .. v21}, Lcom/android/systemui/statusbar/policy/NetworkController;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    .line 881
    const v20, 0x7f0f0025

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Lcom/android/systemui/statusbar/SignalClusterView;

    .line 883
    .local v17, signalCluster:Lcom/android/systemui/statusbar/SignalClusterView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->addSignalCluster(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;)V

    .line 886
    const v20, 0x7f0f0010

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/ImageView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mBackButton:Landroid/widget/ImageView;

    .line 887
    const v20, 0x7f0f002d

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/view/ViewGroup;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNavigationArea:Landroid/view/ViewGroup;

    .line 888
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNavigationArea:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    const v21, 0x7f0f0011

    invoke-virtual/range {v20 .. v21}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mHomeButton:Landroid/view/View;

    .line 889
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNavigationArea:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    const v21, 0x7f0f0013

    invoke-virtual/range {v20 .. v21}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMenuButton:Landroid/view/View;

    .line 890
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNavigationArea:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    const v21, 0x7f0f0012

    invoke-virtual/range {v20 .. v21}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mRecentButton:Landroid/view/View;

    .line 891
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mRecentButton:Landroid/view/View;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mOnClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 893
    new-instance v11, Landroid/animation/LayoutTransition;

    invoke-direct {v11}, Landroid/animation/LayoutTransition;-><init>()V

    .line 894
    .local v11, lt:Landroid/animation/LayoutTransition;
    const-wide/16 v20, 0xfa

    move-wide/from16 v0, v20

    invoke-virtual {v11, v0, v1}, Landroid/animation/LayoutTransition;->setDuration(J)V

    .line 896
    const/16 v20, 0x0

    const-wide/16 v21, 0x0

    move/from16 v0, v20

    move-wide/from16 v1, v21

    invoke-virtual {v11, v0, v1, v2}, Landroid/animation/LayoutTransition;->setDuration(IJ)V

    .line 897
    const/16 v20, 0x1

    const-wide/16 v21, 0x0

    move/from16 v0, v20

    move-wide/from16 v1, v21

    invoke-virtual {v11, v0, v1, v2}, Landroid/animation/LayoutTransition;->setDuration(IJ)V

    .line 898
    new-instance v20, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$3;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$3;-><init>(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)V

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/animation/LayoutTransition;->addTransitionListener(Landroid/animation/LayoutTransition$TransitionListener;)V

    .line 908
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNavigationArea:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 910
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNavigationArea:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/ViewGroup;->setMotionEventSplittingEnabled(Z)V

    .line 913
    const v20, 0x7f0f0065

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/view/ViewGroup;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mFeedbackIconArea:Landroid/view/ViewGroup;

    .line 914
    const v20, 0x7f0f0066

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/android/systemui/statusbar/tablet/InputMethodButton;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mInputMethodSwitchButton:Lcom/android/systemui/statusbar/tablet/InputMethodButton;

    .line 916
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mInputMethodSwitchButton:Lcom/android/systemui/statusbar/tablet/InputMethodButton;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mOnClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/android/systemui/statusbar/tablet/InputMethodButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 919
    sget-boolean v20, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->useTouchWizGUI:Z

    if-eqz v20, :cond_28d

    .line 920
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNavigationArea:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    const v21, 0x7f0f00b2

    invoke-virtual/range {v20 .. v21}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mQuickLaunchButton:Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;

    .line 925
    :cond_28d
    const v20, 0x7f0f0067

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/android/systemui/statusbar/policy/CompatModeButton;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCompatModeButton:Lcom/android/systemui/statusbar/policy/CompatModeButton;

    .line 926
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCompatModeButton:Lcom/android/systemui/statusbar/policy/CompatModeButton;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mOnClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/android/systemui/statusbar/policy/CompatModeButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 927
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCompatModeButton:Lcom/android/systemui/statusbar/policy/CompatModeButton;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Lcom/android/systemui/statusbar/policy/CompatModeButton;->setVisibility(I)V

    .line 930
    const v20, 0x7f0f002e

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mFakeSpaceBar:Landroid/view/View;

    .line 933
    const v20, 0x7f0f0031

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mShadow:Landroid/view/View;

    .line 934
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mShadow:Landroid/view/View;

    move-object/from16 v20, v0

    new-instance v21, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$4;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$4;-><init>(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)V

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 955
    const/16 v7, 0x258

    .line 956
    .local v7, LIGHTS_GOING_OUT_SYSBAR_DURATION:I
    const/16 v6, 0x3e8

    .line 957
    .local v6, LIGHTS_GOING_OUT_SHADOW_DURATION:I
    const/16 v5, 0x1f4

    .line 959
    .local v5, LIGHTS_GOING_OUT_SHADOW_DELAY:I
    const/16 v4, 0xc8

    .line 961
    .local v4, LIGHTS_COMING_UP_SYSBAR_DURATION:I
    const/4 v3, 0x0

    .line 963
    .local v3, LIGHTS_COMING_UP_SHADOW_DURATION:I
    new-instance v19, Landroid/animation/LayoutTransition;

    invoke-direct/range {v19 .. v19}, Landroid/animation/LayoutTransition;-><init>()V

    .line 964
    .local v19, xition:Landroid/animation/LayoutTransition;
    const/16 v20, 0x2

    const/16 v21, 0x0

    const-string v22, "alpha"

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [F

    move-object/from16 v23, v0

    fill-array-data v23, :array_5b4

    invoke-static/range {v21 .. v23}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 966
    const/16 v20, 0x2

    const-wide/16 v21, 0xc8

    invoke-virtual/range {v19 .. v22}, Landroid/animation/LayoutTransition;->setDuration(IJ)V

    .line 967
    const/16 v20, 0x2

    const-wide/16 v21, 0x0

    invoke-virtual/range {v19 .. v22}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    .line 968
    const/16 v20, 0x3

    const/16 v21, 0x0

    const-string v22, "alpha"

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [F

    move-object/from16 v23, v0

    fill-array-data v23, :array_5bc

    invoke-static/range {v21 .. v23}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 970
    const/16 v20, 0x3

    const-wide/16 v21, 0x258

    invoke-virtual/range {v19 .. v22}, Landroid/animation/LayoutTransition;->setDuration(IJ)V

    .line 971
    const/16 v20, 0x3

    const-wide/16 v21, 0x0

    invoke-virtual/range {v19 .. v22}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    .line 972
    const v20, 0x7f0f002b

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/view/ViewGroup;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 974
    new-instance v19, Landroid/animation/LayoutTransition;

    .end local v19           #xition:Landroid/animation/LayoutTransition;
    invoke-direct/range {v19 .. v19}, Landroid/animation/LayoutTransition;-><init>()V

    .line 975
    .restart local v19       #xition:Landroid/animation/LayoutTransition;
    const/16 v20, 0x2

    const/16 v21, 0x0

    const-string v22, "alpha"

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [F

    move-object/from16 v23, v0

    fill-array-data v23, :array_5c4

    invoke-static/range {v21 .. v23}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 977
    const/16 v20, 0x2

    const-wide/16 v21, 0x3e8

    invoke-virtual/range {v19 .. v22}, Landroid/animation/LayoutTransition;->setDuration(IJ)V

    .line 978
    const/16 v20, 0x2

    const-wide/16 v21, 0x1f4

    invoke-virtual/range {v19 .. v22}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    .line 979
    const/16 v20, 0x3

    const/16 v21, 0x0

    const-string v22, "alpha"

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [F

    move-object/from16 v23, v0

    fill-array-data v23, :array_5cc

    invoke-static/range {v21 .. v23}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 981
    const/16 v20, 0x3

    const-wide/16 v21, 0x0

    invoke-virtual/range {v19 .. v22}, Landroid/animation/LayoutTransition;->setDuration(IJ)V

    .line 982
    const/16 v20, 0x3

    const-wide/16 v21, 0x0

    invoke-virtual/range {v19 .. v22}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    .line 983
    const v20, 0x7f0f0030

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/view/ViewGroup;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 986
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->setAreThereNotifications()V

    .line 989
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->addPanelWindows()V

    .line 990
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mRecentButton:Landroid/view/View;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 993
    sget-boolean v20, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->useTouchWizGUI:Z

    if-eqz v20, :cond_594

    .line 994
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    move-object/from16 v20, v0

    const v21, 0x7f0f00cb

    invoke-virtual/range {v20 .. v21}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/LinearLayout;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mOngoingNotificationCart:Landroid/widget/LinearLayout;

    .line 996
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    move-object/from16 v20, v0

    const v21, 0x7f0f00ce

    invoke-virtual/range {v20 .. v21}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/LinearLayout;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mLatestNotificationCart:Landroid/widget/LinearLayout;

    .line 998
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    move-object/from16 v20, v0

    const v21, 0x7f0f00cd

    invoke-virtual/range {v20 .. v21}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/view/ViewGroup;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mOngoingNotificationItems:Landroid/view/ViewGroup;

    .line 1000
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    move-object/from16 v20, v0

    const v21, 0x7f0f00d0

    invoke-virtual/range {v20 .. v21}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/view/ViewGroup;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mLatestNotificationItems:Landroid/view/ViewGroup;

    .line 1002
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    move-object/from16 v20, v0

    const v21, 0x7f0f00cc

    invoke-virtual/range {v20 .. v21}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mOngoingNotificationTitle:Landroid/widget/TextView;

    .line 1004
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    move-object/from16 v20, v0

    const v21, 0x7f0f00cf

    invoke-virtual/range {v20 .. v21}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mLatestNotificationTitle:Landroid/widget/TextView;

    .line 1006
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mOngoingNotificationItems:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1007
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mLatestNotificationItems:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1024
    :goto_460
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    move-object/from16 v20, v0

    const v21, 0x7f0f006f

    invoke-virtual/range {v20 .. v21}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ScrollView;

    .line 1026
    .local v14, scroller:Landroid/widget/ScrollView;
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 1028
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mHeightReceiver:Lcom/android/systemui/statusbar/tablet/HeightReceiver;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/tablet/HeightReceiver;->addOnBarHeightChangedListener(Lcom/android/systemui/statusbar/tablet/HeightReceiver$OnBarHeightChangedListener;)V

    .line 1031
    new-instance v10, Landroid/content/IntentFilter;

    invoke-direct {v10}, Landroid/content/IntentFilter;-><init>()V

    .line 1032
    .local v10, filter:Landroid/content/IntentFilter;
    const-string v20, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1033
    const-string v20, "android.intent.action.SCREEN_OFF"

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1034
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v9, v0, v10}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1037
    sget-boolean v20, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->useTouchWizGUI:Z

    if-eqz v20, :cond_50f

    .line 1038
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    move-object/from16 v20, v0

    const v21, 0x7f0f00d1

    invoke-virtual/range {v20 .. v21}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v20

    new-instance v21, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$5;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$5;-><init>(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)V

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1048
    new-instance v8, Lcom/android/systemui/statusbar/policy/AlarmController;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-direct {v8, v0}, Lcom/android/systemui/statusbar/policy/AlarmController;-><init>(Landroid/content/Context;)V

    .line 1049
    .local v8, alarmController:Lcom/android/systemui/statusbar/policy/AlarmController;
    const v20, 0x7f0f00c7

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/ImageView;

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Lcom/android/systemui/statusbar/policy/AlarmController;->addIconView(Landroid/widget/ImageView;)V

    .line 1050
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    move-object/from16 v20, v0

    const v21, 0x7f0f00c7

    invoke-virtual/range {v20 .. v21}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/ImageView;

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Lcom/android/systemui/statusbar/policy/AlarmController;->addIconView(Landroid/widget/ImageView;)V

    .line 1052
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mLocationController:Lcom/android/systemui/statusbar/policy/LocationController;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    move-object/from16 v20, v0

    const v22, 0x7f0f00d3

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/ImageView;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/LocationController;->addIconView(Landroid/widget/ImageView;)V

    .line 1058
    .end local v8           #alarmController:Lcom/android/systemui/statusbar/policy/AlarmController;
    :cond_50f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f070007

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mUseMiniCon:Z

    .line 1059
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mUseMiniCon:Z

    move/from16 v20, v0

    if-eqz v20, :cond_582

    .line 1060
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v20, -0x1

    const/16 v21, -0x2

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v12, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1062
    .local v12, params:Landroid/widget/LinearLayout$LayoutParams;
    new-instance v20, Landroid/widget/LinearLayout;

    move-object/from16 v0, v20

    invoke-direct {v0, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniConPile:Landroid/widget/LinearLayout;

    .line 1063
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniConPile:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1065
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    move-object/from16 v20, v0

    const v21, 0x7f0f00c8

    invoke-virtual/range {v20 .. v21}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/LinearLayout;

    .line 1067
    .local v15, scrollerChild:Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    move-object/from16 v20, v0

    const v21, 0x7f0f00ca

    invoke-virtual/range {v20 .. v21}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v16

    .line 1068
    .local v16, settings_underline:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniConPile:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v21

    add-int/lit8 v21, v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v15, v0, v1, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1071
    .end local v12           #params:Landroid/widget/LinearLayout$LayoutParams;
    .end local v15           #scrollerChild:Landroid/widget/LinearLayout;
    .end local v16           #settings_underline:Landroid/view/View;
    :cond_582
    return-object v13

    .line 826
    .end local v3           #LIGHTS_COMING_UP_SHADOW_DURATION:I
    .end local v4           #LIGHTS_COMING_UP_SYSBAR_DURATION:I
    .end local v5           #LIGHTS_GOING_OUT_SHADOW_DELAY:I
    .end local v6           #LIGHTS_GOING_OUT_SHADOW_DURATION:I
    .end local v7           #LIGHTS_GOING_OUT_SYSBAR_DURATION:I
    .end local v10           #filter:Landroid/content/IntentFilter;
    .end local v11           #lt:Landroid/animation/LayoutTransition;
    .end local v14           #scroller:Landroid/widget/ScrollView;
    .end local v17           #signalCluster:Lcom/android/systemui/statusbar/SignalClusterView;
    .end local v18           #vc:Landroid/view/ViewConfiguration;
    .end local v19           #xition:Landroid/animation/LayoutTransition;
    :cond_583
    const v20, 0x7f030006

    const/16 v21, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v9, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    .end local v13           #sb:Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;
    check-cast v13, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;

    .restart local v13       #sb:Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;
    goto/16 :goto_5b

    .line 1009
    .restart local v3       #LIGHTS_COMING_UP_SHADOW_DURATION:I
    .restart local v4       #LIGHTS_COMING_UP_SYSBAR_DURATION:I
    .restart local v5       #LIGHTS_GOING_OUT_SHADOW_DELAY:I
    .restart local v6       #LIGHTS_GOING_OUT_SHADOW_DURATION:I
    .restart local v7       #LIGHTS_GOING_OUT_SYSBAR_DURATION:I
    .restart local v11       #lt:Landroid/animation/LayoutTransition;
    .restart local v17       #signalCluster:Lcom/android/systemui/statusbar/SignalClusterView;
    .restart local v18       #vc:Landroid/view/ViewConfiguration;
    .restart local v19       #xition:Landroid/animation/LayoutTransition;
    :cond_594
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    move-object/from16 v20, v0

    const v21, 0x7f0f0070

    invoke-virtual/range {v20 .. v21}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/view/ViewGroup;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mPile:Landroid/view/ViewGroup;

    .line 1010
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mPile:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/ViewGroup;->removeAllViews()V

    goto/16 :goto_460

    .line 964
    :array_5b4
    .array-data 0x4
        0x0t 0x0t 0x0t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 968
    :array_5bc
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 975
    :array_5c4
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 979
    :array_5cc
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public onBarHeightChanged(I)V
    .registers 5
    .parameter "height"

    .prologue
    .line 1083
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 1085
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    if-nez v0, :cond_b

    .line 1094
    :cond_a
    :goto_a
    return-void

    .line 1089
    :cond_b
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v2, p1, :cond_a

    .line 1090
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1091
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v1

    .line 1092
    .local v1, wm:Landroid/view/WindowManager;
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_a
.end method

.method public onClickCompatModeButton()V
    .registers 4

    .prologue
    .line 2014
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCompatModePanel:Lcom/android/systemui/statusbar/tablet/CompatModePanel;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/tablet/CompatModePanel;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_17

    const/16 v0, 0x41a

    .line 2016
    .local v0, msg:I
    :goto_c
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mHandler:Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->removeMessages(I)V

    .line 2017
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mHandler:Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->sendEmptyMessage(I)Z

    .line 2018
    return-void

    .line 2014
    .end local v0           #msg:I
    :cond_17
    const/16 v0, 0x41b

    goto :goto_c
.end method

.method public onClickInputMethodSwitchButton()V
    .registers 4

    .prologue
    .line 2007
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mInputMethodsPanel:Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_17

    const/16 v0, 0x410

    .line 2009
    .local v0, msg:I
    :goto_c
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mHandler:Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->removeMessages(I)V

    .line 2010
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mHandler:Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->sendEmptyMessage(I)Z

    .line 2011
    return-void

    .line 2007
    .end local v0           #msg:I
    :cond_17
    const/16 v0, 0x411

    goto :goto_c
.end method

.method public onClickRecentButton()V
    .registers 4

    .prologue
    .line 1998
    iget v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mDisabled:I

    const/high16 v2, 0x1

    and-int/2addr v1, v2

    if-nez v1, :cond_1b

    .line 1999
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v1}, Lcom/android/systemui/recent/RecentsPanelView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1c

    const/16 v0, 0x3fd

    .line 2001
    .local v0, msg:I
    :goto_11
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mHandler:Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->removeMessages(I)V

    .line 2002
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mHandler:Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->sendEmptyMessage(I)Z

    .line 2004
    .end local v0           #msg:I
    :cond_1b
    return-void

    .line 1999
    :cond_1c
    const/16 v0, 0x3fc

    goto :goto_11
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5
    .parameter "newConfig"

    .prologue
    .line 724
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mHeightReceiver:Lcom/android/systemui/statusbar/tablet/HeightReceiver;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/tablet/HeightReceiver;->updateHeight()V

    .line 725
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->loadDimens()V

    .line 726
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanelParams:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->getNotificationPanelHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 727
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanelParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/view/WindowManagerImpl;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 729
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/recent/RecentsPanelView;->updateValuesFromResources()V

    .line 732
    sget-boolean v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->useTouchWizGUI:Z

    if-eqz v0, :cond_27

    .line 733
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->updateText()V

    .line 737
    :cond_27
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_EnableUiDisplayMirroring"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 739
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->hasDirectionChanged(Landroid/content/res/Configuration;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 740
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->reloadBars()V

    .line 743
    :cond_3c
    return-void
.end method

.method public onHardKeyboardEnabledChange(Z)V
    .registers 3
    .parameter "enabled"

    .prologue
    .line 1920
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v0, p1}, Lcom/android/internal/statusbar/IStatusBarService;->setHardKeyboardEnabled(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1923
    :goto_5
    return-void

    .line 1921
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public removeIcon(Ljava/lang/String;II)V
    .registers 4
    .parameter "slot"
    .parameter "index"
    .parameter "viewIndex"

    .prologue
    .line 1374
    return-void
.end method

.method public removeNotification(Landroid/os/IBinder;)V
    .registers 3
    .parameter "key"

    .prologue
    .line 1546
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->removeNotificationViews(Landroid/os/IBinder;)Lcom/android/internal/statusbar/StatusBarNotification;

    .line 1547
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mTicker:Lcom/android/systemui/statusbar/tablet/TabletTicker;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/tablet/TabletTicker;->remove(Landroid/os/IBinder;)V

    .line 1548
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->setAreThereNotifications()V

    .line 1549
    return-void
.end method

.method removeNotificationViews(Landroid/os/IBinder;)Lcom/android/internal/statusbar/StatusBarNotification;
    .registers 8
    .parameter "key"

    .prologue
    .line 2085
    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v3, p1}, Lcom/android/systemui/statusbar/NotificationData;->remove(Landroid/os/IBinder;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v0

    .line 2086
    .local v0, entry:Lcom/android/systemui/statusbar/NotificationData$Entry;
    if-nez v0, :cond_22

    .line 2087
    const-string v3, "TabletStatusBar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removeNotification for unknown key: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2088
    const/4 v3, 0x0

    .line 2111
    :goto_21
    return-object v3

    .line 2092
    :cond_22
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mUseMiniCon:Z

    if-eqz v3, :cond_61

    iget-object v3, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    invoke-virtual {v3}, Lcom/android/internal/statusbar/StatusBarNotification;->isMiniCon()Z

    move-result v3

    if-eqz v3, :cond_61

    .line 2093
    const-string v3, "TabletStatusBar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "REMOVE:MiniCon-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    iget-object v5, v5, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget v5, v5, Landroid/app/Notification;->twQuickPanelEvent:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2094
    iget-object v3, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->expanded:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 2095
    .local v1, expandedParent:Landroid/view/ViewGroup;
    if-eqz v1, :cond_5b

    iget-object v3, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->expanded:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2109
    .end local v1           #expandedParent:Landroid/view/ViewGroup;
    :cond_5b
    :goto_5b
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->updateNotificationIcons()V

    .line 2111
    iget-object v3, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    goto :goto_21

    .line 2098
    :cond_61
    iget-object v3, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 2099
    .local v2, rowParent:Landroid/view/ViewGroup;
    if-eqz v2, :cond_5b

    iget-object v3, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_5b
.end method

.method public resetNotificationPeekFadeTimer()V
    .registers 5

    .prologue
    const/16 v3, 0x3eb

    .line 2226
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mHandler:Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->removeMessages(I)V

    .line 2227
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mHandler:Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->sendEmptyMessageDelayed(IJ)Z

    .line 2229
    return-void
.end method

.method public setHardKeyboardStatus(ZZ)V
    .registers 4
    .parameter "available"
    .parameter "enabled"

    .prologue
    .line 1912
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mInputMethodSwitchButton:Lcom/android/systemui/statusbar/tablet/InputMethodButton;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/tablet/InputMethodButton;->setHardKeyboardStatus(Z)V

    .line 1913
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->updateNotificationIcons()V

    .line 1914
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mInputMethodsPanel:Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->setHardKeyboardStatus(ZZ)V

    .line 1915
    return-void
.end method

.method public setImeWindowStatus(Landroid/os/IBinder;II)V
    .registers 10
    .parameter "token"
    .parameter "vis"
    .parameter "backDisposition"

    .prologue
    const/16 v5, 0x425

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 1846
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mInputMethodSwitchButton:Lcom/android/systemui/statusbar/tablet/InputMethodButton;

    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_49

    const/4 v1, 0x1

    :goto_c
    invoke-virtual {v4, p1, v1}, Lcom/android/systemui/statusbar/tablet/InputMethodButton;->setImeWindowStatus(Landroid/os/IBinder;Z)V

    .line 1848
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->updateNotificationIcons()V

    .line 1849
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mInputMethodsPanel:Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->setImeToken(Landroid/os/IBinder;)V

    .line 1851
    packed-switch p3, :pswitch_data_80

    .line 1872
    and-int/lit8 v1, p2, 0x2

    if-eqz v1, :cond_67

    .line 1874
    sget-boolean v1, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->useTouchWizGUI:Z

    if-eqz v1, :cond_63

    .line 1875
    const v0, 0x7f0200ff

    .line 1891
    .local v0, res:I
    :goto_25
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mBackButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1894
    sget-boolean v1, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->useTouchWizGUI:Z

    if-eqz v1, :cond_73

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniModeTrayEnabled:Z

    if-eqz v1, :cond_73

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIsMiniAppPanelLoadedProperly:Z

    if-eqz v1, :cond_73

    .line 1895
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mInputMethodSwitchButton:Lcom/android/systemui/statusbar/tablet/InputMethodButton;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/tablet/InputMethodButton;->getVisibility()I

    move-result v1

    if-eq v1, v3, :cond_48

    .line 1896
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mHandler:Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;

    invoke-virtual {v1, v5}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->removeMessages(I)V

    .line 1897
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mHandler:Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;

    invoke-virtual {v1, v5}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->sendEmptyMessage(I)Z

    .line 1904
    :cond_48
    :goto_48
    return-void

    .end local v0           #res:I
    :cond_49
    move v1, v2

    .line 1846
    goto :goto_c

    .line 1854
    :pswitch_4b
    sget-boolean v1, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->useTouchWizGUI:Z

    if-eqz v1, :cond_53

    .line 1855
    const v0, 0x7f0200fe

    .restart local v0       #res:I
    goto :goto_25

    .line 1857
    .end local v0           #res:I
    :cond_53
    const v0, 0x7f020020

    .line 1860
    .restart local v0       #res:I
    goto :goto_25

    .line 1863
    .end local v0           #res:I
    :pswitch_57
    sget-boolean v1, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->useTouchWizGUI:Z

    if-eqz v1, :cond_5f

    .line 1864
    const v0, 0x7f0200ff

    .restart local v0       #res:I
    goto :goto_25

    .line 1866
    .end local v0           #res:I
    :cond_5f
    const v0, 0x7f020021

    .line 1869
    .restart local v0       #res:I
    goto :goto_25

    .line 1877
    .end local v0           #res:I
    :cond_63
    const v0, 0x7f020021

    .restart local v0       #res:I
    goto :goto_25

    .line 1882
    .end local v0           #res:I
    :cond_67
    sget-boolean v1, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->useTouchWizGUI:Z

    if-eqz v1, :cond_6f

    .line 1883
    const v0, 0x7f0200fe

    .restart local v0       #res:I
    goto :goto_25

    .line 1885
    .end local v0           #res:I
    :cond_6f
    const v0, 0x7f020020

    .restart local v0       #res:I
    goto :goto_25

    .line 1901
    :cond_73
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mFakeSpaceBar:Landroid/view/View;

    and-int/lit8 v4, p2, 0x2

    if-eqz v4, :cond_7d

    :goto_79
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_48

    :cond_7d
    move v2, v3

    goto :goto_79

    .line 1851
    nop

    :pswitch_data_80
    .packed-switch 0x1
        :pswitch_4b
        :pswitch_57
    .end packed-switch
.end method

.method public setLightsOn(Z)V
    .registers 5
    .parameter "on"

    .prologue
    .line 1771
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMenuButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_9

    .line 1772
    const/4 p1, 0x1

    .line 1775
    :cond_9
    const-string v0, "TabletStatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLightsOn("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1776
    if-eqz p1, :cond_31

    .line 1777
    iget v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mSystemUiVisibility:I

    and-int/lit8 v0, v0, -0x2

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->setSystemUiVisibility(I)V

    .line 1781
    :goto_30
    return-void

    .line 1779
    :cond_31
    iget v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mSystemUiVisibility:I

    or-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->setSystemUiVisibility(I)V

    goto :goto_30
.end method

.method public setMaxBrightness(I)V
    .registers 3
    .parameter "maxLevel"

    .prologue
    .line 2958
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    iget-object v0, v0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mBrightness:Lcom/android/systemui/statusbar/policy/BrightnessController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/BrightnessController;->setMaxBrightness(I)V

    .line 2959
    return-void
.end method

.method public setSystemUiVisibility(I)V
    .registers 6
    .parameter "vis"

    .prologue
    const/16 v1, 0x407

    const/16 v0, 0x406

    .line 1756
    iget v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mSystemUiVisibility:I

    if-eq p1, v2, :cond_20

    .line 1757
    iput p1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mSystemUiVisibility:I

    .line 1759
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mHandler:Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->removeMessages(I)V

    .line 1760
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mHandler:Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->removeMessages(I)V

    .line 1761
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mHandler:Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;

    and-int/lit8 v3, p1, 0x1

    if-nez v3, :cond_21

    :goto_1a
    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->sendEmptyMessage(I)Z

    .line 1764
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->notifyUiVisibilityChanged()V

    .line 1766
    :cond_20
    return-void

    :cond_21
    move v0, v1

    .line 1761
    goto :goto_1a
.end method

.method public showClock(Z)V
    .registers 8
    .parameter "show"

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 1552
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mBarContents:Landroid/view/ViewGroup;

    const v5, 0x7f0f0027

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1553
    .local v0, clock:Landroid/view/View;
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mBarContents:Landroid/view/ViewGroup;

    const v5, 0x7f0f006a

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1554
    .local v1, network_text:Landroid/view/View;
    if-eqz v0, :cond_1d

    .line 1555
    if-eqz p1, :cond_25

    move v2, v3

    :goto_1a
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1557
    :cond_1d
    if-eqz v1, :cond_24

    .line 1558
    if-nez p1, :cond_27

    :goto_21
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1560
    :cond_24
    return-void

    :cond_25
    move v2, v4

    .line 1555
    goto :goto_1a

    :cond_27
    move v3, v4

    .line 1558
    goto :goto_21
.end method

.method public start()V
    .registers 4

    .prologue
    .line 686
    invoke-super {p0}, Lcom/android/systemui/statusbar/StatusBar;->start()V

    .line 689
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v0, :cond_26

    .line 690
    const-string v0, "TabletStatusBar"

    const-string v1, "TabletStatusBar :: start... StorageNotification"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v1, "storage"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 693
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mStorageManager:Landroid/os/storage/StorageManager;

    new-instance v1, Lcom/android/systemui/usb/StorageNotification;

    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/systemui/usb/StorageNotification;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 697
    :cond_26
    return-void
.end method

.method public toggleNotificationPanel()V
    .registers 3

    .prologue
    .line 2769
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_15

    const/16 v0, 0x3e9

    .line 2771
    .local v0, msg:I
    :goto_a
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mHandler:Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->removeMessages(I)V

    .line 2772
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mHandler:Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->sendEmptyMessage(I)Z

    .line 2773
    return-void

    .line 2769
    .end local v0           #msg:I
    :cond_15
    const/16 v0, 0x3e8

    goto :goto_a
.end method

.method public toggleRecentApps()V
    .registers 3

    .prologue
    .line 2761
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v1}, Lcom/android/systemui/recent/RecentsPanelView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_15

    const/16 v0, 0x3fd

    .line 2763
    .local v0, msg:I
    :goto_a
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mHandler:Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->removeMessages(I)V

    .line 2764
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mHandler:Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->sendEmptyMessage(I)Z

    .line 2765
    return-void

    .line 2761
    .end local v0           #msg:I
    :cond_15
    const/16 v0, 0x3fc

    goto :goto_a
.end method

.method public topAppWindowChanged(Z)V
    .registers 5
    .parameter "showMenu"

    .prologue
    const/4 v1, 0x0

    .line 1787
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMenuButton:Landroid/view/View;

    if-eqz p1, :cond_2e

    move v0, v1

    :goto_6
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1790
    if-eqz p1, :cond_f

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->setLightsOn(Z)V

    .line 1792
    :cond_f
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCompatModeButton:Lcom/android/systemui/statusbar/policy/CompatModeButton;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/CompatModeButton;->refresh()V

    .line 1793
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCompatModeButton:Lcom/android/systemui/statusbar/policy/CompatModeButton;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/CompatModeButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_31

    .line 1794
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/Prefs;->read(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "shown_compat_mode_help"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 1796
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->showCompatibilityHelp()V

    .line 1802
    :cond_2d
    :goto_2d
    return-void

    .line 1787
    :cond_2e
    const/16 v0, 0x8

    goto :goto_6

    .line 1799
    :cond_31
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->hideCompatibilityHelp()V

    .line 1800
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCompatModePanel:Lcom/android/systemui/statusbar/tablet/CompatModePanel;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/tablet/CompatModePanel;->closePanel()V

    goto :goto_2d
.end method

.method public updateIcon(Ljava/lang/String;IILcom/android/internal/statusbar/StatusBarIcon;Lcom/android/internal/statusbar/StatusBarIcon;)V
    .registers 6
    .parameter "slot"
    .parameter "index"
    .parameter "viewIndex"
    .parameter "old"
    .parameter "icon"

    .prologue
    .line 1370
    return-void
.end method

.method public updateNotification(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;)V
    .registers 26
    .parameter "key"
    .parameter "notification"

    .prologue
    .line 1401
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/NotificationData;->findByKey(Landroid/os/IBinder;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v18

    .line 1402
    .local v18, oldEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;
    if-nez v18, :cond_27

    .line 1403
    const-string v4, "TabletStatusBar"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateNotification for unknown key: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1542
    :goto_26
    return-void

    .line 1407
    :cond_27
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    move-object/from16 v19, v0

    .line 1408
    .local v19, oldNotification:Lcom/android/internal/statusbar/StatusBarNotification;
    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v0, v4, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    move-object/from16 v17, v0

    .line 1410
    .local v17, oldContentView:Landroid/widget/RemoteViews;
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v12, v4, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 1425
    .local v12, contentView:Landroid/widget/RemoteViews;
    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->expanded:Landroid/view/View;

    if-eqz v4, :cond_1b7

    if-eqz v12, :cond_1b7

    if-eqz v17, :cond_1b7

    invoke-virtual {v12}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1b7

    invoke-virtual/range {v17 .. v17}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1b7

    invoke-virtual/range {v17 .. v17}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b7

    invoke-virtual/range {v17 .. v17}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v4

    invoke-virtual {v12}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v7

    if-ne v4, v7, :cond_1b7

    const/4 v13, 0x1

    .line 1433
    .local v13, contentsUnchanged:Z
    :goto_6a
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-wide v7, v4, Landroid/app/Notification;->when:J

    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-wide v9, v4, Landroid/app/Notification;->when:J

    cmp-long v4, v7, v9

    if-nez v4, :cond_1ba

    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/internal/statusbar/StatusBarNotification;->priority:I

    move-object/from16 v0, v19

    iget v7, v0, Lcom/android/internal/statusbar/StatusBarNotification;->priority:I

    if-ne v4, v7, :cond_1ba

    const/16 v20, 0x1

    .line 1436
    .local v20, orderUnchanged:Z
    :goto_86
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v4, v4, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    if-eqz v4, :cond_1be

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v4, v4, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    move-object/from16 v0, v18

    iget-object v7, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    iget-object v7, v7, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v7, v7, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-static {v4, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1be

    const/16 v22, 0x1

    .line 1442
    .local v22, updateTicker:Z
    :goto_a4
    const/4 v15, 0x0

    .line 1443
    .local v15, isFirstAnyway:Z
    const/16 v16, 0x0

    .line 1446
    .local v16, isLastAnyway:Z
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mUseMiniCon:Z

    if-eqz v4, :cond_1de

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/statusbar/StatusBarNotification;->isMiniCon()Z

    move-result v4

    if-eqz v4, :cond_1de

    .line 1447
    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->expanded:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v21

    check-cast v21, Landroid/view/ViewGroup;

    .line 1449
    .local v21, rowParent:Landroid/view/ViewGroup;
    sget-boolean v4, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->useTouchWizGUI:Z

    if-eqz v4, :cond_1c5

    .line 1450
    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->expanded:Landroid/view/View;

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v4

    if-nez v4, :cond_1c2

    const/4 v15, 0x1

    .line 1472
    :goto_ce
    if-eqz v13, :cond_293

    if-nez v20, :cond_d6

    if-nez v15, :cond_d6

    if-eqz v16, :cond_293

    .line 1475
    :cond_d6
    move-object/from16 v0, p2

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    .line 1478
    :try_start_dc
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mUseMiniCon:Z

    if-eqz v4, :cond_250

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/statusbar/StatusBarNotification;->isMiniCon()Z

    move-result v4

    if-eqz v4, :cond_250

    .line 1479
    const-string v4, "TabletStatusBar"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "UPDATE:MiniCon-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget v8, v8, Landroid/app/Notification;->twQuickPanelEvent:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1480
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v0, v18

    iget-object v7, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->expanded:Landroid/view/View;

    invoke-virtual {v12, v4, v7}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;)V

    .line 1487
    :goto_111
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v5, v4, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 1488
    .local v5, contentIntent:Landroid/app/PendingIntent;
    if-eqz v5, :cond_25d

    .line 1489
    new-instance v3, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationClicker;

    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/android/internal/statusbar/StatusBarNotification;->tag:Ljava/lang/String;

    move-object/from16 v0, p2

    iget v8, v0, Lcom/android/internal/statusbar/StatusBarNotification;->id:I

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationClicker;-><init>(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1493
    .local v3, listener:Landroid/view/View$OnClickListener;
    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1499
    .end local v3           #listener:Landroid/view/View$OnClickListener;
    :goto_133
    new-instance v6, Lcom/android/internal/statusbar/StatusBarIcon;

    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget v8, v4, Landroid/app/Notification;->icon:I

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget v9, v4, Landroid/app/Notification;->iconLevel:I

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget v10, v4, Landroid/app/Notification;->number:I

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v11, v4, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-direct/range {v6 .. v11}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Ljava/lang/String;IIILjava/lang/CharSequence;)V

    .line 1503
    .local v6, ic:Lcom/android/internal/statusbar/StatusBarIcon;
    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v4, v6}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    move-result v4

    if-nez v4, :cond_267

    .line 1504
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Couldn\'t update icon: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->handleNotificationError(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;Ljava/lang/String;)V
    :try_end_17a
    .catch Ljava/lang/RuntimeException; {:try_start_dc .. :try_end_17a} :catch_17c

    goto/16 :goto_26

    .line 1523
    .end local v5           #contentIntent:Landroid/app/PendingIntent;
    .end local v6           #ic:Lcom/android/internal/statusbar/StatusBarIcon;
    :catch_17c
    move-exception v14

    .line 1525
    .local v14, e:Ljava/lang/RuntimeException;
    const-string v4, "TabletStatusBar"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Couldn\'t reapply views for package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v12}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1526
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->removeNotificationViews(Landroid/os/IBinder;)Lcom/android/internal/statusbar/StatusBarNotification;

    .line 1527
    invoke-virtual/range {p0 .. p2}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->addNotificationViews(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;)Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 1536
    .end local v14           #e:Ljava/lang/RuntimeException;
    :goto_19f
    if-eqz v22, :cond_1b2

    .line 1537
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mTicker:Lcom/android/systemui/statusbar/tablet/TabletTicker;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/tablet/TabletTicker;->halt()V

    .line 1538
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v4}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->tick(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;Z)V

    .line 1541
    :cond_1b2
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->setAreThereNotifications()V

    goto/16 :goto_26

    .line 1425
    .end local v13           #contentsUnchanged:Z
    .end local v15           #isFirstAnyway:Z
    .end local v16           #isLastAnyway:Z
    .end local v20           #orderUnchanged:Z
    .end local v21           #rowParent:Landroid/view/ViewGroup;
    .end local v22           #updateTicker:Z
    :cond_1b7
    const/4 v13, 0x0

    goto/16 :goto_6a

    .line 1433
    .restart local v13       #contentsUnchanged:Z
    :cond_1ba
    const/16 v20, 0x0

    goto/16 :goto_86

    .line 1436
    .restart local v20       #orderUnchanged:Z
    :cond_1be
    const/16 v22, 0x0

    goto/16 :goto_a4

    .line 1450
    .restart local v15       #isFirstAnyway:Z
    .restart local v16       #isLastAnyway:Z
    .restart local v21       #rowParent:Landroid/view/ViewGroup;
    .restart local v22       #updateTicker:Z
    :cond_1c2
    const/4 v15, 0x0

    goto/16 :goto_ce

    .line 1452
    :cond_1c5
    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->expanded:Landroid/view/View;

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v4

    invoke-virtual/range {v21 .. v21}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ne v4, v7, :cond_1db

    const/16 v16, 0x1

    :goto_1d9
    goto/16 :goto_ce

    :cond_1db
    const/16 v16, 0x0

    goto :goto_1d9

    .line 1455
    .end local v21           #rowParent:Landroid/view/ViewGroup;
    :cond_1de
    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v21

    check-cast v21, Landroid/view/ViewGroup;

    .restart local v21       #rowParent:Landroid/view/ViewGroup;
    if-eqz v21, :cond_218

    .line 1456
    sget-boolean v4, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->useTouchWizGUI:Z

    if-eqz v4, :cond_1ff

    .line 1457
    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Landroid/view/View;

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v4

    if-nez v4, :cond_1fd

    const/4 v15, 0x1

    :goto_1fb
    goto/16 :goto_ce

    :cond_1fd
    const/4 v15, 0x0

    goto :goto_1fb

    .line 1459
    :cond_1ff
    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Landroid/view/View;

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v4

    invoke-virtual/range {v21 .. v21}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ne v4, v7, :cond_215

    const/16 v16, 0x1

    :goto_213
    goto/16 :goto_ce

    :cond_215
    const/16 v16, 0x0

    goto :goto_213

    .line 1462
    :cond_218
    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->content:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v21

    .end local v21           #rowParent:Landroid/view/ViewGroup;
    check-cast v21, Landroid/view/ViewGroup;

    .line 1464
    .restart local v21       #rowParent:Landroid/view/ViewGroup;
    sget-boolean v4, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->useTouchWizGUI:Z

    if-eqz v4, :cond_237

    .line 1465
    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->content:Landroid/view/View;

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v4

    if-nez v4, :cond_235

    const/4 v15, 0x1

    :goto_233
    goto/16 :goto_ce

    :cond_235
    const/4 v15, 0x0

    goto :goto_233

    .line 1467
    :cond_237
    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->content:Landroid/view/View;

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v4

    invoke-virtual/range {v21 .. v21}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ne v4, v7, :cond_24d

    const/16 v16, 0x1

    :goto_24b
    goto/16 :goto_ce

    :cond_24d
    const/16 v16, 0x0

    goto :goto_24b

    .line 1483
    :cond_250
    :try_start_250
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v0, v18

    iget-object v7, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->content:Landroid/view/View;

    invoke-virtual {v12, v4, v7}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;)V

    goto/16 :goto_111

    .line 1495
    .restart local v5       #contentIntent:Landroid/app/PendingIntent;
    :cond_25d
    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Landroid/view/View;

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_133

    .line 1508
    .restart local v6       #ic:Lcom/android/internal/statusbar/StatusBarIcon;
    :cond_267
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v4, v4, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_27e

    .line 1509
    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->largeIcon:Landroid/widget/ImageView;

    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v7, v7, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_19f

    .line 1511
    :cond_27e
    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->largeIcon:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    const/4 v7, 0x0

    iput v7, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1512
    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->largeIcon:Landroid/widget/ImageView;

    const/4 v7, 0x4

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_291
    .catch Ljava/lang/RuntimeException; {:try_start_250 .. :try_end_291} :catch_17c

    goto/16 :goto_19f

    .line 1531
    .end local v5           #contentIntent:Landroid/app/PendingIntent;
    .end local v6           #ic:Lcom/android/internal/statusbar/StatusBarIcon;
    :cond_293
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->removeNotificationViews(Landroid/os/IBinder;)Lcom/android/internal/statusbar/StatusBarNotification;

    .line 1532
    invoke-virtual/range {p0 .. p2}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->addNotificationViews(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;)Lcom/android/systemui/statusbar/StatusBarIconView;

    goto/16 :goto_19f
.end method

.method public updateNotificationCountText()V
    .registers 16

    .prologue
    const/4 v14, 0x1

    const/4 v13, 0x0

    .line 2863
    iget-object v9, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/NotificationData;->size()I

    move-result v8

    .line 2864
    .local v8, size:I
    iget-object v9, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 2865
    .local v7, res:Landroid/content/res/Resources;
    const v9, 0x7f08000f

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 2866
    .local v6, ongoingTitle:Ljava/lang/String;
    const v9, 0x7f080010

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2867
    .local v3, latestTitle:Ljava/lang/String;
    const v9, 0x7f080005

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2868
    .local v4, numFormat:Ljava/lang/String;
    const/4 v5, 0x0

    .line 2869
    .local v5, ongoingNum:I
    const/4 v2, 0x0

    .line 2871
    .local v2, latestNum:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_26
    if-ge v1, v8, :cond_47

    .line 2872
    iget-object v9, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v9, v1}, Lcom/android/systemui/statusbar/NotificationData;->get(I)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v0

    .line 2873
    .local v0, entry:Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v9, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    invoke-virtual {v9}, Lcom/android/internal/statusbar/StatusBarNotification;->isMiniCon()Z

    move-result v9

    if-eqz v9, :cond_39

    .line 2871
    :goto_36
    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    .line 2875
    :cond_39
    iget-object v9, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    invoke-virtual {v9}, Lcom/android/internal/statusbar/StatusBarNotification;->isOngoing()Z

    move-result v9

    if-eqz v9, :cond_44

    .line 2876
    add-int/lit8 v5, v5, 0x1

    goto :goto_36

    .line 2878
    :cond_44
    add-int/lit8 v2, v2, 0x1

    goto :goto_36

    .line 2882
    .end local v0           #entry:Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_47
    iget-object v9, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mOngoingNotificationTitle:Landroid/widget/TextView;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    new-array v11, v14, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v13

    invoke-static {v4, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2884
    iget-object v9, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mLatestNotificationTitle:Landroid/widget/TextView;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    new-array v11, v14, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v13

    invoke-static {v4, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2886
    return-void
.end method

.method visibilityChanged(Z)V
    .registers 3
    .parameter "visible"

    .prologue
    .line 1737
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mPanelSlightlyVisible:Z

    if-eq v0, p1, :cond_b

    .line 1738
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mPanelSlightlyVisible:Z

    .line 1740
    :try_start_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBarService;->onPanelRevealed()V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_c

    .line 1745
    :cond_b
    :goto_b
    return-void

    .line 1741
    :catch_c
    move-exception v0

    goto :goto_b
.end method

.method workAroundBadLayerDrawableOpacity(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 2634
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2635
    .local v0, bgd:Landroid/graphics/drawable/Drawable;
    instance-of v2, v0, Landroid/graphics/drawable/LayerDrawable;

    if-nez v2, :cond_9

    .line 2641
    :goto_8
    return-void

    :cond_9
    move-object v1, v0

    .line 2637
    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    .line 2638
    .local v1, d:Landroid/graphics/drawable/LayerDrawable;
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2639
    const/4 v2, -0x3

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/LayerDrawable;->setOpacity(I)V

    .line 2640
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_8
.end method
