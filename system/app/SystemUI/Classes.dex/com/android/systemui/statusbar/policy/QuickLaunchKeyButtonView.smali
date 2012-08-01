.class public Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;
.super Lcom/android/systemui/statusbar/policy/KeyButtonView;
.source "QuickLaunchKeyButtonView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView$1;,
        Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView$QuickLaunchObserver;,
        Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView$QuickLaunchMode;
    }
.end annotation


# static fields
.field public static final ACTION_TOUCH_CAPTURE_BTN:Ljava/lang/String; = "android.intent.action.TOUCH_CAPTURE_BTN"

.field public static final DEBUG:Z = true

.field public static final TAG:Ljava/lang/String; = "StatusBar.QuickLaunchKeyButtonView"


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mQuickLaunchMode:I

.field private mQuickLaunchObserver:Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView$QuickLaunchObserver;

.field private mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 91
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/KeyButtonView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 97
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->mResources:Landroid/content/res/Resources;

    .line 98
    new-instance v0, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView$QuickLaunchObserver;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView$QuickLaunchObserver;-><init>(Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->mQuickLaunchObserver:Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView$QuickLaunchObserver;

    .line 99
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->mContentResolver:Landroid/content/ContentResolver;

    .line 100
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 37
    iget v0, p0, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->mQuickLaunchMode:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput p1, p0, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->mQuickLaunchMode:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->updateQuickLaunchKeyButton(I)V

    return-void
.end method

.method private onClickApplicationButton()V
    .registers 5

    .prologue
    .line 218
    const-string v2, "StatusBar.QuickLaunchKeyButtonView"

    const-string v3, "onClickApplicationButton"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :try_start_7
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 221
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 222
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 223
    const-string v2, "sec.android.intent.extra.LAUNCHER_ACTION"

    const-string v3, "com.android.launcher2.ALL_APPS"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 224
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_26} :catch_27

    .line 228
    .end local v1           #intent:Landroid/content/Intent;
    :goto_26
    return-void

    .line 225
    :catch_27
    move-exception v0

    .line 226
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_26
.end method

.method private onClickCameraButton()V
    .registers 6

    .prologue
    .line 243
    const-string v2, "StatusBar.QuickLaunchKeyButtonView"

    const-string v3, "onClickCameraButton"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :try_start_7
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 246
    .local v1, intent:Landroid/content/Intent;
    const/high16 v2, 0x3000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 247
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.sec.android.app.camera"

    const-string v4, "com.sec.android.app.camera.Camera"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 248
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_26} :catch_27

    .line 252
    .end local v1           #intent:Landroid/content/Intent;
    :goto_26
    return-void

    .line 249
    :catch_27
    move-exception v0

    .line 250
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_26
.end method

.method private onClickQuickLauncherButton()V
    .registers 3

    .prologue
    .line 169
    const-string v0, "StatusBar.QuickLaunchKeyButtonView"

    const-string v1, "onClickQuickLauncherButton"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    sget-object v0, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView$1;->$SwitchMap$com$android$systemui$statusbar$policy$QuickLaunchKeyButtonView$QuickLaunchMode:[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->mQuickLaunchMode:I

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView$QuickLaunchMode;->valueOf(I)Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView$QuickLaunchMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView$QuickLaunchMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2a

    .line 186
    :goto_18
    return-void

    .line 172
    :pswitch_19
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->onClickScreenCaptureButton()V

    goto :goto_18

    .line 175
    :pswitch_1d
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->onClickApplicationButton()V

    goto :goto_18

    .line 178
    :pswitch_21
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->onClickSearchButton()V

    goto :goto_18

    .line 181
    :pswitch_25
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->onClickCameraButton()V

    goto :goto_18

    .line 170
    nop

    :pswitch_data_2a
    .packed-switch 0x2
        :pswitch_19
        :pswitch_1d
        :pswitch_21
        :pswitch_25
    .end packed-switch
.end method

.method private onClickScreenCaptureButton()V
    .registers 5

    .prologue
    .line 200
    const-string v2, "StatusBar.QuickLaunchKeyButtonView"

    const-string v3, "onClickScreenCaptureButton"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :try_start_7
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 203
    .local v1, i:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 204
    const-string v2, "com.diotek.screen_capture"

    const-string v3, "com.diotek.screen_capture.CaptureService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 205
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_1f} :catch_20

    .line 209
    .end local v1           #i:Landroid/content/Intent;
    :goto_1f
    return-void

    .line 206
    :catch_20
    move-exception v0

    .line 207
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1f
.end method

.method private onClickSearchButton()V
    .registers 6

    .prologue
    .line 231
    const-string v2, "StatusBar.QuickLaunchKeyButtonView"

    const-string v3, "onClickSearchButton"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :try_start_7
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 234
    .local v1, intent:Landroid/content/Intent;
    const/high16 v2, 0x3000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 235
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.google.android.googlequicksearchbox"

    const-string v4, "com.google.android.googlequicksearchbox.SearchActivity"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 236
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_26} :catch_27

    .line 240
    .end local v1           #intent:Landroid/content/Intent;
    :goto_26
    return-void

    .line 237
    :catch_27
    move-exception v0

    .line 238
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_26
.end method

.method private onLongClickQuickLauncherButton()Z
    .registers 3

    .prologue
    .line 189
    const-string v0, "StatusBar.QuickLaunchKeyButtonView"

    const-string v1, "onLongClickQuickLauncherButton"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    sget-object v0, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView$1;->$SwitchMap$com$android$systemui$statusbar$policy$QuickLaunchKeyButtonView$QuickLaunchMode:[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->mQuickLaunchMode:I

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView$QuickLaunchMode;->valueOf(I)Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView$QuickLaunchMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView$QuickLaunchMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_20

    .line 195
    const/4 v0, 0x0

    :goto_19
    return v0

    .line 192
    :pswitch_1a
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->onLongClickScreenCaptureButton()V

    .line 193
    const/4 v0, 0x1

    goto :goto_19

    .line 190
    nop

    :pswitch_data_20
    .packed-switch 0x2
        :pswitch_1a
    .end packed-switch
.end method

.method private onLongClickScreenCaptureButton()V
    .registers 4

    .prologue
    .line 212
    const-string v1, "StatusBar.QuickLaunchKeyButtonView"

    const-string v2, "onLongClickScreenCaptureButton"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.TOUCH_CAPTURE_BTN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 214
    .local v0, mIntent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 215
    return-void
.end method

.method private updateQuickLaunchKeyButton(I)V
    .registers 8
    .parameter "mode"

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 137
    const-string v0, "StatusBar.QuickLaunchKeyButtonView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateQuickLaunchKeyButton : mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    sget-object v0, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView$1;->$SwitchMap$com$android$systemui$statusbar$policy$QuickLaunchKeyButtonView$QuickLaunchMode:[I

    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView$QuickLaunchMode;->valueOf(I)Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView$QuickLaunchMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView$QuickLaunchMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_80

    .line 163
    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->setVisibility(I)V

    .line 166
    :goto_2e
    return-void

    .line 140
    :pswitch_2f
    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->setVisibility(I)V

    goto :goto_2e

    .line 143
    :pswitch_33
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->setSoundEffectsEnabled(Z)V

    .line 144
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f020108

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 145
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->setVisibility(I)V

    goto :goto_2e

    .line 148
    :pswitch_46
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->setSoundEffectsEnabled(Z)V

    .line 149
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0200fb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 150
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->setVisibility(I)V

    goto :goto_2e

    .line 153
    :pswitch_59
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->setSoundEffectsEnabled(Z)V

    .line 154
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f020118

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 155
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->setVisibility(I)V

    goto :goto_2e

    .line 158
    :pswitch_6c
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->setSoundEffectsEnabled(Z)V

    .line 159
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f020105

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 160
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->setVisibility(I)V

    goto :goto_2e

    .line 138
    nop

    :pswitch_data_80
    .packed-switch 0x1
        :pswitch_2f
        :pswitch_33
        :pswitch_46
        :pswitch_59
        :pswitch_6c
    .end packed-switch
.end method


# virtual methods
.method public getQuickLaunchMode()I
    .registers 4

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "quick_launch_app"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public isQuickLaunchNoneMode()Z
    .registers 3

    .prologue
    .line 133
    iget v0, p0, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->mQuickLaunchMode:I

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView$QuickLaunchMode;->valueOf(I)Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView$QuickLaunchMode;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView$QuickLaunchMode;->NONE:Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView$QuickLaunchMode;

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public isScreenCaptureQuickLaunchMode()Z
    .registers 3

    .prologue
    .line 129
    iget v0, p0, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->mQuickLaunchMode:I

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView$QuickLaunchMode;->valueOf(I)Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView$QuickLaunchMode;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView$QuickLaunchMode;->SCREENCAPTURE:Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView$QuickLaunchMode;

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public onClick(Landroid/view/View;)V
    .registers 2
    .parameter "v"

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->onClickQuickLauncherButton()V

    .line 117
    return-void
.end method

.method protected onFinishInflate()V
    .registers 5

    .prologue
    .line 104
    invoke-super {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->onFinishInflate()V

    .line 105
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "quick_launch_app"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->mQuickLaunchObserver:Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView$QuickLaunchObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 108
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->getQuickLaunchMode()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->mQuickLaunchMode:I

    .line 109
    iget v0, p0, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->mQuickLaunchMode:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->updateQuickLaunchKeyButton(I)V

    .line 110
    invoke-virtual {p0, p0}, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    invoke-virtual {p0, p0}, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 112
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .registers 3
    .parameter "v"

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->onLongClickQuickLauncherButton()Z

    move-result v0

    return v0
.end method
