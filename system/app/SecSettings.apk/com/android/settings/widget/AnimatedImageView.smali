.class public Lcom/android/settings/widget/AnimatedImageView;
.super Landroid/widget/ImageView;
.source "AnimatedImageView.java"


# instance fields
.field private mAnimating:Z

.field private mDrawable:Landroid/graphics/drawable/AnimatedRotateDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private updateAnimating()V
    .registers 2

    iget-object v0, p0, Lcom/android/settings/widget/AnimatedImageView;->mDrawable:Landroid/graphics/drawable/AnimatedRotateDrawable;

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lcom/android/settings/widget/AnimatedImageView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lcom/android/settings/widget/AnimatedImageView;->mAnimating:Z

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/settings/widget/AnimatedImageView;->mDrawable:Landroid/graphics/drawable/AnimatedRotateDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedRotateDrawable;->start()V

    :cond_13
    :goto_13
    return-void

    :cond_14
    iget-object v0, p0, Lcom/android/settings/widget/AnimatedImageView;->mDrawable:Landroid/graphics/drawable/AnimatedRotateDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedRotateDrawable;->stop()V

    goto :goto_13
.end method

.method private updateDrawable()V
    .registers 4

    invoke-virtual {p0}, Lcom/android/settings/widget/AnimatedImageView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/android/settings/widget/AnimatedImageView;->mDrawable:Landroid/graphics/drawable/AnimatedRotateDrawable;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/android/settings/widget/AnimatedImageView;->mDrawable:Landroid/graphics/drawable/AnimatedRotateDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimatedRotateDrawable;->stop()V

    :cond_f
    invoke-virtual {p0}, Lcom/android/settings/widget/AnimatedImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v1, v0, Landroid/graphics/drawable/AnimatedRotateDrawable;

    if-eqz v1, :cond_39

    check-cast v0, Landroid/graphics/drawable/AnimatedRotateDrawable;

    iput-object v0, p0, Lcom/android/settings/widget/AnimatedImageView;->mDrawable:Landroid/graphics/drawable/AnimatedRotateDrawable;

    iget-object v1, p0, Lcom/android/settings/widget/AnimatedImageView;->mDrawable:Landroid/graphics/drawable/AnimatedRotateDrawable;

    const/16 v2, 0x38

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/AnimatedRotateDrawable;->setFramesCount(I)V

    iget-object v1, p0, Lcom/android/settings/widget/AnimatedImageView;->mDrawable:Landroid/graphics/drawable/AnimatedRotateDrawable;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/AnimatedRotateDrawable;->setFramesDuration(I)V

    invoke-virtual {p0}, Lcom/android/settings/widget/AnimatedImageView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_38

    iget-boolean v1, p0, Lcom/android/settings/widget/AnimatedImageView;->mAnimating:Z

    if-eqz v1, :cond_38

    iget-object v1, p0, Lcom/android/settings/widget/AnimatedImageView;->mDrawable:Landroid/graphics/drawable/AnimatedRotateDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimatedRotateDrawable;->start()V

    :cond_38
    :goto_38
    return-void

    :cond_39
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/widget/AnimatedImageView;->mDrawable:Landroid/graphics/drawable/AnimatedRotateDrawable;

    goto :goto_38
.end method


# virtual methods
.method public onAttachedToWindow()V
    .registers 1

    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    invoke-direct {p0}, Lcom/android/settings/widget/AnimatedImageView;->updateAnimating()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 1

    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    invoke-direct {p0}, Lcom/android/settings/widget/AnimatedImageView;->updateAnimating()V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .registers 3

    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onVisibilityChanged(Landroid/view/View;I)V

    invoke-direct {p0}, Lcom/android/settings/widget/AnimatedImageView;->updateAnimating()V

    return-void
.end method

.method public setAnimating(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/settings/widget/AnimatedImageView;->mAnimating:Z

    invoke-direct {p0}, Lcom/android/settings/widget/AnimatedImageView;->updateAnimating()V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0}, Lcom/android/settings/widget/AnimatedImageView;->updateDrawable()V

    return-void
.end method

.method public setImageResource(I)V
    .registers 2

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-direct {p0}, Lcom/android/settings/widget/AnimatedImageView;->updateDrawable()V

    return-void
.end method
