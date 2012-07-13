.class public Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;
.super Landroid/widget/LinearLayout;
.source "QuickSettingPanel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel$SineInOut70;
    }
.end annotation


# instance fields
.field final TAG:Ljava/lang/String;

.field isExist:[Z

.field isPhone:Z

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mButtonCnt:I

.field private mContext:Landroid/content/Context;

.field private mCurButtonNum:I

.field private mOrientation:I

.field public mPosition:I

.field mQBtnLocaleChange:[Ljava/lang/reflect/Method;

.field mQBtnSizeChange:[Ljava/lang/reflect/Method;

.field mQuickSettingButton:[Landroid/view/View;

.field private mlp:Landroid/widget/LinearLayout$LayoutParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, -0x2

    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    const-string v0, "systemui/quicksettingpanel"

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->TAG:Ljava/lang/String;

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mButtonCnt:I

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mlp:Landroid/widget/LinearLayout$LayoutParams;

    .line 113
    new-instance v0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel$1;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 58
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mContext:Landroid/content/Context;

    .line 59
    sget-boolean v0, Lcom/android/systemui/statusbar/StatusBar;->canStatusBarHide:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->isPhone:Z

    .line 61
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mlp:Landroid/widget/LinearLayout$LayoutParams;

    .line 62
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mlp:Landroid/widget/LinearLayout$LayoutParams;

    const/16 v1, 0x10

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 64
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->update()V

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mButtonCnt:I

    return v0
.end method

.method private disableQuickSettingButton([Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .parameter "str"

    .prologue
    .line 79
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 80
    aget-object v1, p1, v0

    const-string v2, "MobileData"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/android/systemui/statusbar/StatusBar;->isNetworkSupported:Z

    if-nez v1, :cond_1

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "not"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    .line 79
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 82
    :cond_1
    aget-object v1, p1, v0

    const-string v2, "WifiDisplay"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 86
    :cond_2
    return-object p1
.end method

.method private setViewWidth()I
    .locals 5

    .prologue
    .line 91
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->isPhone:Z

    if-eqz v3, :cond_2

    .line 92
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mContext:Landroid/content/Context;

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 94
    .local v0, defaultDisplay:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    .line 97
    .local v1, displayWidth:I
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->update()V

    .line 99
    iget v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCurButtonNum:I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mButtonCnt:I

    if-le v3, v4, :cond_0

    .line 100
    iget v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mButtonCnt:I

    iput v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCurButtonNum:I

    .line 103
    :cond_0
    iget v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCurButtonNum:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->getDividerWidth()I

    move-result v4

    mul-int/2addr v3, v4

    sub-int v3, v1, v3

    iget v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCurButtonNum:I

    div-int v2, v3, v4

    .line 105
    .local v2, iconWidth:I
    iget v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCurButtonNum:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_1

    add-int/lit8 v2, v2, 0x1

    .line 108
    .end local v0           #defaultDisplay:Landroid/view/Display;
    .end local v1           #displayWidth:I
    .end local v2           #iconWidth:I
    :cond_1
    :goto_0
    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a004a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    add-int/lit8 v3, v3, -0x18

    iget v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCurButtonNum:I

    div-int v2, v3, v4

    goto :goto_0
.end method

.method private update()V
    .locals 2

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCurButtonNum:I

    .line 69
    return-void
.end method


# virtual methods
.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 156
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->isPhone:Z

    if-eqz v1, :cond_0

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mOrientation:I

    if-eq v1, v2, :cond_0

    .line 158
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mOrientation:I

    .line 160
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mlp:Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->setViewWidth()I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 162
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 163
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mlp:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 162
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 166
    .end local v0           #i:I
    :cond_0
    return-void
.end method

.method public onFinishInflate()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 170
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 176
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const/high16 v8, 0x7f0d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->disableQuickSettingButton([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 179
    .local v0, QBtnAttr:[Ljava/lang/String;
    array-length v7, v0

    iput v7, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mButtonCnt:I

    .line 180
    iget v7, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mButtonCnt:I

    new-array v1, v7, [Ljava/lang/Class;

    .line 181
    .local v1, QBtnClass:[Ljava/lang/Class;
    iget v7, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mButtonCnt:I

    new-array v7, v7, [Landroid/view/View;

    iput-object v7, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mQuickSettingButton:[Landroid/view/View;

    .line 182
    iget v7, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mButtonCnt:I

    new-array v2, v7, [Ljava/lang/reflect/Constructor;

    .line 183
    .local v2, QBtnConstructor:[Ljava/lang/reflect/Constructor;
    iget v7, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mButtonCnt:I

    new-array v7, v7, [Ljava/lang/reflect/Method;

    iput-object v7, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mQBtnLocaleChange:[Ljava/lang/reflect/Method;

    .line 184
    iget v7, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mButtonCnt:I

    new-array v7, v7, [Ljava/lang/reflect/Method;

    iput-object v7, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mQBtnSizeChange:[Ljava/lang/reflect/Method;

    .line 185
    iget v7, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mButtonCnt:I

    new-array v7, v7, [Z

    iput-object v7, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->isExist:[Z

    .line 187
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mlp:Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->setViewWidth()I

    move-result v8

    iput v8, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 189
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    iget v7, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mButtonCnt:I

    if-ge v6, v7, :cond_1

    .line 191
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "com.android.systemui.statusbar.policy.quicksetting."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v0, v6

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "QuickSettingButton"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    aput-object v7, v1, v6

    .line 193
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->isExist:[Z

    const/4 v8, 0x1

    aput-boolean v8, v7, v6
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    :goto_1
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->isExist:[Z

    aget-boolean v7, v7, v6

    if-eqz v7, :cond_0

    .line 201
    :try_start_1
    aget-object v7, v1, v6

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v7

    aput-object v7, v2, v6

    .line 202
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mQuickSettingButton:[Landroid/view/View;

    aget-object v7, v2, v6

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mContext:Landroid/content/Context;

    aput-object v11, v9, v10

    invoke-virtual {v7, v9}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    aput-object v7, v8, v6

    .line 203
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mQuickSettingButton:[Landroid/view/View;

    aget-object v7, v7, v6

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/view/View;->setFocusable(Z)V

    .line 204
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mQuickSettingButton:[Landroid/view/View;

    aget-object v7, v7, v6

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mlp:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v7, v8}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 206
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mQBtnLocaleChange:[Ljava/lang/reflect/Method;

    aget-object v8, v1, v6

    const-string v9, "localeChanged"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    aput-object v8, v7, v6

    .line 207
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mQBtnSizeChange:[Ljava/lang/reflect/Method;

    aget-object v8, v1, v6

    const-string v9, "checkTextLength"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    aput-object v8, v7, v6
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_6

    .line 189
    :cond_0
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 194
    :catch_0
    move-exception v4

    .line 195
    .local v4, e1:Ljava/lang/ClassNotFoundException;
    const-string v7, "systemui/quicksettingpanel"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v9, v0, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "ClassNotFoundException"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->isExist:[Z

    aput-boolean v12, v7, v6

    goto :goto_1

    .line 209
    .end local v4           #e1:Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v3

    .line 210
    .local v3, e:Ljava/lang/NoSuchMethodException;
    const-string v7, "systemui/quicksettingpanel"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v9, v0, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "NoSuchMethodException"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 211
    .end local v3           #e:Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v3

    .line 212
    .local v3, e:Ljava/lang/SecurityException;
    const-string v7, "systemui/quicksettingpanel"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v9, v0, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "SecurityException"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 213
    .end local v3           #e:Ljava/lang/SecurityException;
    :catch_3
    move-exception v3

    .line 214
    .local v3, e:Ljava/lang/InstantiationException;
    const-string v7, "systemui/quicksettingpanel"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v9, v0, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "InstantiationException"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 215
    .end local v3           #e:Ljava/lang/InstantiationException;
    :catch_4
    move-exception v3

    .line 216
    .local v3, e:Ljava/lang/IllegalAccessException;
    const-string v7, "systemui/quicksettingpanel"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v9, v0, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "IllegalAccessException"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 217
    .end local v3           #e:Ljava/lang/IllegalAccessException;
    :catch_5
    move-exception v3

    .line 218
    .local v3, e:Ljava/lang/IllegalArgumentException;
    const-string v7, "systemui/quicksettingpanel"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v9, v0, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "IllegalArgumentException"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 219
    .end local v3           #e:Ljava/lang/IllegalArgumentException;
    :catch_6
    move-exception v3

    .line 220
    .local v3, e:Ljava/lang/reflect/InvocationTargetException;
    const-string v7, "systemui/quicksettingpanel"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v9, v0, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "InvocationTargetException"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 225
    .end local v3           #e:Ljava/lang/reflect/InvocationTargetException;
    :cond_1
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 226
    .local v5, filter:Landroid/content/IntentFilter;
    const-string v7, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v5, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 227
    const-string v7, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v5, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 228
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v7, v8, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 229
    invoke-virtual {p0, v12}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->prepareTranslationX(Z)V

    .line 230
    return-void
.end method

.method public prepareTranslationX(Z)V
    .locals 3
    .parameter "isExpanded"

    .prologue
    .line 233
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->update()V

    .line 234
    iget v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mButtonCnt:I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCurButtonNum:I

    sub-int/2addr v0, v1

    const/4 v1, 0x2

    if-le v0, v1, :cond_2

    .line 235
    const/high16 v0, 0x4020

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->setViewWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mPosition:I

    .line 239
    :goto_0
    iget v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mPosition:I

    if-gez v0, :cond_0

    .line 240
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mPosition:I

    .line 242
    :cond_0
    if-nez p1, :cond_1

    .line 243
    iget v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mPosition:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->setTranslationX(F)V

    .line 245
    :cond_1
    const-string v0, "systemui/quicksettingpanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepareTranslationX"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    return-void

    .line 237
    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mButtonCnt:I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mCurButtonNum:I

    sub-int/2addr v0, v1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->setViewWidth()I

    move-result v1

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mPosition:I

    goto :goto_0
.end method

.method public startScrollAnimation()V
    .locals 6

    .prologue
    .line 249
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 250
    .local v0, ContentAnim:Landroid/animation/AnimatorSet;
    const-string v2, "translationX"

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mPosition:I

    neg-int v5, v5

    int-to-float v5, v5

    aput v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    aput v5, v3, v4

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 251
    .local v1, quickSettingAnim:Landroid/animation/Animator;
    new-instance v2, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel$SineInOut70;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel$SineInOut70;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 252
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 253
    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 254
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 255
    return-void
.end method
