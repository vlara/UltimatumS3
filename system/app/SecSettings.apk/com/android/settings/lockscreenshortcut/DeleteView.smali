.class public Lcom/android/settings/lockscreenshortcut/DeleteView;
.super Landroid/widget/ImageView;
.source "DeleteView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field final kLidUpHeight:I

.field private mAngleDirection:F

.field mCurrentAnimator:Landroid/animation/Animator;

.field private mIsAnimating:Z

.field private mIsLandscape:Z

.field private mIsOnDeleting:Z

.field private mIsTrashCanShakeMode:Z

.field private mLidAngle:F

.field private mLidOffsetY:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPreviousLidShakeValue:F

.field private mTrashBinOnly:Landroid/graphics/Bitmap;

.field private mTrashCan:Landroid/graphics/Bitmap;

.field private mTrashCanAlpha:F

.field private mTrashCanFill:Landroid/graphics/Bitmap;

.field private mTrashCanFillAlpha:F

.field private mTrashIcon:Landroid/graphics/drawable/Drawable;

.field private mTrashLidOnly:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-boolean v1, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mIsAnimating:Z

    iput-boolean v1, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mIsOnDeleting:Z

    iput-boolean v1, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mIsLandscape:Z

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mPaint:Landroid/graphics/Paint;

    iput v1, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mLidOffsetY:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mLidAngle:F

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->kLidUpHeight:I

    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mAngleDirection:F

    invoke-direct {p0}, Lcom/android/settings/lockscreenshortcut/DeleteView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v1, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mIsAnimating:Z

    iput-boolean v1, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mIsOnDeleting:Z

    iput-boolean v1, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mIsLandscape:Z

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mPaint:Landroid/graphics/Paint;

    iput v1, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mLidOffsetY:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mLidAngle:F

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->kLidUpHeight:I

    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mAngleDirection:F

    invoke-direct {p0}, Lcom/android/settings/lockscreenshortcut/DeleteView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v1, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mIsAnimating:Z

    iput-boolean v1, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mIsOnDeleting:Z

    iput-boolean v1, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mIsLandscape:Z

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mPaint:Landroid/graphics/Paint;

    iput v1, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mLidOffsetY:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mLidAngle:F

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->kLidUpHeight:I

    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mAngleDirection:F

    invoke-direct {p0}, Lcom/android/settings/lockscreenshortcut/DeleteView;->init()V

    return-void
.end method

.method static synthetic access$002(Lcom/android/settings/lockscreenshortcut/DeleteView;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mIsOnDeleting:Z

    return p1
.end method

.method private draw(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Rect;F)V
    .registers 10

    invoke-virtual {p0}, Lcom/android/settings/lockscreenshortcut/DeleteView;->getWidth()I

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int v0, v2, v3

    invoke-virtual {p0}, Lcom/android/settings/lockscreenshortcut/DeleteView;->getHeight()I

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int v1, v2, v3

    iget-object v2, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x437f

    mul-float/2addr v3, p4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v2, p3, Landroid/graphics/Rect;->left:I

    div-int/lit8 v3, v0, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p3, Landroid/graphics/Rect;->top:I

    div-int/lit8 v4, v1, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private getTrashCanLidAngle()F
    .registers 2

    iget v0, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mLidAngle:F

    return v0
.end method

.method private init()V
    .registers 7

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/settings/lockscreenshortcut/DeleteView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    const v2, 0x7f0201f6

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mTrashCan:Landroid/graphics/Bitmap;

    const v2, 0x7f0201f5

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mTrashCanFill:Landroid/graphics/Bitmap;

    const v2, 0x7f0201f7

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mTrashBinOnly:Landroid/graphics/Bitmap;

    const v2, 0x7f0201f8

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mTrashLidOnly:Landroid/graphics/Bitmap;

    const v2, 0x7f0201f4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mTrashIcon:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mTrashIcon:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mTrashIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    iget-object v4, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mTrashIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method

.method private isTrashCanShakeMode()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mIsTrashCanShakeMode:Z

    return v0
.end method

.method private setTrashCanFillAlpha(F)V
    .registers 2

    iput p1, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mTrashCanFillAlpha:F

    return-void
.end method

.method private setTrashCanLidAngle(F)V
    .registers 2

    iput p1, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mLidAngle:F

    return-void
.end method

.method private setTrashCanLidOffset(II)V
    .registers 3

    iput p2, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mLidOffsetY:I

    return-void
.end method

.method private setTrashCanShakeMode(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mIsTrashCanShakeMode:Z

    return-void
.end method

.method private startAnimator(IJ)V
    .registers 6

    iget-object v1, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mCurrentAnimator:Landroid/animation/Animator;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mCurrentAnimator:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    :cond_9
    invoke-virtual {p0}, Lcom/android/settings/lockscreenshortcut/DeleteView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    invoke-virtual {v0, p2, p3}, Landroid/animation/Animator;->setStartDelay(J)V

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    iput-object v0, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mCurrentAnimator:Landroid/animation/Animator;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 9

    const/high16 v6, 0x3f80

    const/4 v5, 0x0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lcom/android/settings/lockscreenshortcut/DeleteView;->isAnimating()Z

    move-result v3

    if-nez v3, :cond_d

    :cond_c
    :goto_c
    return-void

    :cond_d
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mIsTrashCanShakeMode:Z

    if-eqz v3, :cond_5f

    iget-object v3, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mTrashBinOnly:Landroid/graphics/Bitmap;

    invoke-direct {p0, p1, v3, v2, v6}, Lcom/android/settings/lockscreenshortcut/DeleteView;->draw(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Rect;F)V

    iget v3, v2, Landroid/graphics/Rect;->top:I

    iget v4, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mLidOffsetY:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Lcom/android/settings/lockscreenshortcut/DeleteView;->getWidth()I

    move-result v3

    div-int/lit8 v0, v3, 0x2

    iget-object v3, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mTrashLidOnly:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    div-int/lit8 v1, v3, 0x5

    iget-boolean v3, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mIsLandscape:Z

    if-eqz v3, :cond_51

    iget v3, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mLidAngle:F

    const/high16 v4, 0x40a0

    div-float/2addr v3, v4

    iget v4, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v0

    int-to-float v4, v4

    iget v5, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v1

    int-to-float v5, v5

    invoke-virtual {p1, v3, v4, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    :goto_48
    iget-object v3, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mTrashLidOnly:Landroid/graphics/Bitmap;

    invoke-direct {p0, p1, v3, v2, v6}, Lcom/android/settings/lockscreenshortcut/DeleteView;->draw(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Rect;F)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_c

    :cond_51
    iget v3, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mLidAngle:F

    iget v4, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v0

    int-to-float v4, v4

    iget v5, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v1

    int-to-float v5, v5

    invoke-virtual {p1, v3, v4, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    goto :goto_48

    :cond_5f
    iget v3, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mTrashCanAlpha:F

    cmpl-float v3, v3, v5

    if-lez v3, :cond_6c

    iget-object v3, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mTrashCan:Landroid/graphics/Bitmap;

    iget v4, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mTrashCanAlpha:F

    invoke-direct {p0, p1, v3, v2, v4}, Lcom/android/settings/lockscreenshortcut/DeleteView;->draw(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Rect;F)V

    :cond_6c
    iget v3, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mTrashCanFillAlpha:F

    cmpl-float v3, v3, v5

    if-lez v3, :cond_c

    iget-object v3, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mTrashCanFill:Landroid/graphics/Bitmap;

    iget v4, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mTrashCanFillAlpha:F

    invoke-direct {p0, p1, v3, v2, v4}, Lcom/android/settings/lockscreenshortcut/DeleteView;->draw(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Rect;F)V

    goto :goto_c
.end method

.method public isAnimating()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mIsAnimating:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mIsTrashCanShakeMode:Z

    if-eqz v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mIsAnimating:Z

    return-void
.end method

.method protected setAnimating(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mIsAnimating:Z

    return-void
.end method

.method public setFadeOutTrashCan(F)V
    .registers 4

    const/high16 v0, 0x3f80

    sub-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/android/settings/lockscreenshortcut/DeleteView;->setTrashCanAlpha(F)V

    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mTrashIcon:Landroid/graphics/drawable/Drawable;

    const/high16 v1, 0x437f

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    invoke-virtual {p0}, Lcom/android/settings/lockscreenshortcut/DeleteView;->invalidate()V

    return-void
.end method

.method public setOrienationMode(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mIsLandscape:Z

    return-void
.end method

.method protected setTrashCanAlpha(F)V
    .registers 2

    iput p1, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mTrashCanAlpha:F

    return-void
.end method

.method public setTrashCanFill(F)V
    .registers 3

    const/high16 v0, 0x3f80

    sub-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/android/settings/lockscreenshortcut/DeleteView;->setTrashCanAlpha(F)V

    invoke-direct {p0, p1}, Lcom/android/settings/lockscreenshortcut/DeleteView;->setTrashCanFillAlpha(F)V

    invoke-virtual {p0}, Lcom/android/settings/lockscreenshortcut/DeleteView;->invalidate()V

    return-void
.end method

.method public setTrashCanLidDown(F)V
    .registers 6

    const/high16 v3, 0x3f80

    const/4 v0, 0x0

    const/high16 v1, 0x4080

    sub-float v2, v3, p1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/lockscreenshortcut/DeleteView;->setTrashCanLidOffset(II)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/lockscreenshortcut/DeleteView;->setTrashCanLidAngle(F)V

    invoke-virtual {p0}, Lcom/android/settings/lockscreenshortcut/DeleteView;->invalidate()V

    cmpl-float v0, p1, v3

    if-ltz v0, :cond_25

    invoke-direct {p0}, Lcom/android/settings/lockscreenshortcut/DeleteView;->isTrashCanShakeMode()Z

    move-result v0

    if-eqz v0, :cond_25

    const v0, 0x7f060004

    const-wide/16 v1, 0xc8

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/lockscreenshortcut/DeleteView;->startAnimator(IJ)V

    :cond_25
    return-void
.end method

.method public setTrashCanLidShake(F)V
    .registers 11

    const/high16 v8, 0x4100

    const/high16 v7, -0x3ec0

    const/high16 v6, -0x4080

    const/high16 v5, 0x4140

    const/high16 v2, 0x4100

    mul-float/2addr p1, v8

    const/high16 v3, 0x4140

    invoke-direct {p0}, Lcom/android/settings/lockscreenshortcut/DeleteView;->getTrashCanLidAngle()F

    move-result v0

    iget v4, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mPreviousLidShakeValue:F

    sub-float v1, p1, v4

    iput p1, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mPreviousLidShakeValue:F

    iget v4, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mAngleDirection:F

    mul-float/2addr v4, v1

    mul-float/2addr v4, v5

    add-float/2addr v0, v4

    cmpl-float v4, v0, v5

    if-lez v4, :cond_3c

    sub-float v4, v0, v5

    sub-float v0, v5, v4

    iget v4, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mAngleDirection:F

    mul-float/2addr v4, v6

    iput v4, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mAngleDirection:F

    :cond_29
    :goto_29
    invoke-direct {p0, v0}, Lcom/android/settings/lockscreenshortcut/DeleteView;->setTrashCanLidAngle(F)V

    invoke-virtual {p0}, Lcom/android/settings/lockscreenshortcut/DeleteView;->invalidate()V

    cmpl-float v4, p1, v8

    if-ltz v4, :cond_3b

    const v4, 0x7f060002

    const-wide/16 v5, 0x3c

    invoke-direct {p0, v4, v5, v6}, Lcom/android/settings/lockscreenshortcut/DeleteView;->startAnimator(IJ)V

    :cond_3b
    return-void

    :cond_3c
    cmpg-float v4, v0, v7

    if-gez v4, :cond_29

    add-float v4, v0, v5

    sub-float v0, v7, v4

    iget v4, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mAngleDirection:F

    mul-float/2addr v4, v6

    iput v4, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mAngleDirection:F

    goto :goto_29
.end method

.method public setTrashCanLidUp(F)V
    .registers 5

    const/high16 v2, 0x3f80

    const/4 v0, 0x0

    const/high16 v1, 0x4080

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/lockscreenshortcut/DeleteView;->setTrashCanLidOffset(II)V

    invoke-virtual {p0}, Lcom/android/settings/lockscreenshortcut/DeleteView;->invalidate()V

    cmpl-float v0, p1, v2

    if-ltz v0, :cond_1e

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mPreviousLidShakeValue:F

    iput v2, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mAngleDirection:F

    const v0, 0x7f060003

    const-wide/16 v1, 0x3c

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/lockscreenshortcut/DeleteView;->startAnimator(IJ)V

    :cond_1e
    return-void
.end method

.method public setTrashCanUnfill(F)V
    .registers 4

    const/high16 v1, 0x3f80

    invoke-virtual {p0, p1}, Lcom/android/settings/lockscreenshortcut/DeleteView;->setTrashCanAlpha(F)V

    sub-float v0, v1, p1

    invoke-direct {p0, v0}, Lcom/android/settings/lockscreenshortcut/DeleteView;->setTrashCanFillAlpha(F)V

    invoke-virtual {p0}, Lcom/android/settings/lockscreenshortcut/DeleteView;->invalidate()V

    cmpg-float v0, p1, v1

    if-gez v0, :cond_15

    const/4 v0, 0x1

    :goto_12
    iput-boolean v0, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mIsAnimating:Z

    return-void

    :cond_15
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public setVisibility(I)V
    .registers 3

    iget-boolean v0, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mIsOnDeleting:Z

    if-nez v0, :cond_7

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_7
    return-void
.end method

.method public startTrashCanFillUnfillAnimation()V
    .registers 8

    const-wide/16 v5, 0x0

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mIsOnDeleting:Z

    new-instance v1, Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0}, Lcom/android/settings/lockscreenshortcut/DeleteView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f060001

    invoke-static {v3, v4}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    invoke-virtual {v0, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0, v5, v6}, Landroid/animation/Animator;->setStartDelay(J)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/settings/lockscreenshortcut/DeleteView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f060005

    invoke-static {v3, v4}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    invoke-virtual {v0, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v3, 0x64

    invoke-virtual {v0, v3, v4}, Landroid/animation/Animator;->setStartDelay(J)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/settings/lockscreenshortcut/DeleteView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x7f06

    invoke-static {v3, v4}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    new-instance v3, Lcom/android/settings/lockscreenshortcut/DeleteView$1;

    invoke-direct {v3, p0}, Lcom/android/settings/lockscreenshortcut/DeleteView$1;-><init>(Lcom/android/settings/lockscreenshortcut/DeleteView;)V

    invoke-virtual {v0, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0, v5, v6}, Landroid/animation/Animator;->setStartDelay(J)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->playSequentially(Ljava/util/List;)V

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public startTrashCanShakeAnimation()V
    .registers 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/settings/lockscreenshortcut/DeleteView;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_1e

    const/high16 v0, 0x3f80

    invoke-virtual {p0, v0}, Lcom/android/settings/lockscreenshortcut/DeleteView;->setTrashCanAlpha(F)V

    invoke-direct {p0, v1}, Lcom/android/settings/lockscreenshortcut/DeleteView;->setTrashCanFillAlpha(F)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/lockscreenshortcut/DeleteView;->setTrashCanShakeMode(Z)V

    invoke-direct {p0, v1}, Lcom/android/settings/lockscreenshortcut/DeleteView;->setTrashCanLidAngle(F)V

    const v0, 0x7f060004

    const-wide/16 v1, 0x3c

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/lockscreenshortcut/DeleteView;->startAnimator(IJ)V

    :cond_1e
    return-void
.end method

.method public stopTrashCanShakeAnimation()V
    .registers 2

    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mCurrentAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mCurrentAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/DeleteView;->mCurrentAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_11
    invoke-direct {p0}, Lcom/android/settings/lockscreenshortcut/DeleteView;->isTrashCanShakeMode()Z

    move-result v0

    if-eqz v0, :cond_1b

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/lockscreenshortcut/DeleteView;->setTrashCanShakeMode(Z)V

    :cond_1b
    return-void
.end method
