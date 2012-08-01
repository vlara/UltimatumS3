.class public Lcom/android/systemui/statusbar/phone/StatusBarHelpView;
.super Landroid/widget/RelativeLayout;
.source "StatusBarHelpView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final STATUS_BAR_HELP_CHECKED:Ljava/lang/String; = "status_bar_help_checked"

.field private static final TAG:Ljava/lang/String; = "StatusBar.StatusBarHelpView"


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mButtonHelpText:Landroid/widget/TextView;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDisplay:Landroid/view/Display;

.field private mDoNotShowAgain:Z

.field private mHelpViewOkButton:Landroid/widget/Button;

.field private mNotificationHelpText:Landroid/widget/TextView;

.field private mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field private mShowing:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarHelpView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBarHelpView$1;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarHelpView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHelpView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 77
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHelpView;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHelpView;->mDisplay:Landroid/view/Display;

    .line 79
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHelpView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHelpView;->mContentResolver:Landroid/content/ContentResolver;

    .line 80
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/StatusBarHelpView;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHelpView;->mHelpViewOkButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/StatusBarHelpView;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHelpView;->mButtonHelpText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/StatusBarHelpView;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHelpView;->mNotificationHelpText:Landroid/widget/TextView;

    return-object v0
.end method

.method private getStatusBarHelpViewLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .registers 7

    .prologue
    const/4 v1, -0x1

    .line 113
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7e1

    const v4, 0x820100

    const/4 v5, -0x3

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 120
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHelpView;->mDisplay:Landroid/view/Display;

    invoke-static {v1}, Landroid/app/ActivityManager;->isHighEndGfx(Landroid/view/Display;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 121
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x100

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 123
    :cond_1c
    const/16 v1, 0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 124
    const-string v1, "StatusBarHelpView"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 125
    const v1, 0x7f0c0008

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 126
    return-object v0
.end method


# virtual methods
.method public isShowing()Z
    .registers 2

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHelpView;->mShowing:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    .line 103
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_18

    .line 110
    :goto_8
    return-void

    .line 105
    :pswitch_9
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHelpView;->show(Z)V

    .line 106
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHelpView;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "status_bar_help_checked"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 107
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHelpView;->mDoNotShowAgain:Z

    goto :goto_8

    .line 103
    nop

    :pswitch_data_18
    .packed-switch 0x7f0f00c5
        :pswitch_9
    .end packed-switch
.end method

.method protected onFinishInflate()V
    .registers 6

    .prologue
    const/4 v2, 0x1

    .line 84
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 86
    const v1, 0x7f0f00c5

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarHelpView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHelpView;->mHelpViewOkButton:Landroid/widget/Button;

    .line 87
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHelpView;->mHelpViewOkButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    const v1, 0x7f0f00c4

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarHelpView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHelpView;->mButtonHelpText:Landroid/widget/TextView;

    .line 90
    const v1, 0x7f0f00c6

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarHelpView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHelpView;->mNotificationHelpText:Landroid/widget/TextView;

    .line 93
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHelpView;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "status_bar_help_checked"

    const/4 v4, -0x1

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v2, v1, :cond_4c

    move v1, v2

    :goto_36
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHelpView;->mDoNotShowAgain:Z

    .line 96
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 97
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHelpView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHelpView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 99
    return-void

    .line 93
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_4c
    const/4 v1, 0x0

    goto :goto_36
.end method

.method public show(Z)V
    .registers 4
    .parameter "visible"

    .prologue
    .line 130
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHelpView;->mDoNotShowAgain:Z

    if-eqz v1, :cond_5

    .line 139
    :cond_4
    :goto_4
    return-void

    .line 131
    :cond_5
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHelpView;->getStatusBarHelpViewLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 132
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    if-eqz p1, :cond_16

    .line 133
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/view/WindowManagerImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 134
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHelpView;->mShowing:Z

    goto :goto_4

    .line 135
    :cond_16
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHelpView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 136
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/WindowManagerImpl;->removeView(Landroid/view/View;)V

    .line 137
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHelpView;->mShowing:Z

    goto :goto_4
.end method
