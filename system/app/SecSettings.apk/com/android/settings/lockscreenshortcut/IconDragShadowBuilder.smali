.class public Lcom/android/settings/lockscreenshortcut/IconDragShadowBuilder;
.super Landroid/view/View$DragShadowBuilder;
.source "IconDragShadowBuilder.java"


# instance fields
.field private isOnDelete:Z

.field private mSurface:Landroid/view/Surface;

.field private mView:Ljava/lang/ref/WeakReference;

.field private mVisibility:Z


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/lockscreenshortcut/IconDragShadowBuilder;->isOnDelete:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/lockscreenshortcut/IconDragShadowBuilder;->mVisibility:Z

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/lockscreenshortcut/IconDragShadowBuilder;->mView:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public draw()V
    .registers 6

    :try_start_0
    iget-object v2, p0, Lcom/android/settings/lockscreenshortcut/IconDragShadowBuilder;->mSurface:Landroid/view/Surface;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    :try_end_6
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_6} :catch_1d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_6} :catch_26

    move-result-object v0

    const/4 v2, 0x0

    :try_start_8
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/lockscreenshortcut/IconDragShadowBuilder;->onDrawShadow(Landroid/graphics/Canvas;)V
    :try_end_10
    .catchall {:try_start_8 .. :try_end_10} :catchall_16

    :try_start_10
    iget-object v2, p0, Lcom/android/settings/lockscreenshortcut/IconDragShadowBuilder;->mSurface:Landroid/view/Surface;

    invoke-virtual {v2, v0}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    :goto_15
    return-void

    :catchall_16
    move-exception v2

    iget-object v3, p0, Lcom/android/settings/lockscreenshortcut/IconDragShadowBuilder;->mSurface:Landroid/view/Surface;

    invoke-virtual {v3, v0}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    throw v2
    :try_end_1d
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_10 .. :try_end_1d} :catch_1d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10 .. :try_end_1d} :catch_26

    :catch_1d
    move-exception v1

    const-string v2, "UpdateableShadowBuilder"

    const-string v3, "Not enough memory to draw shadow"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    :catch_26
    move-exception v1

    const-string v2, "UpdateableShadowBuilder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to draw shadow: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15
.end method

.method public onDrawShadow(Landroid/graphics/Canvas;)V
    .registers 6

    iget-object v1, p0, Lcom/android/settings/lockscreenshortcut/IconDragShadowBuilder;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_21

    iget-boolean v1, p0, Lcom/android/settings/lockscreenshortcut/IconDragShadowBuilder;->isOnDelete:Z

    if-eqz v1, :cond_22

    new-instance v1, Landroid/graphics/LightingColorFilter;

    const/high16 v2, -0x1

    const/high16 v3, 0x5555

    invoke-direct {v1, v2, v3}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :goto_1a
    iget-boolean v1, p0, Lcom/android/settings/lockscreenshortcut/IconDragShadowBuilder;->mVisibility:Z

    if-eqz v1, :cond_21

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->draw(Landroid/graphics/Canvas;)V

    :cond_21
    return-void

    :cond_22
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_1a
.end method

.method public setOnDelete(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/settings/lockscreenshortcut/IconDragShadowBuilder;->isOnDelete:Z

    invoke-virtual {p0}, Lcom/android/settings/lockscreenshortcut/IconDragShadowBuilder;->draw()V

    return-void
.end method

.method public setShadowVisibility(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/settings/lockscreenshortcut/IconDragShadowBuilder;->mVisibility:Z

    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .registers 2

    iput-object p1, p0, Lcom/android/settings/lockscreenshortcut/IconDragShadowBuilder;->mSurface:Landroid/view/Surface;

    return-void
.end method
