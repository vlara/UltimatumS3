.class public Lcom/android/settings/sleepmode/RepeatBtnGroup;
.super Landroid/widget/FrameLayout;
.source "RepeatBtnGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/sleepmode/RepeatBtnGroup$OnChangedListener;
    }
.end annotation


# static fields
.field private static final sDaysShortest:[I


# instance fields
.field mChangedListener:Lcom/android/settings/sleepmode/RepeatBtnGroup$OnChangedListener;

.field private mFri:Landroid/widget/ToggleButton;

.field private mMon:Landroid/widget/ToggleButton;

.field private mSat:Landroid/widget/ToggleButton;

.field private mSun:Landroid/widget/ToggleButton;

.field private mThu:Landroid/widget/ToggleButton;

.field private mTue:Landroid/widget/ToggleButton;

.field private mWed:Landroid/widget/ToggleButton;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/settings/sleepmode/RepeatBtnGroup;->sDaysShortest:[I

    return-void

    nop

    :array_a
    .array-data 0x4
        0x6et 0x0t 0x4t 0x1t
        0x6ft 0x0t 0x4t 0x1t
        0x70t 0x0t 0x4t 0x1t
        0x71t 0x0t 0x4t 0x1t
        0x72t 0x0t 0x4t 0x1t
        0x73t 0x0t 0x4t 0x1t
        0x74t 0x0t 0x4t 0x1t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 9

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Lcom/android/settings/sleepmode/RepeatBtnGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v4, 0x7f0400b7

    const/4 v5, 0x1

    invoke-virtual {v1, v4, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const v4, 0x7f0a0216

    invoke-virtual {p0, v4}, Lcom/android/settings/sleepmode/RepeatBtnGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ToggleButton;

    iput-object v4, p0, Lcom/android/settings/sleepmode/RepeatBtnGroup;->mSun:Landroid/widget/ToggleButton;

    const v4, 0x7f0a0217

    invoke-virtual {p0, v4}, Lcom/android/settings/sleepmode/RepeatBtnGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ToggleButton;

    iput-object v4, p0, Lcom/android/settings/sleepmode/RepeatBtnGroup;->mMon:Landroid/widget/ToggleButton;

    const v4, 0x7f0a0218

    invoke-virtual {p0, v4}, Lcom/android/settings/sleepmode/RepeatBtnGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ToggleButton;

    iput-object v4, p0, Lcom/android/settings/sleepmode/RepeatBtnGroup;->mTue:Landroid/widget/ToggleButton;

    const v4, 0x7f0a0219

    invoke-virtual {p0, v4}, Lcom/android/settings/sleepmode/RepeatBtnGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ToggleButton;

    iput-object v4, p0, Lcom/android/settings/sleepmode/RepeatBtnGroup;->mWed:Landroid/widget/ToggleButton;

    const v4, 0x7f0a021a

    invoke-virtual {p0, v4}, Lcom/android/settings/sleepmode/RepeatBtnGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ToggleButton;

    iput-object v4, p0, Lcom/android/settings/sleepmode/RepeatBtnGroup;->mThu:Landroid/widget/ToggleButton;

    const v4, 0x7f0a021b

    invoke-virtual {p0, v4}, Lcom/android/settings/sleepmode/RepeatBtnGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ToggleButton;

    iput-object v4, p0, Lcom/android/settings/sleepmode/RepeatBtnGroup;->mFri:Landroid/widget/ToggleButton;

    const v4, 0x7f0a021c

    invoke-virtual {p0, v4}, Lcom/android/settings/sleepmode/RepeatBtnGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ToggleButton;

    iput-object v4, p0, Lcom/android/settings/sleepmode/RepeatBtnGroup;->mSat:Landroid/widget/ToggleButton;

    new-instance v3, Lcom/android/settings/sleepmode/RepeatBtnGroup$1;

    invoke-direct {v3, p0}, Lcom/android/settings/sleepmode/RepeatBtnGroup$1;-><init>(Lcom/android/settings/sleepmode/RepeatBtnGroup;)V

    iget-object v4, p0, Lcom/android/settings/sleepmode/RepeatBtnGroup;->mSun:Landroid/widget/ToggleButton;

    invoke-virtual {v4, v3}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/android/settings/sleepmode/RepeatBtnGroup;->mMon:Landroid/widget/ToggleButton;

    invoke-virtual {v4, v3}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/android/settings/sleepmode/RepeatBtnGroup;->mTue:Landroid/widget/ToggleButton;

    invoke-virtual {v4, v3}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/android/settings/sleepmode/RepeatBtnGroup;->mWed:Landroid/widget/ToggleButton;

    invoke-virtual {v4, v3}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/android/settings/sleepmode/RepeatBtnGroup;->mThu:Landroid/widget/ToggleButton;

    invoke-virtual {v4, v3}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/android/settings/sleepmode/RepeatBtnGroup;->mFri:Landroid/widget/ToggleButton;

    invoke-virtual {v4, v3}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/android/settings/sleepmode/RepeatBtnGroup;->mSat:Landroid/widget/ToggleButton;

    invoke-virtual {v4, v3}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v0, 0x0

    :goto_90
    const/4 v4, 0x7

    if-ge v0, v4, :cond_159

    packed-switch v0, :pswitch_data_15a

    :goto_96
    add-int/lit8 v0, v0, 0x1

    goto :goto_90

    :pswitch_99
    iget-object v4, p0, Lcom/android/settings/sleepmode/RepeatBtnGroup;->mSun:Landroid/widget/ToggleButton;

    sget-object v5, Lcom/android/settings/sleepmode/RepeatBtnGroup;->sDaysShortest:[I

    aget v5, v5, v0

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ToggleButton;->setTextOn(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/settings/sleepmode/RepeatBtnGroup;->mSun:Landroid/widget/ToggleButton;

    sget-object v5, Lcom/android/settings/sleepmode/RepeatBtnGroup;->sDaysShortest:[I

    aget v5, v5, v0

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ToggleButton;->setTextOff(Ljava/lang/CharSequence;)V

    goto :goto_96

    :pswitch_b4
    iget-object v4, p0, Lcom/android/settings/sleepmode/RepeatBtnGroup;->mMon:Landroid/widget/ToggleButton;

    sget-object v5, Lcom/android/settings/sleepmode/RepeatBtnGroup;->sDaysShortest:[I

    aget v5, v5, v0

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ToggleButton;->setTextOn(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/settings/sleepmode/RepeatBtnGroup;->mMon:Landroid/widget/ToggleButton;

    sget-object v5, Lcom/android/settings/sleepmode/RepeatBtnGroup;->sDaysShortest:[I

    aget v5, v5, v0

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ToggleButton;->setTextOff(Ljava/lang/CharSequence;)V

    goto :goto_96

    :pswitch_cf
    iget-object v4, p0, Lcom/android/settings/sleepmode/RepeatBtnGroup;->mTue:Landroid/widget/ToggleButton;

    sget-object v5, Lcom/android/settings/sleepmode/RepeatBtnGroup;->sDaysShortest:[I

    aget v5, v5, v0

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ToggleButton;->setTextOn(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/settings/sleepmode/RepeatBtnGroup;->mTue:Landroid/widget/ToggleButton;

    sget-object v5, Lcom/android/settings/sleepmode/RepeatBtnGroup;->sDaysShortest:[I

    aget v5, v5, v0

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ToggleButton;->setTextOff(Ljava/lang/CharSequence;)V

    goto :goto_96

    :pswitch_ea
    iget-object v4, p0, Lcom/android/settings/sleepmode/RepeatBtnGroup;->mWed:Landroid/widget/ToggleButton;

    sget-object v5, Lcom/android/settings/sleepmode/RepeatBtnGroup;->sDaysShortest:[I

    aget v5, v5, v0

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ToggleButton;->setTextOn(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/settings/sleepmode/RepeatBtnGroup;->mWed:Landroid/widget/ToggleButton;

    sget-object v5, Lcom/android/settings/sleepmode/RepeatBtnGroup;->sDaysShortest:[I

    aget v5, v5, v0

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ToggleButton;->setTextOff(Ljava/lang/CharSequence;)V

    goto :goto_96

    :pswitch_105
    iget-object v4, p0, Lcom/android/settings/sleepmode/RepeatBtnGroup;->mThu:Landroid/widget/ToggleButton;

    sget-object v5, Lcom/android/settings/sleepmode/RepeatBtnGroup;->sDaysShortest:[I

    aget v5, v5, v0

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ToggleButton;->setTextOn(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/settings/sleepmode/RepeatBtnGroup;->mThu:Landroid/widget/ToggleButton;

    sget-object v5, Lcom/android/settings/sleepmode/RepeatBtnGroup;->sDaysShortest:[I

    aget v5, v5, v0

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ToggleButton;->setTextOff(Ljava/lang/CharSequence;)V

    goto/16 :goto_96

    :pswitch_121
    iget-object v4, p0, Lcom/android/settings/sleepmode/RepeatBtnGroup;->mFri:Landroid/widget/ToggleButton;

    sget-object v5, Lcom/android/settings/sleepmode/RepeatBtnGroup;->sDaysShortest:[I

    aget v5, v5, v0

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ToggleButton;->setTextOn(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/settings/sleepmode/RepeatBtnGroup;->mFri:Landroid/widget/ToggleButton;

    sget-object v5, Lcom/android/settings/sleepmode/RepeatBtnGroup;->sDaysShortest:[I

    aget v5, v5, v0

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ToggleButton;->setTextOff(Ljava/lang/CharSequence;)V

    goto/16 :goto_96

    :pswitch_13d
    iget-object v4, p0, Lcom/android/settings/sleepmode/RepeatBtnGroup;->mSat:Landroid/widget/ToggleButton;

    sget-object v5, Lcom/android/settings/sleepmode/RepeatBtnGroup;->sDaysShortest:[I

    aget v5, v5, v0

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ToggleButton;->setTextOn(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/settings/sleepmode/RepeatBtnGroup;->mSat:Landroid/widget/ToggleButton;

    sget-object v5, Lcom/android/settings/sleepmode/RepeatBtnGroup;->sDaysShortest:[I

    aget v5, v5, v0

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ToggleButton;->setTextOff(Ljava/lang/CharSequence;)V

    goto/16 :goto_96

    :cond_159
    return-void

    :pswitch_data_15a
    .packed-switch 0x0
        :pswitch_99
        :pswitch_b4
        :pswitch_cf
        :pswitch_ea
        :pswitch_105
        :pswitch_121
        :pswitch_13d
    .end packed-switch
.end method


# virtual methods
.method public getCheckDay()I
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/sleepmode/RepeatBtnGroup;->mSun:Landroid/widget/ToggleButton;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/android/settings/sleepmode/RepeatBtnGroup;->mSun:Landroid/widget/ToggleButton;

    invoke-virtual {v1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_10

    const/high16 v1, 0x100

    or-int/2addr v0, v1

    :cond_10
    iget-object v1, p0, Lcom/android/settings/sleepmode/RepeatBtnGroup;->mMon:Landroid/widget/ToggleButton;

    if-eqz v1, :cond_1f

    iget-object v1, p0, Lcom/android/settings/sleepmode/RepeatBtnGroup;->mMon:Landroid/widget/ToggleButton;

    invoke-virtual {v1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1f

    const/high16 v1, 0x10

    or-int/2addr v0, v1

    :cond_1f
    iget-object v1, p0, Lcom/android/settings/sleepmode/RepeatBtnGroup;->mTue:Landroid/widget/ToggleButton;

    if-eqz v1, :cond_2e

    iget-object v1, p0, Lcom/android/settings/sleepmode/RepeatBtnGroup;->mTue:Landroid/widget/ToggleButton;

    invoke-virtual {v1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2e

    const/high16 v1, 0x1

    or-int/2addr v0, v1

    :cond_2e
    iget-object v1, p0, Lcom/android/settings/sleepmode/RepeatBtnGroup;->mWed:Landroid/widget/ToggleButton;

    if-eqz v1, :cond_3c

    iget-object v1, p0, Lcom/android/settings/sleepmode/RepeatBtnGroup;->mWed:Landroid/widget/ToggleButton;

    invoke-virtual {v1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_3c

    or-int/lit16 v0, v0, 0x1000

    :cond_3c
    iget-object v1, p0, Lcom/android/settings/sleepmode/RepeatBtnGroup;->mThu:Landroid/widget/ToggleButton;

    if-eqz v1, :cond_4a

    iget-object v1, p0, Lcom/android/settings/sleepmode/RepeatBtnGroup;->mThu:Landroid/widget/ToggleButton;

    invoke-virtual {v1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_4a

    or-int/lit16 v0, v0, 0x100

    :cond_4a
    iget-object v1, p0, Lcom/android/settings/sleepmode/RepeatBtnGroup;->mFri:Landroid/widget/ToggleButton;

    if-eqz v1, :cond_58

    iget-object v1, p0, Lcom/android/settings/sleepmode/RepeatBtnGroup;->mFri:Landroid/widget/ToggleButton;

    invoke-virtual {v1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_58

    or-int/lit8 v0, v0, 0x10

    :cond_58
    iget-object v1, p0, Lcom/android/settings/sleepmode/RepeatBtnGroup;->mSat:Landroid/widget/ToggleButton;

    if-eqz v1, :cond_66

    iget-object v1, p0, Lcom/android/settings/sleepmode/RepeatBtnGroup;->mSat:Landroid/widget/ToggleButton;

    invoke-virtual {v1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_66

    or-int/lit8 v0, v0, 0x1

    :cond_66
    return v0
.end method

.method public setCheckDay(I)V
    .registers 8

    const/high16 v5, 0x100

    const/high16 v4, 0x10

    const/high16 v1, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/settings/sleepmode/RepeatBtnGroup;->mSun:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_15

    and-int v0, p1, v5

    if-ne v0, v5, :cond_6a

    iget-object v0, p0, Lcom/android/settings/sleepmode/RepeatBtnGroup;->mSun:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    :cond_15
    :goto_15
    iget-object v0, p0, Lcom/android/settings/sleepmode/RepeatBtnGroup;->mMon:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_22

    and-int v0, p1, v4

    if-ne v0, v4, :cond_70

    iget-object v0, p0, Lcom/android/settings/sleepmode/RepeatBtnGroup;->mMon:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    :cond_22
    :goto_22
    iget-object v0, p0, Lcom/android/settings/sleepmode/RepeatBtnGroup;->mTue:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_2f

    and-int v0, p1, v1

    if-ne v0, v1, :cond_76

    iget-object v0, p0, Lcom/android/settings/sleepmode/RepeatBtnGroup;->mTue:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    :cond_2f
    :goto_2f
    iget-object v0, p0, Lcom/android/settings/sleepmode/RepeatBtnGroup;->mWed:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_3e

    and-int/lit16 v0, p1, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_7c

    iget-object v0, p0, Lcom/android/settings/sleepmode/RepeatBtnGroup;->mWed:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    :cond_3e
    :goto_3e
    iget-object v0, p0, Lcom/android/settings/sleepmode/RepeatBtnGroup;->mThu:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_4d

    and-int/lit16 v0, p1, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_82

    iget-object v0, p0, Lcom/android/settings/sleepmode/RepeatBtnGroup;->mThu:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    :cond_4d
    :goto_4d
    iget-object v0, p0, Lcom/android/settings/sleepmode/RepeatBtnGroup;->mFri:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_5c

    and-int/lit8 v0, p1, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_88

    iget-object v0, p0, Lcom/android/settings/sleepmode/RepeatBtnGroup;->mFri:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    :cond_5c
    :goto_5c
    iget-object v0, p0, Lcom/android/settings/sleepmode/RepeatBtnGroup;->mSat:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_69

    and-int/lit8 v0, p1, 0x1

    if-ne v0, v2, :cond_8e

    iget-object v0, p0, Lcom/android/settings/sleepmode/RepeatBtnGroup;->mSat:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    :cond_69
    :goto_69
    return-void

    :cond_6a
    iget-object v0, p0, Lcom/android/settings/sleepmode/RepeatBtnGroup;->mSun:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_15

    :cond_70
    iget-object v0, p0, Lcom/android/settings/sleepmode/RepeatBtnGroup;->mMon:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_22

    :cond_76
    iget-object v0, p0, Lcom/android/settings/sleepmode/RepeatBtnGroup;->mTue:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_2f

    :cond_7c
    iget-object v0, p0, Lcom/android/settings/sleepmode/RepeatBtnGroup;->mWed:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_3e

    :cond_82
    iget-object v0, p0, Lcom/android/settings/sleepmode/RepeatBtnGroup;->mThu:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_4d

    :cond_88
    iget-object v0, p0, Lcom/android/settings/sleepmode/RepeatBtnGroup;->mFri:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_5c

    :cond_8e
    iget-object v0, p0, Lcom/android/settings/sleepmode/RepeatBtnGroup;->mSat:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_69
.end method
