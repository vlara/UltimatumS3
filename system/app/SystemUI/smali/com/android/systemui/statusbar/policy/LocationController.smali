.class public Lcom/android/systemui/statusbar/policy/LocationController;
.super Landroid/content/BroadcastReceiver;
.source "LocationController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/LocationController$1;,
        Lcom/android/systemui/statusbar/policy/LocationController$StatusBarHandler;
    }
.end annotation


# static fields
.field private static final EVENT_STOP_GPS_TONE:I = 0x40

.field private static final GOOGLE_SETTINGS_CONTENT_URI:Landroid/net/Uri; = null

.field private static final GPS_NOTIFICATION_ID:I = 0x3d8d7

.field private static final GPS_NOTI_STATUS:Ljava/lang/String; = "gps_notification_sounds"

.field private static final TAG:Ljava/lang/String; = "StatusBar.LocationController"

.field private static final TW_TAG:Ljava/lang/String; = "STATUSBAR-LocationController"

.field private static final USE_LOCATION_FOR_SERVICES:Ljava/lang/String; = "use_location_for_services"

.field private static final sLBSImages:[I


# instance fields
.field private LBS_ENABLED:Ljava/lang/String;

.field private LBS_ENABLED_CHANGE_ACTION:Ljava/lang/String;

.field private VZW_PROVIDER:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mFocusToneGenerator:Landroid/media/ToneGenerator;

.field private final mHandler:Landroid/os/Handler;

.field private mIconViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mMyContext:Landroid/content/Context;

.field private mNotificationService:Landroid/app/INotificationManager;

.field private mService:Landroid/app/StatusBarManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/statusbar/policy/LocationController;->sLBSImages:[I

    .line 92
    const-string v0, "content://com.google.settings/partner"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/LocationController;->GOOGLE_SETTINGS_CONTENT_URI:Landroid/net/Uri;

    return-void

    .line 83
    nop

    :array_0
    .array-data 0x4
        0xaet 0x0t 0x2t 0x7ft
        0xaft 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 114
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 73
    new-instance v2, Lcom/android/systemui/statusbar/policy/LocationController$StatusBarHandler;

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/statusbar/policy/LocationController$StatusBarHandler;-><init>(Lcom/android/systemui/statusbar/policy/LocationController;Lcom/android/systemui/statusbar/policy/LocationController$1;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/LocationController;->mHandler:Landroid/os/Handler;

    .line 82
    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/LocationController;->mService:Landroid/app/StatusBarManager;

    .line 88
    const-string v2, "com.android.internal.location.intent.action.LBS_ENABLED_CHANGE"

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/LocationController;->LBS_ENABLED_CHANGE_ACTION:Ljava/lang/String;

    .line 89
    const-string v2, "lbsEnabled"

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/LocationController;->LBS_ENABLED:Ljava/lang/String;

    .line 90
    const-string v2, "vzw_lbs"

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/LocationController;->VZW_PROVIDER:Ljava/lang/String;

    .line 97
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/LocationController;->mIconViews:Ljava/util/ArrayList;

    .line 115
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/LocationController;->mContext:Landroid/content/Context;

    .line 116
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/LocationController;->mMyContext:Landroid/content/Context;

    .line 118
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 119
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "android.location.GPS_ENABLED_CHANGE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 120
    const-string v2, "android.location.GPS_FIX_CHANGE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 128
    const-string v2, "notification"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 130
    .local v1, nm:Landroid/app/NotificationManager;
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/LocationController;->mNotificationService:Landroid/app/INotificationManager;

    .line 138
    return-void
.end method

.method private GenerateBeep()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 143
    iput-object v12, p0, Lcom/android/systemui/statusbar/policy/LocationController;->mFocusToneGenerator:Landroid/media/ToneGenerator;

    .line 144
    const/4 v3, 0x0

    .line 145
    .local v3, MIN_VOLUME_LEV:I
    const/4 v1, 0x7

    .line 146
    .local v1, MAX_VOLUME_LEV:I
    const/16 v4, 0xe

    .line 147
    .local v4, VOLUME_STEP:I
    const/4 v2, 0x0

    .line 148
    .local v2, MIN_VOLUME:I
    const/16 v0, 0x64

    .line 149
    .local v0, MAX_VOLUME:I
    move v8, v0

    .line 151
    .local v8, mCurVol:I
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/LocationController;->mContext:Landroid/content/Context;

    const-string v10, "audio"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioManager;

    .line 153
    .local v5, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v5, v11}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v8

    .line 155
    const-string v9, "StatusBar.LocationController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "GenerateBeep: Volumei Level:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    if-lt v8, v3, :cond_2

    if-gt v8, v1, :cond_2

    .line 159
    if-eq v8, v1, :cond_1

    .line 160
    mul-int/2addr v8, v4

    .line 164
    :goto_0
    const-string v9, "StatusBar.LocationController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "GenerateBeep: valid Volume:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :goto_1
    :try_start_0
    new-instance v9, Landroid/media/ToneGenerator;

    const/4 v10, 0x1

    invoke-direct {v9, v10, v8}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v9, p0, Lcom/android/systemui/statusbar/policy/LocationController;->mFocusToneGenerator:Landroid/media/ToneGenerator;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    :goto_2
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/LocationController;->mFocusToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v9, :cond_0

    .line 181
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/LocationController;->mHandler:Landroid/os/Handler;

    const/16 v10, 0x40

    invoke-virtual {v9, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    .line 182
    .local v7, m:Landroid/os/Message;
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/LocationController;->mFocusToneGenerator:Landroid/media/ToneGenerator;

    const/16 v10, 0x1c

    invoke-virtual {v9, v10}, Landroid/media/ToneGenerator;->startTone(I)Z

    .line 183
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/LocationController;->mHandler:Landroid/os/Handler;

    const-wide/16 v10, 0x1f4

    invoke-virtual {v9, v7, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 186
    .end local v7           #m:Landroid/os/Message;
    :cond_0
    return-void

    .line 162
    :cond_1
    move v8, v0

    goto :goto_0

    .line 167
    :cond_2
    const-string v9, "StatusBar.LocationController"

    const-string v10, "Error getting current volume: Setting volume as max volume"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    move v8, v0

    goto :goto_1

    .line 174
    :catch_0
    move-exception v6

    .line 176
    .local v6, e:Ljava/lang/Exception;
    iput-object v12, p0, Lcom/android/systemui/statusbar/policy/LocationController;->mFocusToneGenerator:Landroid/media/ToneGenerator;

    .line 177
    sget-object v9, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v9, v6}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_2
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/LocationController;)Landroid/media/ToneGenerator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/LocationController;->mFocusToneGenerator:Landroid/media/ToneGenerator;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/policy/LocationController;Landroid/media/ToneGenerator;)Landroid/media/ToneGenerator;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/LocationController;->mFocusToneGenerator:Landroid/media/ToneGenerator;

    return-object p1
.end method

.method private checkLBSStatus()Z
    .locals 1

    .prologue
    .line 337
    const/4 v0, 0x0

    return v0
.end method

.method private updateIconView(IZ)V
    .locals 4
    .parameter "iconId"
    .parameter "visible"

    .prologue
    .line 105
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/LocationController;->mIconViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 106
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 107
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/LocationController;->mIconViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 108
    .local v2, v:Landroid/widget/ImageView;
    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 109
    if-eqz p2, :cond_0

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 106
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 109
    :cond_0
    const/16 v3, 0x8

    goto :goto_1

    .line 111
    .end local v2           #v:Landroid/widget/ImageView;
    :cond_1
    return-void
.end method

.method private final updateLBS(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 327
    return-void
.end method


# virtual methods
.method public addIconView(Landroid/widget/ImageView;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/LocationController;->mIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 191
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    .line 192
    .local v8, action:Ljava/lang/String;
    const-string v1, "enabled"

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    .line 200
    .local v9, enabled:Z
    const/4 v14, 0x0

    .line 201
    .local v14, valueFromPrefs:Z
    const-string v1, "StatusBar.LocationController"

    const-string v2, "onReceive: [GPS ICON]"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    const-string v1, "android.location.GPS_FIX_CHANGE"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v9, :cond_0

    .line 213
    const-string v1, "StatusBar.LocationController"

    const-string v2, "onReceive: [GPS ICON] GPS is getting fixes"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    const v11, 0x1080672

    .line 215
    .local v11, iconId:I
    const v13, 0x7f080081

    .line 216
    .local v13, textResId:I
    const/4 v15, 0x1

    .line 262
    .local v15, visible:Z
    :goto_0
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v15}, Lcom/android/systemui/statusbar/policy/LocationController;->updateIconView(IZ)V

    .line 266
    if-eqz v15, :cond_2

    .line 267
    :try_start_0
    new-instance v10, Landroid/content/Intent;

    const-string v1, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v10, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 268
    .local v10, gpsIntent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v10, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 269
    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v1, v10, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v12

    .line 271
    .local v12, pendingIntent:Landroid/app/PendingIntent;
    new-instance v1, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/LocationController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v11}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/LocationController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v13}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v12}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v6

    .line 279
    .local v6, n:Landroid/app/Notification;
    const/4 v1, 0x0

    iput-object v1, v6, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    .line 280
    const/4 v1, 0x0

    iput-object v1, v6, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 282
    const/4 v1, 0x1

    new-array v7, v1, [I

    .line 283
    .local v7, idOut:[I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/LocationController;->mNotificationService:Landroid/app/INotificationManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/LocationController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const v4, 0x3d8d7

    sget v5, Lcom/android/internal/statusbar/StatusBarNotification;->PRIORITY_SYSTEM:I

    invoke-interface/range {v1 .. v7}, Landroid/app/INotificationManager;->enqueueNotificationWithTagPriority(Ljava/lang/String;Ljava/lang/String;IILandroid/app/Notification;[I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    .end local v6           #n:Landroid/app/Notification;
    .end local v7           #idOut:[I
    .end local v10           #gpsIntent:Landroid/content/Intent;
    .end local v12           #pendingIntent:Landroid/app/PendingIntent;
    :goto_1
    return-void

    .line 220
    .end local v11           #iconId:I
    .end local v13           #textResId:I
    .end local v15           #visible:Z
    :cond_0
    const-string v1, "android.location.GPS_ENABLED_CHANGE"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez v9, :cond_1

    .line 222
    const-string v1, "StatusBar.LocationController"

    const-string v2, "onReceive: [GPS ICON] GPS is off"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    const/4 v15, 0x0

    .line 224
    .restart local v15       #visible:Z
    const/4 v13, 0x0

    .restart local v13       #textResId:I
    move v11, v13

    .restart local v11       #iconId:I
    goto :goto_0

    .line 231
    .end local v11           #iconId:I
    .end local v13           #textResId:I
    .end local v15           #visible:Z
    :cond_1
    const-string v1, "StatusBar.LocationController"

    const-string v2, "onReceive: [GPS ICON] GPS is on, but not receiving fixes"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    const v11, 0x7f0200ad

    .line 233
    .restart local v11       #iconId:I
    const v13, 0x7f080080

    .line 234
    .restart local v13       #textResId:I
    const/4 v15, 0x1

    .restart local v15       #visible:Z
    goto/16 :goto_0

    .line 291
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/LocationController;->mNotificationService:Landroid/app/INotificationManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/LocationController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x3d8d7

    invoke-interface {v1, v2, v3}, Landroid/app/INotificationManager;->cancelNotification(Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 295
    :catch_0
    move-exception v1

    goto :goto_1
.end method
