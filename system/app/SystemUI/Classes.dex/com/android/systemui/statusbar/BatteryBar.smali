.class public Lcom/android/systemui/statusbar/BatteryBar;
.super Landroid/widget/RelativeLayout;
.source "BatteryBar.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/BatteryBar$SettingsObserver;
    }
.end annotation


# static fields
.field private static final BOTTOM_FLAG:I = 0x2

.field private static final FAST_ANIM_DURATION:I = 0x320

.field private static final INT_ANIM_DURATION:I = 0x9c4

.field private static final SLOW_ANIM_DURATION:I = 0xdac

.field private static final STYLE_DISABLE:I = 0x2

.field private static final STYLE_SHOW:I = 0x1

.field private static final TOP_FLAG:I = 0x1


# instance fields
.field private final FLAG_MODE_ACL:I

.field private final FLAG_MODE_ACLDCL:I

.field private final FLAG_MODE_DCL:I

.field private final FLAG_MODE_NORM:I

.field private final FLAG_NORM:I

.field private final FLAG_PULSE:I

.field private anim_mode:I

.field battbar:Landroid/widget/RelativeLayout;

.field private batteryLevel:I

.field private batteryStatus:I

.field charge:Landroid/view/View;

.field chargeholder:Landroid/widget/RelativeLayout;

.field private debug:Ljava/lang/Boolean;

.field private height:I

.field private high_lvl:I

.field private low_lvl:I

.field private mAttached:Z

.field private mContext:Landroid/content/Context;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field public mRunning:Ljava/lang/Boolean;

.field private pulse_mode:I

.field private style:I

.field private width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 319
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 269
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/BatteryBar;->debug:Ljava/lang/Boolean;

    .line 271
    const/16 v0, 0xf

    iput v0, p0, Lcom/android/systemui/statusbar/BatteryBar;->low_lvl:I

    .line 272
    const/16 v0, 0x28

    iput v0, p0, Lcom/android/systemui/statusbar/BatteryBar;->high_lvl:I

    .line 276
    iput v2, p0, Lcom/android/systemui/statusbar/BatteryBar;->batteryLevel:I

    .line 300
    iput v1, p0, Lcom/android/systemui/statusbar/BatteryBar;->anim_mode:I

    .line 301
    iput v1, p0, Lcom/android/systemui/statusbar/BatteryBar;->pulse_mode:I

    .line 304
    iput v2, p0, Lcom/android/systemui/statusbar/BatteryBar;->FLAG_MODE_ACLDCL:I

    .line 305
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/systemui/statusbar/BatteryBar;->FLAG_MODE_ACL:I

    .line 306
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/systemui/statusbar/BatteryBar;->FLAG_MODE_DCL:I

    .line 307
    iput v1, p0, Lcom/android/systemui/statusbar/BatteryBar;->FLAG_MODE_NORM:I

    .line 310
    iput v2, p0, Lcom/android/systemui/statusbar/BatteryBar;->FLAG_PULSE:I

    .line 311
    iput v1, p0, Lcom/android/systemui/statusbar/BatteryBar;->FLAG_NORM:I

    .line 314
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/BatteryBar;->mRunning:Ljava/lang/Boolean;

    .line 404
    new-instance v0, Lcom/android/systemui/statusbar/BatteryBar$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/BatteryBar$1;-><init>(Lcom/android/systemui/statusbar/BatteryBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BatteryBar;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 320
    iput-object p1, p0, Lcom/android/systemui/statusbar/BatteryBar;->mContext:Landroid/content/Context;

    .line 321
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 324
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/BatteryBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 325
    iput-object p1, p0, Lcom/android/systemui/statusbar/BatteryBar;->mContext:Landroid/content/Context;

    .line 326
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 329
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 269
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/BatteryBar;->debug:Ljava/lang/Boolean;

    .line 271
    const/16 v0, 0xf

    iput v0, p0, Lcom/android/systemui/statusbar/BatteryBar;->low_lvl:I

    .line 272
    const/16 v0, 0x28

    iput v0, p0, Lcom/android/systemui/statusbar/BatteryBar;->high_lvl:I

    .line 276
    iput v2, p0, Lcom/android/systemui/statusbar/BatteryBar;->batteryLevel:I

    .line 300
    iput v1, p0, Lcom/android/systemui/statusbar/BatteryBar;->anim_mode:I

    .line 301
    iput v1, p0, Lcom/android/systemui/statusbar/BatteryBar;->pulse_mode:I

    .line 304
    iput v2, p0, Lcom/android/systemui/statusbar/BatteryBar;->FLAG_MODE_ACLDCL:I

    .line 305
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/systemui/statusbar/BatteryBar;->FLAG_MODE_ACL:I

    .line 306
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/systemui/statusbar/BatteryBar;->FLAG_MODE_DCL:I

    .line 307
    iput v1, p0, Lcom/android/systemui/statusbar/BatteryBar;->FLAG_MODE_NORM:I

    .line 310
    iput v2, p0, Lcom/android/systemui/statusbar/BatteryBar;->FLAG_PULSE:I

    .line 311
    iput v1, p0, Lcom/android/systemui/statusbar/BatteryBar;->FLAG_NORM:I

    .line 314
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/BatteryBar;->mRunning:Ljava/lang/Boolean;

    .line 404
    new-instance v0, Lcom/android/systemui/statusbar/BatteryBar$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/BatteryBar$1;-><init>(Lcom/android/systemui/statusbar/BatteryBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BatteryBar;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 330
    iput-object p1, p0, Lcom/android/systemui/statusbar/BatteryBar;->mContext:Landroid/content/Context;

    .line 331
    return-void
.end method

.method static synthetic access$0(Lcom/android/systemui/statusbar/BatteryBar;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 277
    iput p1, p0, Lcom/android/systemui/statusbar/BatteryBar;->batteryStatus:I

    return-void
.end method

.method static synthetic access$1(Lcom/android/systemui/statusbar/BatteryBar;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 276
    iput p1, p0, Lcom/android/systemui/statusbar/BatteryBar;->batteryLevel:I

    return-void
.end method

.method private getBatteryColour()Ljava/lang/Integer;
    .locals 7

    .prologue
    const/4 v6, -0x1

    const/4 v0, 0x1

    .line 424
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BatteryBar;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 425
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "battery_bar_auto_color"

    .line 424
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v0, :cond_1

    .line 428
    .local v0, autoColorBatteryText:Z
    :goto_0
    if-eqz v0, :cond_5

    .line 430
    iget v3, p0, Lcom/android/systemui/statusbar/BatteryBar;->batteryStatus:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    .line 431
    iget v3, p0, Lcom/android/systemui/statusbar/BatteryBar;->batteryStatus:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_2

    .line 434
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BatteryBar;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 435
    const-string v4, "battery_bar_color_auto_charging"

    const v5, -0x6c2b00

    .line 433
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 467
    :goto_1
    return-object v3

    .line 426
    .end local v0           #autoColorBatteryText:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 439
    .restart local v0       #autoColorBatteryText:Z
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BatteryBar;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 440
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "battery_bar_low_cut"

    const/16 v5, 0xf

    .line 439
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 442
    .local v2, level_low:I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BatteryBar;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 443
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "battery_bar_high_cut"

    const/16 v5, 0x28

    .line 442
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 445
    .local v1, level_high:I
    iget v3, p0, Lcom/android/systemui/statusbar/BatteryBar;->batteryLevel:I

    if-ge v3, v2, :cond_3

    .line 447
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BatteryBar;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 448
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 449
    const-string v4, "battery_bar_color_auto_low"

    const v5, -0x2ab500

    .line 447
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_1

    .line 451
    :cond_3
    iget v3, p0, Lcom/android/systemui/statusbar/BatteryBar;->batteryLevel:I

    if-ge v3, v1, :cond_4

    .line 453
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BatteryBar;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 454
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 455
    const-string v4, "battery_bar_color_auto_medium"

    const v5, -0x2a5d00

    .line 453
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_1

    .line 459
    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BatteryBar;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 460
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 461
    const-string v4, "battery_bar_color_auto_regular"

    .line 459
    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_1

    .line 467
    .end local v1           #level_high:I
    .end local v2           #level_low:I
    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BatteryBar;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 468
    const-string v4, "battery_bar_color"

    .line 467
    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_1
.end method


# virtual methods
.method public isRunning()Z
    .locals 1

    .prologue
    .line 552
    iget-object v0, p0, Lcom/android/systemui/statusbar/BatteryBar;->mRunning:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 10

    .prologue
    const/4 v7, 0x1

    const/4 v9, -0x1

    .line 335
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 337
    new-instance v5, Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/android/systemui/statusbar/BatteryBar;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/systemui/statusbar/BatteryBar;->battbar:Landroid/widget/RelativeLayout;

    .line 338
    new-instance v5, Landroid/view/View;

    iget-object v6, p0, Lcom/android/systemui/statusbar/BatteryBar;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/systemui/statusbar/BatteryBar;->charge:Landroid/view/View;

    .line 339
    new-instance v5, Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/android/systemui/statusbar/BatteryBar;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/systemui/statusbar/BatteryBar;->chargeholder:Landroid/widget/RelativeLayout;

    .line 343
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/statusbar/BatteryBar;->debug:Ljava/lang/Boolean;

    .line 345
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/BatteryBar;->mAttached:Z

    if-nez v5, :cond_0

    .line 347
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/BatteryBar;->mAttached:Z

    .line 348
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BatteryBar;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 349
    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "window"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 348
    check-cast v4, Landroid/view/WindowManager;

    .line 350
    .local v4, screen:Landroid/view/WindowManager;
    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getWidth()I

    move-result v5

    iput v5, p0, Lcom/android/systemui/statusbar/BatteryBar;->width:I

    .line 353
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 354
    .local v3, filter:Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 355
    const-string v5, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 356
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BatteryBar;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/BatteryBar;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v7, 0x0

    .line 357
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BatteryBar;->getHandler()Landroid/os/Handler;

    move-result-object v8

    .line 356
    invoke-virtual {v5, v6, v3, v7, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 359
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 362
    .local v0, LP:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v5, p0, Lcom/android/systemui/statusbar/BatteryBar;->charge:Landroid/view/View;

    invoke-virtual {v5, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 363
    iget-object v5, p0, Lcom/android/systemui/statusbar/BatteryBar;->charge:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/BatteryBar;->getBatteryColour()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 364
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget v5, p0, Lcom/android/systemui/statusbar/BatteryBar;->width:I

    invoke-direct {v2, v5, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 366
    .local v2, LPbar1:Landroid/widget/RelativeLayout$LayoutParams;
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 367
    iget v5, p0, Lcom/android/systemui/statusbar/BatteryBar;->batteryLevel:I

    iget v6, p0, Lcom/android/systemui/statusbar/BatteryBar;->width:I

    mul-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x64

    iget v6, p0, Lcom/android/systemui/statusbar/BatteryBar;->height:I

    .line 366
    invoke-direct {v1, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 369
    .local v1, LPbar:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v5, p0, Lcom/android/systemui/statusbar/BatteryBar;->chargeholder:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 371
    iget-object v5, p0, Lcom/android/systemui/statusbar/BatteryBar;->battbar:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 373
    iget-object v5, p0, Lcom/android/systemui/statusbar/BatteryBar;->battbar:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/BatteryBar;->getBatteryColour()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 374
    iget-object v5, p0, Lcom/android/systemui/statusbar/BatteryBar;->battbar:Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/android/systemui/statusbar/BatteryBar;->battbar:Landroid/widget/RelativeLayout;

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 375
    iget-object v5, p0, Lcom/android/systemui/statusbar/BatteryBar;->chargeholder:Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/android/systemui/statusbar/BatteryBar;->chargeholder:Landroid/widget/RelativeLayout;

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 376
    iget-object v5, p0, Lcom/android/systemui/statusbar/BatteryBar;->chargeholder:Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/android/systemui/statusbar/BatteryBar;->charge:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 378
    iget-object v5, p0, Lcom/android/systemui/statusbar/BatteryBar;->battbar:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/BatteryBar;->addView(Landroid/view/View;)V

    .line 379
    iget-object v5, p0, Lcom/android/systemui/statusbar/BatteryBar;->chargeholder:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/BatteryBar;->addView(Landroid/view/View;)V

    .line 382
    iget-object v5, p0, Lcom/android/systemui/statusbar/BatteryBar;->chargeholder:Landroid/widget/RelativeLayout;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 384
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BatteryBar;->updateBatteryBar()V

    .line 390
    .end local v0           #LP:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v1           #LPbar:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v2           #LPbar1:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v3           #filter:Landroid/content/IntentFilter;
    .end local v4           #screen:Landroid/view/WindowManager;
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 394
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 395
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/BatteryBar;->mAttached:Z

    if-eqz v0, :cond_0

    .line 396
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BatteryBar;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/BatteryBar;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 397
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/BatteryBar;->mAttached:Z

    .line 399
    :cond_0
    return-void
.end method

.method public start()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/high16 v7, 0x3f80

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 558
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BatteryBar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 559
    const-string v3, "battery_bar_anim_on"

    .line 558
    invoke-static {v2, v3, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_1

    .line 560
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 561
    .local v1, pulsing:Ljava/lang/Boolean;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 562
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/BatteryBar;->mRunning:Ljava/lang/Boolean;

    .line 563
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BatteryBar;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 564
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "anim_type"

    .line 563
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/BatteryBar;->anim_mode:I

    .line 565
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BatteryBar;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 566
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "anim_pulse_type"

    .line 565
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/BatteryBar;->pulse_mode:I

    .line 567
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    invoke-direct {v0, v5, v7, v7, v7}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    .line 568
    .local v0, anim:Landroid/view/animation/ScaleAnimation;
    const-wide/16 v2, 0x9c4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 569
    iget v2, p0, Lcom/android/systemui/statusbar/BatteryBar;->anim_mode:I

    if-ne v2, v4, :cond_2

    .line 570
    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 578
    :goto_0
    iget v2, p0, Lcom/android/systemui/statusbar/BatteryBar;->pulse_mode:I

    if-ne v2, v4, :cond_0

    .line 579
    invoke-virtual {v0, v6}, Landroid/view/animation/ScaleAnimation;->setRepeatMode(I)V

    .line 583
    :cond_0
    const-string v2, "battbar"

    const-string v3, "start anim"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/view/animation/ScaleAnimation;->setRepeatCount(I)V

    .line 586
    iget-object v2, p0, Lcom/android/systemui/statusbar/BatteryBar;->chargeholder:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 587
    iget-object v2, p0, Lcom/android/systemui/statusbar/BatteryBar;->chargeholder:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 620
    .end local v0           #anim:Landroid/view/animation/ScaleAnimation;
    .end local v1           #pulsing:Ljava/lang/Boolean;
    :cond_1
    :goto_1
    return-void

    .line 571
    .restart local v0       #anim:Landroid/view/animation/ScaleAnimation;
    .restart local v1       #pulsing:Ljava/lang/Boolean;
    :cond_2
    iget v2, p0, Lcom/android/systemui/statusbar/BatteryBar;->anim_mode:I

    if-ne v2, v6, :cond_3

    .line 572
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto :goto_0

    .line 573
    :cond_3
    iget v2, p0, Lcom/android/systemui/statusbar/BatteryBar;->anim_mode:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_4

    .line 574
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto :goto_0

    .line 576
    :cond_4
    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto :goto_0

    .line 588
    .end local v0           #anim:Landroid/view/animation/ScaleAnimation;
    :cond_5
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    .line 589
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/BatteryBar;->mRunning:Ljava/lang/Boolean;

    .line 590
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BatteryBar;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 591
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "anim_type"

    .line 590
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/BatteryBar;->anim_mode:I

    .line 592
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BatteryBar;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 593
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "anim_pulse_type"

    .line 592
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/BatteryBar;->pulse_mode:I

    .line 594
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .line 595
    iget v2, p0, Lcom/android/systemui/statusbar/BatteryBar;->batteryLevel:I

    iget v3, p0, Lcom/android/systemui/statusbar/BatteryBar;->width:I

    mul-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x64

    add-int/lit8 v2, v2, -0x5

    int-to-float v2, v2

    .line 594
    invoke-direct {v0, v5, v2, v5, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 596
    .local v0, anim:Landroid/view/animation/TranslateAnimation;
    const-wide/16 v2, 0x9c4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 598
    iget v2, p0, Lcom/android/systemui/statusbar/BatteryBar;->anim_mode:I

    if-ne v2, v4, :cond_7

    .line 599
    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 608
    :goto_2
    iget v2, p0, Lcom/android/systemui/statusbar/BatteryBar;->pulse_mode:I

    if-ne v2, v4, :cond_6

    .line 609
    invoke-virtual {v0, v6}, Landroid/view/animation/TranslateAnimation;->setRepeatMode(I)V

    .line 613
    :cond_6
    const-string v2, "battbar"

    const-string v3, "start anim"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/view/animation/TranslateAnimation;->setRepeatCount(I)V

    .line 616
    iget-object v2, p0, Lcom/android/systemui/statusbar/BatteryBar;->chargeholder:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 617
    iget-object v2, p0, Lcom/android/systemui/statusbar/BatteryBar;->chargeholder:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_1

    .line 600
    :cond_7
    iget v2, p0, Lcom/android/systemui/statusbar/BatteryBar;->anim_mode:I

    if-ne v2, v6, :cond_8

    .line 601
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto :goto_2

    .line 602
    :cond_8
    iget v2, p0, Lcom/android/systemui/statusbar/BatteryBar;->anim_mode:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_9

    .line 603
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto :goto_2

    .line 605
    :cond_9
    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto :goto_2
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 624
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/BatteryBar;->mRunning:Ljava/lang/Boolean;

    .line 626
    iget-object v0, p0, Lcom/android/systemui/statusbar/BatteryBar;->chargeholder:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->clearAnimation()V

    .line 627
    const-string v0, "battbar"

    const-string v1, "stop anim"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    iget-object v0, p0, Lcom/android/systemui/statusbar/BatteryBar;->chargeholder:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 630
    return-void
.end method

.method final updateBatteryBar()V
    .locals 13

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x5

    const/4 v10, 0x1

    .line 475
    invoke-direct {p0}, Lcom/android/systemui/statusbar/BatteryBar;->getBatteryColour()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 477
    .local v3, colour:I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BatteryBar;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 478
    const-string v8, "battery_bar_style"

    .line 477
    invoke-static {v7, v8, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/android/systemui/statusbar/BatteryBar;->style:I

    .line 479
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BatteryBar;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 480
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "battery_bar_height"

    .line 479
    invoke-static {v7, v8, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 482
    .local v6, settingsHeight:I
    iget v7, p0, Lcom/android/systemui/statusbar/BatteryBar;->style:I

    if-ne v7, v10, :cond_5

    .line 483
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/BatteryBar;->setVisibility(I)V

    .line 485
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BatteryBar;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 486
    invoke-virtual {v7}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "window"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 485
    check-cast v5, Landroid/view/WindowManager;

    .line 491
    .local v5, screen:Landroid/view/WindowManager;
    iget-object v7, p0, Lcom/android/systemui/statusbar/BatteryBar;->battbar:Landroid/widget/RelativeLayout;

    invoke-virtual {v7}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 493
    .local v1, baseparam:Landroid/view/ViewGroup$LayoutParams;
    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Display;->getWidth()I

    move-result v7

    iput v7, p0, Lcom/android/systemui/statusbar/BatteryBar;->width:I

    .line 494
    iput v6, p0, Lcom/android/systemui/statusbar/BatteryBar;->height:I

    .line 499
    iget v7, p0, Lcom/android/systemui/statusbar/BatteryBar;->batteryLevel:I

    iget v8, p0, Lcom/android/systemui/statusbar/BatteryBar;->width:I

    mul-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x64

    iput v7, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 500
    iget v7, p0, Lcom/android/systemui/statusbar/BatteryBar;->height:I

    iput v7, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 502
    iget-object v7, p0, Lcom/android/systemui/statusbar/BatteryBar;->battbar:Landroid/widget/RelativeLayout;

    invoke-virtual {v7, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 503
    iget-object v7, p0, Lcom/android/systemui/statusbar/BatteryBar;->battbar:Landroid/widget/RelativeLayout;

    invoke-virtual {v7, v3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 506
    iget-object v7, p0, Lcom/android/systemui/statusbar/BatteryBar;->chargeholder:Landroid/widget/RelativeLayout;

    invoke-virtual {v7}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 507
    .local v2, baseparamc:Landroid/view/ViewGroup$LayoutParams;
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 510
    .local v4, pulse:Ljava/lang/Boolean;
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 511
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 513
    .local v0, align:Landroid/widget/RelativeLayout$LayoutParams;
    iget v7, p0, Lcom/android/systemui/statusbar/BatteryBar;->height:I

    iput v7, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 514
    iget v7, p0, Lcom/android/systemui/statusbar/BatteryBar;->width:I

    iget v8, p0, Lcom/android/systemui/statusbar/BatteryBar;->batteryLevel:I

    iget v9, p0, Lcom/android/systemui/statusbar/BatteryBar;->width:I

    mul-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x64

    sub-int/2addr v7, v8

    iput v7, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 515
    const-string v7, "battbar"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/android/systemui/statusbar/BatteryBar;->battbar:Landroid/widget/RelativeLayout;

    invoke-virtual {v9}, Landroid/widget/RelativeLayout;->getId()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    iget-object v7, p0, Lcom/android/systemui/statusbar/BatteryBar;->battbar:Landroid/widget/RelativeLayout;

    invoke-virtual {v7}, Landroid/widget/RelativeLayout;->getId()I

    move-result v7

    invoke-virtual {v0, v10, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 517
    iget-object v7, p0, Lcom/android/systemui/statusbar/BatteryBar;->chargeholder:Landroid/widget/RelativeLayout;

    invoke-virtual {v7, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 518
    iget-object v7, p0, Lcom/android/systemui/statusbar/BatteryBar;->charge:Landroid/view/View;

    invoke-virtual {v7, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 532
    .end local v0           #align:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    :goto_0
    iget v7, p0, Lcom/android/systemui/statusbar/BatteryBar;->batteryStatus:I

    if-eq v7, v12, :cond_1

    .line 533
    iget v7, p0, Lcom/android/systemui/statusbar/BatteryBar;->batteryStatus:I

    if-ne v7, v11, :cond_4

    .line 534
    :cond_1
    iget-object v7, p0, Lcom/android/systemui/statusbar/BatteryBar;->mRunning:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_2

    .line 535
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BatteryBar;->start()V

    .line 548
    .end local v1           #baseparam:Landroid/view/ViewGroup$LayoutParams;
    .end local v2           #baseparamc:Landroid/view/ViewGroup$LayoutParams;
    .end local v4           #pulse:Ljava/lang/Boolean;
    .end local v5           #screen:Landroid/view/WindowManager;
    :cond_2
    :goto_1
    return-void

    .line 519
    .restart local v1       #baseparam:Landroid/view/ViewGroup$LayoutParams;
    .restart local v2       #baseparamc:Landroid/view/ViewGroup$LayoutParams;
    .restart local v4       #pulse:Ljava/lang/Boolean;
    .restart local v5       #screen:Landroid/view/WindowManager;
    :cond_3
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_0

    .line 520
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 522
    .restart local v0       #align:Landroid/widget/RelativeLayout$LayoutParams;
    iget v7, p0, Lcom/android/systemui/statusbar/BatteryBar;->height:I

    iput v7, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 523
    iput v11, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 524
    invoke-virtual {v0, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 525
    iget-object v7, p0, Lcom/android/systemui/statusbar/BatteryBar;->chargeholder:Landroid/widget/RelativeLayout;

    invoke-virtual {v7, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 528
    iget-object v7, p0, Lcom/android/systemui/statusbar/BatteryBar;->charge:Landroid/view/View;

    const v8, -0x50000001

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 538
    .end local v0           #align:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_4
    iget-object v7, p0, Lcom/android/systemui/statusbar/BatteryBar;->mRunning:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 539
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BatteryBar;->stop()V

    goto :goto_1

    .line 543
    .end local v1           #baseparam:Landroid/view/ViewGroup$LayoutParams;
    .end local v2           #baseparamc:Landroid/view/ViewGroup$LayoutParams;
    .end local v4           #pulse:Ljava/lang/Boolean;
    .end local v5           #screen:Landroid/view/WindowManager;
    :cond_5
    const/16 v7, 0x8

    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/BatteryBar;->setVisibility(I)V

    goto :goto_1
.end method
