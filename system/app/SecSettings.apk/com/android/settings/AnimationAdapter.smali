.class public Lcom/android/settings/AnimationAdapter;
.super Ljava/lang/Object;
.source "AnimationAdapter.java"


# instance fields
.field mActivity:Landroid/app/Activity;

.field private mAnimationEnabled:I

.field private final mAnimationHandler:Landroid/os/Handler;

.field public mAnimationType:I

.field private mDummyView:Landroid/view/View;

.field private mSelectedView:Landroid/view/View;

.field private mTransitionScale:F

.field private mViewDelay:J

.field private mViewDuration:J

.field private mViewFadeType:I

.field private mViewGlobalPosition:Landroid/graphics/Rect;

.field private mViewHeight:I

.field private mViewScaleFrom:F

.field private mViewScaleTo:F

.field private mViewStartOffset:I

.field private mViewTranslateFrom:F

.field private mViewTranslateTo:F

.field private mWindow:Landroid/view/View;

.field private mWindowDelay:J

.field private mWindowDuration:J

.field private mWindowFadeType:I

.field private mWindowScaleFrom:F

.field private mWindowScaleTo:F

.field private mWindowStartOffset:I

.field private mWindowTranslateFrom:F

.field private mWindowTranslateTo:F


# direct methods
.method private constructor <init>()V
    .registers 7

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/high16 v0, 0x3f80

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/android/settings/AnimationAdapter;->mAnimationType:I

    iput-object v3, p0, Lcom/android/settings/AnimationAdapter;->mActivity:Landroid/app/Activity;

    iput v1, p0, Lcom/android/settings/AnimationAdapter;->mAnimationEnabled:I

    iput v0, p0, Lcom/android/settings/AnimationAdapter;->mTransitionScale:F

    iput-wide v4, p0, Lcom/android/settings/AnimationAdapter;->mWindowDuration:J

    iput-wide v4, p0, Lcom/android/settings/AnimationAdapter;->mWindowDelay:J

    iput v0, p0, Lcom/android/settings/AnimationAdapter;->mWindowScaleFrom:F

    iput v0, p0, Lcom/android/settings/AnimationAdapter;->mWindowScaleTo:F

    iput v2, p0, Lcom/android/settings/AnimationAdapter;->mWindowTranslateFrom:F

    iput v2, p0, Lcom/android/settings/AnimationAdapter;->mWindowTranslateTo:F

    iput v1, p0, Lcom/android/settings/AnimationAdapter;->mWindowFadeType:I

    iput v1, p0, Lcom/android/settings/AnimationAdapter;->mWindowStartOffset:I

    iput-object v3, p0, Lcom/android/settings/AnimationAdapter;->mWindow:Landroid/view/View;

    iput-wide v4, p0, Lcom/android/settings/AnimationAdapter;->mViewDuration:J

    iput-wide v4, p0, Lcom/android/settings/AnimationAdapter;->mViewDelay:J

    iput v0, p0, Lcom/android/settings/AnimationAdapter;->mViewScaleFrom:F

    iput v0, p0, Lcom/android/settings/AnimationAdapter;->mViewScaleTo:F

    iput v2, p0, Lcom/android/settings/AnimationAdapter;->mViewTranslateFrom:F

    iput v2, p0, Lcom/android/settings/AnimationAdapter;->mViewTranslateTo:F

    iput v1, p0, Lcom/android/settings/AnimationAdapter;->mViewFadeType:I

    iput v1, p0, Lcom/android/settings/AnimationAdapter;->mViewStartOffset:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/settings/AnimationAdapter;->mViewGlobalPosition:Landroid/graphics/Rect;

    iput v1, p0, Lcom/android/settings/AnimationAdapter;->mViewHeight:I

    iput-object v3, p0, Lcom/android/settings/AnimationAdapter;->mSelectedView:Landroid/view/View;

    iput-object v3, p0, Lcom/android/settings/AnimationAdapter;->mDummyView:Landroid/view/View;

    new-instance v0, Lcom/android/settings/AnimationAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/settings/AnimationAdapter$1;-><init>(Lcom/android/settings/AnimationAdapter;)V

    iput-object v0, p0, Lcom/android/settings/AnimationAdapter;->mAnimationHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .registers 8

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/high16 v0, 0x3f80

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/android/settings/AnimationAdapter;->mAnimationType:I

    iput-object v3, p0, Lcom/android/settings/AnimationAdapter;->mActivity:Landroid/app/Activity;

    iput v1, p0, Lcom/android/settings/AnimationAdapter;->mAnimationEnabled:I

    iput v0, p0, Lcom/android/settings/AnimationAdapter;->mTransitionScale:F

    iput-wide v4, p0, Lcom/android/settings/AnimationAdapter;->mWindowDuration:J

    iput-wide v4, p0, Lcom/android/settings/AnimationAdapter;->mWindowDelay:J

    iput v0, p0, Lcom/android/settings/AnimationAdapter;->mWindowScaleFrom:F

    iput v0, p0, Lcom/android/settings/AnimationAdapter;->mWindowScaleTo:F

    iput v2, p0, Lcom/android/settings/AnimationAdapter;->mWindowTranslateFrom:F

    iput v2, p0, Lcom/android/settings/AnimationAdapter;->mWindowTranslateTo:F

    iput v1, p0, Lcom/android/settings/AnimationAdapter;->mWindowFadeType:I

    iput v1, p0, Lcom/android/settings/AnimationAdapter;->mWindowStartOffset:I

    iput-object v3, p0, Lcom/android/settings/AnimationAdapter;->mWindow:Landroid/view/View;

    iput-wide v4, p0, Lcom/android/settings/AnimationAdapter;->mViewDuration:J

    iput-wide v4, p0, Lcom/android/settings/AnimationAdapter;->mViewDelay:J

    iput v0, p0, Lcom/android/settings/AnimationAdapter;->mViewScaleFrom:F

    iput v0, p0, Lcom/android/settings/AnimationAdapter;->mViewScaleTo:F

    iput v2, p0, Lcom/android/settings/AnimationAdapter;->mViewTranslateFrom:F

    iput v2, p0, Lcom/android/settings/AnimationAdapter;->mViewTranslateTo:F

    iput v1, p0, Lcom/android/settings/AnimationAdapter;->mViewFadeType:I

    iput v1, p0, Lcom/android/settings/AnimationAdapter;->mViewStartOffset:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/settings/AnimationAdapter;->mViewGlobalPosition:Landroid/graphics/Rect;

    iput v1, p0, Lcom/android/settings/AnimationAdapter;->mViewHeight:I

    iput-object v3, p0, Lcom/android/settings/AnimationAdapter;->mSelectedView:Landroid/view/View;

    iput-object v3, p0, Lcom/android/settings/AnimationAdapter;->mDummyView:Landroid/view/View;

    new-instance v0, Lcom/android/settings/AnimationAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/settings/AnimationAdapter$1;-><init>(Lcom/android/settings/AnimationAdapter;)V

    iput-object v0, p0, Lcom/android/settings/AnimationAdapter;->mAnimationHandler:Landroid/os/Handler;

    if-nez p1, :cond_52

    const-string v0, "AnimationLoader"

    const-string v1, "Construct : Activity is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_51
    return-void

    :cond_52
    iput-object p1, p0, Lcom/android/settings/AnimationAdapter;->mActivity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/android/settings/AnimationAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/AnimationAdapter;->mWindow:Landroid/view/View;

    goto :goto_51
.end method

.method static synthetic access$000(Lcom/android/settings/AnimationAdapter;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/settings/AnimationAdapter;->startAnimation()Z

    move-result v0

    return v0
.end method

.method private getAlphaAnimation(IJ)Landroid/view/animation/AlphaAnimation;
    .registers 8

    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_f

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    :goto_b
    invoke-virtual {v0, p2, p3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    return-object v0

    :cond_f
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v3, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    goto :goto_b
.end method

.method private getAlphaAnimation(IJI)Landroid/view/animation/AlphaAnimation;
    .registers 9

    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_13

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    :goto_b
    invoke-virtual {v0, p2, p3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    int-to-long v1, p4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    return-object v0

    :cond_13
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v3, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    goto :goto_b
.end method

.method private getDummyViewFromView(Landroid/view/View;)Landroid/view/View;
    .registers 6

    const/4 v3, 0x1

    const/4 v2, -0x2

    if-nez p1, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/settings/AnimationAdapter;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    invoke-virtual {p1, v3}, Landroid/view/View;->buildDrawingCache(Z)V

    invoke-virtual {p1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/android/settings/AnimationAdapter;->mViewHeight:I

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/settings/AnimationAdapter;->mViewGlobalPosition:Landroid/graphics/Rect;

    new-instance v1, Landroid/app/ActionBar$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/android/settings/AnimationAdapter;->mViewGlobalPosition:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    goto :goto_5
.end method

.method private getScaleAnimation(FFJ)Landroid/view/animation/ScaleAnimation;
    .registers 14

    const/4 v5, 0x2

    const/high16 v6, 0x3f00

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v1, p1

    move v2, p2

    move v3, p1

    move v4, p2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    invoke-virtual {v0, p3, p4}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    return-object v0
.end method

.method private getTranslateAnimation(IFFJ)Landroid/view/animation/TranslateAnimation;
    .registers 15

    const/4 v2, 0x0

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    move v1, p1

    move v3, p1

    move v4, v2

    move v5, p1

    move v6, p2

    move v7, p1

    move v8, p3

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    invoke-virtual {v0, p4, p5}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    return-object v0
.end method

.method private initValues(I)V
    .registers 11

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/high16 v4, 0x3f80

    iput p1, p0, Lcom/android/settings/AnimationAdapter;->mAnimationType:I

    :try_start_8
    const-string v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->getAnimationScale(I)F

    move-result v2

    iput v2, p0, Lcom/android/settings/AnimationAdapter;->mTransitionScale:F
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_19} :catch_6e

    :goto_19
    const-wide/16 v2, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/settings/AnimationAdapter;->setWindowDuration(J)Lcom/android/settings/AnimationAdapter;

    const-wide/16 v2, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/settings/AnimationAdapter;->setViewDuration(J)Lcom/android/settings/AnimationAdapter;

    invoke-direct {p0, v6}, Lcom/android/settings/AnimationAdapter;->setWindowStartOffset(I)Lcom/android/settings/AnimationAdapter;

    invoke-direct {p0, v6}, Lcom/android/settings/AnimationAdapter;->setViewStartOffset(I)Lcom/android/settings/AnimationAdapter;

    invoke-direct {p0, v4, v4}, Lcom/android/settings/AnimationAdapter;->setWindowScale(FF)Lcom/android/settings/AnimationAdapter;

    invoke-direct {p0, v4, v4}, Lcom/android/settings/AnimationAdapter;->setViewScale(FF)Lcom/android/settings/AnimationAdapter;

    invoke-direct {p0, v5, v5}, Lcom/android/settings/AnimationAdapter;->setWindowTranslate(FF)Lcom/android/settings/AnimationAdapter;

    invoke-direct {p0, v5, v5}, Lcom/android/settings/AnimationAdapter;->setViewTranslate(FF)Lcom/android/settings/AnimationAdapter;

    invoke-direct {p0, v6}, Lcom/android/settings/AnimationAdapter;->setWindowFadeType(I)Lcom/android/settings/AnimationAdapter;

    invoke-direct {p0, v6}, Lcom/android/settings/AnimationAdapter;->setViewFadeType(I)Lcom/android/settings/AnimationAdapter;

    if-ne p1, v7, :cond_77

    const/high16 v2, 0x4355

    iget v3, p0, Lcom/android/settings/AnimationAdapter;->mTransitionScale:F

    mul-float/2addr v2, v3

    float-to-long v2, v2

    invoke-direct {p0, v2, v3}, Lcom/android/settings/AnimationAdapter;->setWindowDuration(J)Lcom/android/settings/AnimationAdapter;

    const v2, 0x3f8ccccd

    invoke-direct {p0, v4, v2}, Lcom/android/settings/AnimationAdapter;->setWindowScale(FF)Lcom/android/settings/AnimationAdapter;

    invoke-direct {p0, v8}, Lcom/android/settings/AnimationAdapter;->setWindowFadeType(I)Lcom/android/settings/AnimationAdapter;

    const v2, 0x3f866666

    invoke-direct {p0, v4, v2}, Lcom/android/settings/AnimationAdapter;->setViewScale(FF)Lcom/android/settings/AnimationAdapter;

    const/high16 v2, 0x42c8

    iget v3, p0, Lcom/android/settings/AnimationAdapter;->mTransitionScale:F

    mul-float/2addr v2, v3

    float-to-long v2, v2

    invoke-direct {p0, v2, v3}, Lcom/android/settings/AnimationAdapter;->setViewDuration(J)Lcom/android/settings/AnimationAdapter;

    const/high16 v2, 0x42f0

    iget v3, p0, Lcom/android/settings/AnimationAdapter;->mTransitionScale:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-direct {p0, v2}, Lcom/android/settings/AnimationAdapter;->setViewStartOffset(I)Lcom/android/settings/AnimationAdapter;

    invoke-direct {p0, v8}, Lcom/android/settings/AnimationAdapter;->setViewFadeType(I)Lcom/android/settings/AnimationAdapter;

    :cond_6a
    :goto_6a
    invoke-virtual {p0, p1}, Lcom/android/settings/AnimationAdapter;->setOverridePendingTransition(I)Z

    return-void

    :catch_6e
    move-exception v0

    const-string v2, "AnimationLoader"

    const-string v3, "can\'t access WindowManger for getAnimationScale"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19

    :cond_77
    if-ne p1, v8, :cond_6a

    const/high16 v2, 0x4348

    iget v3, p0, Lcom/android/settings/AnimationAdapter;->mTransitionScale:F

    mul-float/2addr v2, v3

    float-to-long v2, v2

    invoke-direct {p0, v2, v3}, Lcom/android/settings/AnimationAdapter;->setWindowDuration(J)Lcom/android/settings/AnimationAdapter;

    invoke-direct {p0, v7}, Lcom/android/settings/AnimationAdapter;->setWindowFadeType(I)Lcom/android/settings/AnimationAdapter;

    const/high16 v2, 0x4348

    iget v3, p0, Lcom/android/settings/AnimationAdapter;->mTransitionScale:F

    mul-float/2addr v2, v3

    float-to-long v2, v2

    invoke-direct {p0, v2, v3}, Lcom/android/settings/AnimationAdapter;->setViewDuration(J)Lcom/android/settings/AnimationAdapter;

    const/high16 v2, 0x4234

    iget v3, p0, Lcom/android/settings/AnimationAdapter;->mTransitionScale:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-direct {p0, v2}, Lcom/android/settings/AnimationAdapter;->setViewStartOffset(I)Lcom/android/settings/AnimationAdapter;

    invoke-direct {p0, v7}, Lcom/android/settings/AnimationAdapter;->setViewFadeType(I)Lcom/android/settings/AnimationAdapter;

    goto :goto_6a
.end method

.method private setViewDuration(J)Lcom/android/settings/AnimationAdapter;
    .registers 3

    iput-wide p1, p0, Lcom/android/settings/AnimationAdapter;->mViewDuration:J

    return-object p0
.end method

.method private setViewFadeType(I)Lcom/android/settings/AnimationAdapter;
    .registers 2

    iput p1, p0, Lcom/android/settings/AnimationAdapter;->mViewFadeType:I

    return-object p0
.end method

.method private setViewScale(FF)Lcom/android/settings/AnimationAdapter;
    .registers 3

    iput p1, p0, Lcom/android/settings/AnimationAdapter;->mViewScaleFrom:F

    iput p2, p0, Lcom/android/settings/AnimationAdapter;->mViewScaleTo:F

    return-object p0
.end method

.method private setViewStartOffset(I)Lcom/android/settings/AnimationAdapter;
    .registers 2

    iput p1, p0, Lcom/android/settings/AnimationAdapter;->mViewStartOffset:I

    return-object p0
.end method

.method private setViewTranslate(FF)Lcom/android/settings/AnimationAdapter;
    .registers 3

    iput p1, p0, Lcom/android/settings/AnimationAdapter;->mViewTranslateFrom:F

    iput p2, p0, Lcom/android/settings/AnimationAdapter;->mViewTranslateTo:F

    return-object p0
.end method

.method private setWindowDuration(J)Lcom/android/settings/AnimationAdapter;
    .registers 3

    iput-wide p1, p0, Lcom/android/settings/AnimationAdapter;->mWindowDuration:J

    return-object p0
.end method

.method private setWindowFadeType(I)Lcom/android/settings/AnimationAdapter;
    .registers 2

    iput p1, p0, Lcom/android/settings/AnimationAdapter;->mWindowFadeType:I

    return-object p0
.end method

.method private setWindowScale(FF)Lcom/android/settings/AnimationAdapter;
    .registers 3

    iput p1, p0, Lcom/android/settings/AnimationAdapter;->mWindowScaleFrom:F

    iput p2, p0, Lcom/android/settings/AnimationAdapter;->mWindowScaleTo:F

    return-object p0
.end method

.method private setWindowStartOffset(I)Lcom/android/settings/AnimationAdapter;
    .registers 2

    iput p1, p0, Lcom/android/settings/AnimationAdapter;->mWindowStartOffset:I

    return-object p0
.end method

.method private setWindowTranslate(FF)Lcom/android/settings/AnimationAdapter;
    .registers 3

    iput p1, p0, Lcom/android/settings/AnimationAdapter;->mWindowTranslateFrom:F

    iput p2, p0, Lcom/android/settings/AnimationAdapter;->mWindowTranslateTo:F

    return-object p0
.end method

.method private startAnimation()Z
    .registers 14

    const/high16 v12, 0x3f80

    const/4 v6, 0x0

    const/4 v1, 0x1

    const/4 v11, 0x0

    iget v0, p0, Lcom/android/settings/AnimationAdapter;->mAnimationEnabled:I

    if-eq v0, v1, :cond_d

    iget v0, p0, Lcom/android/settings/AnimationAdapter;->mAnimationEnabled:I

    if-nez v0, :cond_6f

    :cond_d
    iget-object v0, p0, Lcom/android/settings/AnimationAdapter;->mWindow:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    new-instance v9, Landroid/view/animation/AnimationSet;

    invoke-direct {v9, v11}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iget v0, p0, Lcom/android/settings/AnimationAdapter;->mWindowTranslateFrom:F

    cmpl-float v0, v0, v6

    if-nez v0, :cond_23

    iget v0, p0, Lcom/android/settings/AnimationAdapter;->mWindowTranslateTo:F

    cmpl-float v0, v0, v6

    if-eqz v0, :cond_31

    :cond_23
    iget v2, p0, Lcom/android/settings/AnimationAdapter;->mWindowTranslateFrom:F

    iget v3, p0, Lcom/android/settings/AnimationAdapter;->mWindowTranslateTo:F

    iget-wide v4, p0, Lcom/android/settings/AnimationAdapter;->mWindowDuration:J

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/AnimationAdapter;->getTranslateAnimation(IFFJ)Landroid/view/animation/TranslateAnimation;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    :cond_31
    iget v0, p0, Lcom/android/settings/AnimationAdapter;->mWindowScaleFrom:F

    cmpl-float v0, v0, v12

    if-nez v0, :cond_3d

    iget v0, p0, Lcom/android/settings/AnimationAdapter;->mWindowScaleTo:F

    cmpl-float v0, v0, v12

    if-eqz v0, :cond_4a

    :cond_3d
    iget v0, p0, Lcom/android/settings/AnimationAdapter;->mWindowScaleFrom:F

    iget v2, p0, Lcom/android/settings/AnimationAdapter;->mWindowScaleTo:F

    iget-wide v3, p0, Lcom/android/settings/AnimationAdapter;->mWindowDuration:J

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/android/settings/AnimationAdapter;->getScaleAnimation(FFJ)Landroid/view/animation/ScaleAnimation;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    :cond_4a
    iget v0, p0, Lcom/android/settings/AnimationAdapter;->mWindowFadeType:I

    if-eqz v0, :cond_59

    iget v0, p0, Lcom/android/settings/AnimationAdapter;->mWindowFadeType:I

    iget-wide v2, p0, Lcom/android/settings/AnimationAdapter;->mWindowDuration:J

    invoke-direct {p0, v0, v2, v3}, Lcom/android/settings/AnimationAdapter;->getAlphaAnimation(IJ)Landroid/view/animation/AlphaAnimation;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    :cond_59
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget v0, p0, Lcom/android/settings/AnimationAdapter;->mWindowStartOffset:I

    int-to-long v2, v0

    invoke-virtual {v9, v2, v3}, Landroid/view/animation/AnimationSet;->setStartOffset(J)V

    invoke-virtual {v9, v1}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    iget-object v0, p0, Lcom/android/settings/AnimationAdapter;->mWindow:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    :cond_6f
    iget v0, p0, Lcom/android/settings/AnimationAdapter;->mAnimationEnabled:I

    if-ne v0, v1, :cond_a0

    iget-object v0, p0, Lcom/android/settings/AnimationAdapter;->mSelectedView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/settings/AnimationAdapter;->getDummyViewFromView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/AnimationAdapter;->mDummyView:Landroid/view/View;

    iget v0, p0, Lcom/android/settings/AnimationAdapter;->mViewHeight:I

    iget-object v2, p0, Lcom/android/settings/AnimationAdapter;->mViewGlobalPosition:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    sub-int/2addr v0, v2

    if-gtz v0, :cond_99

    iget-object v0, p0, Lcom/android/settings/AnimationAdapter;->mWindow:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v2, p0, Lcom/android/settings/AnimationAdapter;->mViewGlobalPosition:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/android/settings/AnimationAdapter;->mViewGlobalPosition:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    add-int/2addr v2, v3

    if-ge v0, v2, :cond_a1

    :cond_99
    const-string v0, "AnimationLoader"

    const-string v1, "WindowAnimation only play."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a0
    :goto_a0
    return v11

    :cond_a1
    iget-object v0, p0, Lcom/android/settings/AnimationAdapter;->mDummyView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object v0, p0, Lcom/android/settings/AnimationAdapter;->mSelectedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget v0, p0, Lcom/android/settings/AnimationAdapter;->mAnimationType:I

    if-ne v0, v1, :cond_d3

    iget-object v0, p0, Lcom/android/settings/AnimationAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/settings/AnimationAdapter;->mDummyView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/settings/AnimationAdapter;->mDummyView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/settings/AnimationAdapter;->mViewGlobalPosition:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/android/settings/AnimationAdapter;->mViewGlobalPosition:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v2, v3, v11, v11}, Landroid/view/View;->setPadding(IIII)V

    iget-object v0, p0, Lcom/android/settings/AnimationAdapter;->mSelectedView:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_d3
    new-instance v8, Landroid/view/animation/AnimationSet;

    invoke-direct {v8, v11}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iget v0, p0, Lcom/android/settings/AnimationAdapter;->mViewTranslateFrom:F

    cmpl-float v0, v0, v6

    if-nez v0, :cond_e4

    iget v0, p0, Lcom/android/settings/AnimationAdapter;->mViewTranslateTo:F

    cmpl-float v0, v0, v6

    if-eqz v0, :cond_f3

    :cond_e4
    iget v4, p0, Lcom/android/settings/AnimationAdapter;->mViewTranslateFrom:F

    iget v5, p0, Lcom/android/settings/AnimationAdapter;->mViewTranslateTo:F

    iget-wide v6, p0, Lcom/android/settings/AnimationAdapter;->mViewDuration:J

    move-object v2, p0

    move v3, v11

    invoke-direct/range {v2 .. v7}, Lcom/android/settings/AnimationAdapter;->getTranslateAnimation(IFFJ)Landroid/view/animation/TranslateAnimation;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    :cond_f3
    iget v0, p0, Lcom/android/settings/AnimationAdapter;->mViewScaleFrom:F

    cmpl-float v0, v0, v12

    if-nez v0, :cond_ff

    iget v0, p0, Lcom/android/settings/AnimationAdapter;->mViewScaleTo:F

    cmpl-float v0, v0, v12

    if-eqz v0, :cond_10c

    :cond_ff
    iget v0, p0, Lcom/android/settings/AnimationAdapter;->mViewScaleFrom:F

    iget v2, p0, Lcom/android/settings/AnimationAdapter;->mViewScaleTo:F

    iget-wide v3, p0, Lcom/android/settings/AnimationAdapter;->mViewDuration:J

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/android/settings/AnimationAdapter;->getScaleAnimation(FFJ)Landroid/view/animation/ScaleAnimation;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    :cond_10c
    iget v0, p0, Lcom/android/settings/AnimationAdapter;->mViewFadeType:I

    if-eqz v0, :cond_11f

    iget v0, p0, Lcom/android/settings/AnimationAdapter;->mAnimationType:I

    if-ne v0, v1, :cond_15f

    iget v0, p0, Lcom/android/settings/AnimationAdapter;->mViewFadeType:I

    iget-wide v2, p0, Lcom/android/settings/AnimationAdapter;->mViewDuration:J

    invoke-direct {p0, v0, v2, v3}, Lcom/android/settings/AnimationAdapter;->getAlphaAnimation(IJ)Landroid/view/animation/AlphaAnimation;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    :cond_11f
    :goto_11f
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v8, v0}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget v0, p0, Lcom/android/settings/AnimationAdapter;->mViewStartOffset:I

    int-to-long v2, v0

    invoke-virtual {v8, v2, v3}, Landroid/view/animation/AnimationSet;->setStartOffset(J)V

    invoke-virtual {v8, v1}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    iget v0, p0, Lcom/android/settings/AnimationAdapter;->mAnimationType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_174

    iget-object v0, p0, Lcom/android/settings/AnimationAdapter;->mSelectedView:Landroid/view/View;

    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    const/4 v10, 0x1

    :goto_13b
    iget-object v0, p0, Lcom/android/settings/AnimationAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v10, v0, :cond_16d

    iget-object v0, p0, Lcom/android/settings/AnimationAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->removeViewAt(I)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_13b

    :cond_15f
    iget v0, p0, Lcom/android/settings/AnimationAdapter;->mViewFadeType:I

    iget-wide v2, p0, Lcom/android/settings/AnimationAdapter;->mViewDuration:J

    iget v4, p0, Lcom/android/settings/AnimationAdapter;->mViewStartOffset:I

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/android/settings/AnimationAdapter;->getAlphaAnimation(IJI)Landroid/view/animation/AlphaAnimation;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto :goto_11f

    :cond_16d
    iget-object v0, p0, Lcom/android/settings/AnimationAdapter;->mSelectedView:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_a0

    :cond_174
    iget-object v0, p0, Lcom/android/settings/AnimationAdapter;->mDummyView:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_a0
.end method


# virtual methods
.method public setAnimation(Landroid/view/View;I)Lcom/android/settings/AnimationAdapter;
    .registers 5

    const/4 v1, 0x0

    if-eqz p1, :cond_15

    iget-object v0, p0, Lcom/android/settings/AnimationAdapter;->mSelectedView:Landroid/view/View;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/settings/AnimationAdapter;->mSelectedView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_c
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/AnimationAdapter;->mAnimationEnabled:I

    iput-object p1, p0, Lcom/android/settings/AnimationAdapter;->mSelectedView:Landroid/view/View;

    :goto_11
    invoke-direct {p0, p2}, Lcom/android/settings/AnimationAdapter;->initValues(I)V

    return-object p0

    :cond_15
    iput v1, p0, Lcom/android/settings/AnimationAdapter;->mAnimationEnabled:I

    goto :goto_11
.end method

.method public setOverridePendingTransition(I)Z
    .registers 6

    const/4 v3, 0x1

    if-ne p1, v3, :cond_e

    iget-object v0, p0, Lcom/android/settings/AnimationAdapter;->mActivity:Landroid/app/Activity;

    const/high16 v1, 0x7f05

    const v2, 0x7f050001

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_d
    :goto_d
    return v3

    :cond_e
    const/4 v0, 0x2

    if-ne p1, v0, :cond_d

    iget-object v0, p0, Lcom/android/settings/AnimationAdapter;->mActivity:Landroid/app/Activity;

    const v1, 0x7f050002

    const v2, 0x7f050003

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_d
.end method

.method public start()Z
    .registers 4

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/settings/AnimationAdapter;->mAnimationType:I

    if-nez v1, :cond_6

    :goto_5
    return v0

    :cond_6
    iget-object v1, p0, Lcom/android/settings/AnimationAdapter;->mAnimationHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/settings/AnimationAdapter;->mAnimationHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 v0, 0x1

    goto :goto_5
.end method
