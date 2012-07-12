.class public Lcom/android/systemui/statusbar/tablet/TFCubicRotateAnimation;
.super Landroid/view/animation/Animation;
.source "TFCubicRotateAnimation.java"


# static fields
.field public static final ANIMATION_DURATION:I = 0x10e

.field public static final AXIS_X:I = 0x1

.field public static final AXIS_Y:I = 0x0

.field private static final DEFAULT_ANIMATION_DURATION:I = 0x12c

.field public static final ROTATE_DOWN_IN:I = 0x2

.field public static final ROTATE_DOWN_OUT:I = 0x3

.field public static final ROTATE_UP_IN:I = 0x0

.field public static final ROTATE_UP_OUT:I = 0x1

.field public static final TRAY_HIDE_DELAY:I = 0x1a4

.field public static final TRAY_ICON_DELAY:I = 0x28

.field public static final TRAY_ICON_ITEM_COUNT:I = 0x7

.field public static final TRAY_SHOW_DELAY:I = 0x3c


# instance fields
.field private final mAxis:I

.field private mCamera:Landroid/graphics/Camera;

.field private mCenterX:F

.field private mCenterY:F

.field private final mFromDegrees:F

.field private final mIsOutAnimation:Z

.field private final mToDegrees:F


# direct methods
.method public constructor <init>(I)V
    .locals 7

    const/4 v6, 0x0

    const/high16 v5, 0x42b4

    const/high16 v4, -0x3d58

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    const-wide/16 v0, 0x12c

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/tablet/TFCubicRotateAnimation;->setDuration(J)V

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Unsupported rotation type for TFRotate3dAnimation"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iput v2, p0, Lcom/android/systemui/statusbar/tablet/TFCubicRotateAnimation;->mAxis:I

    iput v5, p0, Lcom/android/systemui/statusbar/tablet/TFCubicRotateAnimation;->mFromDegrees:F

    iput v3, p0, Lcom/android/systemui/statusbar/tablet/TFCubicRotateAnimation;->mToDegrees:F

    iput-boolean v6, p0, Lcom/android/systemui/statusbar/tablet/TFCubicRotateAnimation;->mIsOutAnimation:Z

    :goto_0
    return-void

    :pswitch_1
    iput v2, p0, Lcom/android/systemui/statusbar/tablet/TFCubicRotateAnimation;->mAxis:I

    iput v3, p0, Lcom/android/systemui/statusbar/tablet/TFCubicRotateAnimation;->mFromDegrees:F

    iput v4, p0, Lcom/android/systemui/statusbar/tablet/TFCubicRotateAnimation;->mToDegrees:F

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/tablet/TFCubicRotateAnimation;->mIsOutAnimation:Z

    goto :goto_0

    :pswitch_2
    iput v2, p0, Lcom/android/systemui/statusbar/tablet/TFCubicRotateAnimation;->mAxis:I

    iput v4, p0, Lcom/android/systemui/statusbar/tablet/TFCubicRotateAnimation;->mFromDegrees:F

    iput v3, p0, Lcom/android/systemui/statusbar/tablet/TFCubicRotateAnimation;->mToDegrees:F

    iput-boolean v6, p0, Lcom/android/systemui/statusbar/tablet/TFCubicRotateAnimation;->mIsOutAnimation:Z

    goto :goto_0

    :pswitch_3
    iput v2, p0, Lcom/android/systemui/statusbar/tablet/TFCubicRotateAnimation;->mAxis:I

    iput v3, p0, Lcom/android/systemui/statusbar/tablet/TFCubicRotateAnimation;->mFromDegrees:F

    iput v5, p0, Lcom/android/systemui/statusbar/tablet/TFCubicRotateAnimation;->mToDegrees:F

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/tablet/TFCubicRotateAnimation;->mIsOutAnimation:Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 18

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/statusbar/tablet/TFCubicRotateAnimation;->mFromDegrees:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/statusbar/tablet/TFCubicRotateAnimation;->mToDegrees:F

    sub-float/2addr v13, v5

    mul-float v13, v13, p1

    add-float v4, v5, v13

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/tablet/TFCubicRotateAnimation;->mCenterX:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/tablet/TFCubicRotateAnimation;->mCenterY:F

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/tablet/TFCubicRotateAnimation;->mCamera:Landroid/graphics/Camera;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/statusbar/tablet/TFCubicRotateAnimation;->mAxis:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_0

    move v6, v3

    :goto_0
    const/high16 v13, 0x4000

    div-float v13, v4, v13

    float-to-double v13, v13

    invoke-static {v13, v14}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    const/high16 v13, 0x4000

    float-to-double v14, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    mul-double v14, v14, v16

    double-to-float v14, v14

    mul-float v10, v13, v14

    float-to-double v13, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v15

    mul-double/2addr v13, v15

    double-to-float v11, v13

    float-to-double v13, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v15

    mul-double/2addr v13, v15

    double-to-float v12, v13

    invoke-virtual/range {p2 .. p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v7

    invoke-virtual {v1}, Landroid/graphics/Camera;->save()V

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/statusbar/tablet/TFCubicRotateAnimation;->mAxis:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_1

    const/4 v13, 0x0

    invoke-virtual {v1, v13, v11, v12}, Landroid/graphics/Camera;->translate(FFF)V

    invoke-virtual {v1, v4}, Landroid/graphics/Camera;->rotateX(F)V

    :goto_1
    invoke-virtual {v1, v7}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual {v1}, Landroid/graphics/Camera;->restore()V

    neg-float v13, v2

    neg-float v14, v3

    invoke-virtual {v7, v13, v14}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    invoke-virtual {v7, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void

    :cond_0
    move v6, v2

    goto :goto_0

    :cond_1
    const/4 v13, 0x0

    invoke-virtual {v1, v11, v13, v12}, Landroid/graphics/Camera;->translate(FFF)V

    invoke-virtual {v1, v4}, Landroid/graphics/Camera;->rotateY(F)V

    goto :goto_1
.end method

.method public initialize(IIII)V
    .locals 2

    const/high16 v1, 0x4000

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/TFCubicRotateAnimation;->mCamera:Landroid/graphics/Camera;

    int-to-float v0, p1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/tablet/TFCubicRotateAnimation;->mCenterX:F

    int-to-float v0, p2

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/tablet/TFCubicRotateAnimation;->mCenterY:F

    return-void
.end method
