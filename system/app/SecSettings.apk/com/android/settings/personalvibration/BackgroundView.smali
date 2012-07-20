.class public Lcom/android/settings/personalvibration/BackgroundView;
.super Landroid/view/View;
.source "BackgroundView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/personalvibration/BackgroundView$UpdateTimeTask;,
        Lcom/android/settings/personalvibration/BackgroundView$Stage;,
        Lcom/android/settings/personalvibration/BackgroundView$floatValue;
    }
.end annotation


# static fields
.field static isTimerRun:Z

.field static timer:Ljava/util/Timer;


# instance fields
.field private final ADJUST_ANGLE:F

.field bm01:Landroid/graphics/Bitmap;

.field bm02:Landroid/graphics/Bitmap;

.field downtime:J

.field handler:Landroid/os/Handler;

.field private mBG:Landroid/graphics/RectF;

.field private mBigOval:Landroid/graphics/RectF;

.field mHandler:Landroid/os/Handler;

.field private mPaints:[Landroid/graphics/Paint;

.field private mPauseSweep:F

.field mSizeChanged:Z

.field private mSmallOval:Landroid/graphics/RectF;

.field private mStart:F

.field private mSweep:F

.field patternString:Ljava/lang/String;

.field pressedValue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/personalvibration/BackgroundView$floatValue;",
            ">;"
        }
    .end annotation
.end field

.field stage:Lcom/android/settings/personalvibration/BackgroundView$Stage;

.field startTime:J

.field uptime:J

.field vib:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    const/high16 v2, -0x3d4c

    const-wide/16 v0, 0x0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput v2, p0, Lcom/android/settings/personalvibration/BackgroundView;->ADJUST_ANGLE:F

    iput v2, p0, Lcom/android/settings/personalvibration/BackgroundView;->mStart:F

    iput-wide v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->downtime:J

    iput-wide v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->uptime:J

    iput-wide v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->startTime:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSizeChanged:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->patternString:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    const/high16 v2, -0x3d4c

    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v2, p0, Lcom/android/settings/personalvibration/BackgroundView;->ADJUST_ANGLE:F

    iput v2, p0, Lcom/android/settings/personalvibration/BackgroundView;->mStart:F

    iput-wide v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->downtime:J

    iput-wide v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->uptime:J

    iput-wide v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->startTime:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSizeChanged:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->patternString:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7

    const/high16 v2, -0x3d4c

    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v2, p0, Lcom/android/settings/personalvibration/BackgroundView;->ADJUST_ANGLE:F

    iput v2, p0, Lcom/android/settings/personalvibration/BackgroundView;->mStart:F

    iput-wide v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->downtime:J

    iput-wide v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->uptime:J

    iput-wide v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->startTime:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSizeChanged:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->patternString:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    return-void
.end method

.method private drawArcs(Landroid/graphics/Canvas;Landroid/graphics/RectF;ZLandroid/graphics/Paint;)V
    .registers 12

    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->bm01:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/settings/personalvibration/BackgroundView;->mBG:Landroid/graphics/RectF;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_116

    const/4 v6, 0x0

    :goto_12
    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_8d

    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/personalvibration/BackgroundView$floatValue;

    iget v0, v0, Lcom/android/settings/personalvibration/BackgroundView$floatValue;->up:F

    const/high16 v1, -0x4080

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_5c

    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/personalvibration/BackgroundView$floatValue;

    iget v0, v0, Lcom/android/settings/personalvibration/BackgroundView$floatValue;->down:F

    const/high16 v1, -0x3d4c

    add-float v2, v0, v1

    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/personalvibration/BackgroundView$floatValue;

    iget v1, v0, Lcom/android/settings/personalvibration/BackgroundView$floatValue;->up:F

    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/personalvibration/BackgroundView$floatValue;

    iget v0, v0, Lcom/android/settings/personalvibration/BackgroundView$floatValue;->down:F

    sub-float v3, v1, v0

    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v1, 0x2

    aget-object v5, v0, v1

    move-object v0, p1

    move-object v1, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    :goto_59
    add-int/lit8 v6, v6, 0x1

    goto :goto_12

    :cond_5c
    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/personalvibration/BackgroundView$floatValue;

    iget v0, v0, Lcom/android/settings/personalvibration/BackgroundView$floatValue;->down:F

    const/high16 v1, -0x3d4c

    add-float v2, v0, v1

    iget v1, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSweep:F

    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/personalvibration/BackgroundView$floatValue;

    iget v0, v0, Lcom/android/settings/personalvibration/BackgroundView$floatValue;->down:F

    sub-float v3, v1, v0

    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v1, 0x2

    aget-object v5, v0, v1

    move-object v0, p1

    move-object v1, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->bm02:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/settings/personalvibration/BackgroundView;->mBG:Landroid/graphics/RectF;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_59

    :cond_8d
    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->stage:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    sget-object v1, Lcom/android/settings/personalvibration/BackgroundView$Stage;->Play:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    if-ne v0, v1, :cond_116

    const/4 v6, 0x0

    :goto_94
    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_116

    iget v1, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSweep:F

    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/personalvibration/BackgroundView$floatValue;

    iget v0, v0, Lcom/android/settings/personalvibration/BackgroundView$floatValue;->up:F

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_de

    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/personalvibration/BackgroundView$floatValue;

    iget v0, v0, Lcom/android/settings/personalvibration/BackgroundView$floatValue;->down:F

    const/high16 v1, -0x3d4c

    add-float v2, v0, v1

    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/personalvibration/BackgroundView$floatValue;

    iget v1, v0, Lcom/android/settings/personalvibration/BackgroundView$floatValue;->up:F

    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/personalvibration/BackgroundView$floatValue;

    iget v0, v0, Lcom/android/settings/personalvibration/BackgroundView$floatValue;->down:F

    sub-float v3, v1, v0

    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v1, 0x5

    aget-object v5, v0, v1

    move-object v0, p1

    move-object v1, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    :goto_db
    add-int/lit8 v6, v6, 0x1

    goto :goto_94

    :cond_de
    iget v1, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSweep:F

    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/personalvibration/BackgroundView$floatValue;

    iget v0, v0, Lcom/android/settings/personalvibration/BackgroundView$floatValue;->down:F

    cmpl-float v0, v1, v0

    if-lez v0, :cond_116

    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/personalvibration/BackgroundView$floatValue;

    iget v0, v0, Lcom/android/settings/personalvibration/BackgroundView$floatValue;->down:F

    const/high16 v1, -0x3d4c

    add-float v2, v0, v1

    iget v1, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSweep:F

    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/personalvibration/BackgroundView$floatValue;

    iget v0, v0, Lcom/android/settings/personalvibration/BackgroundView$floatValue;->down:F

    sub-float v3, v1, v0

    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v1, 0x5

    aget-object v5, v0, v1

    move-object v0, p1

    move-object v1, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_db

    :cond_116
    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->stage:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    sget-object v1, Lcom/android/settings/personalvibration/BackgroundView$Stage;->Recording:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    if-eq v0, v1, :cond_122

    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->stage:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    sget-object v1, Lcom/android/settings/personalvibration/BackgroundView$Stage;->Pause:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    if-ne v0, v1, :cond_145

    :cond_122
    iget-object v1, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSmallOval:Landroid/graphics/RectF;

    iget v2, p0, Lcom/android/settings/personalvibration/BackgroundView;->mStart:F

    iget v3, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSweep:F

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v5, 0x0

    aget-object v5, v0, v5

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSmallOval:Landroid/graphics/RectF;

    iget v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mStart:F

    iget v2, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSweep:F

    add-float/2addr v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v5, 0x3

    aget-object v5, v0, v5

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    :cond_144
    :goto_144
    return-void

    :cond_145
    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->stage:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    sget-object v1, Lcom/android/settings/personalvibration/BackgroundView$Stage;->Play:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    if-ne v0, v1, :cond_144

    iget-object v1, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSmallOval:Landroid/graphics/RectF;

    iget v2, p0, Lcom/android/settings/personalvibration/BackgroundView;->mStart:F

    iget v3, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSweep:F

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v5, 0x1

    aget-object v5, v0, v5

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSmallOval:Landroid/graphics/RectF;

    iget v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mStart:F

    iget v2, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSweep:F

    add-float/2addr v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v5, 0x4

    aget-object v5, v0, v5

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_144
.end method


# virtual methods
.method public getPatternString()Ljava/lang/String;
    .registers 4

    const-string v0, "PersonalVibration"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPatternString is called : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/personalvibration/BackgroundView;->patternString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->patternString:Ljava/lang/String;

    return-object v0
.end method

.method public getStage()Lcom/android/settings/personalvibration/BackgroundView$Stage;
    .registers 4

    const-string v0, "PersonalVibration"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getStage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/personalvibration/BackgroundView;->stage:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->stage:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    return-object v0
.end method

.method init(Landroid/graphics/Canvas;)V
    .registers 16

    const/4 v13, 0x2

    const/4 v12, -0x1

    const/4 v11, 0x3

    const/4 v10, 0x1

    const/4 v9, 0x0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    const-string v4, "PersonalVibration"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "canvas height : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", width : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x6

    new-array v4, v4, [Landroid/graphics/Paint;

    iput-object v4, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    aput-object v5, v4, v9

    iget-object v4, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    aget-object v4, v4, v9

    invoke-virtual {v4, v10}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v4, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    aget-object v4, v4, v9

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v4, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    aget-object v4, v4, v9

    invoke-virtual {v4, v12}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v4, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    aget-object v4, v4, v9

    const/16 v5, 0x32

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v4, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    aget-object v4, v4, v9

    int-to-double v5, v1

    const-wide/high16 v7, 0x4029

    div-double/2addr v5, v7

    double-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v4, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    new-instance v5, Landroid/graphics/Paint;

    iget-object v6, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    aget-object v6, v6, v9

    invoke-direct {v5, v6}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    aput-object v5, v4, v10

    iget-object v4, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    aget-object v4, v4, v10

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v4, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    aget-object v4, v4, v10

    const/16 v5, 0x39

    const/16 v6, 0xab

    const/16 v7, 0xda

    invoke-static {v5, v6, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v4, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    aget-object v4, v4, v10

    const/16 v5, 0x32

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v4, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    new-instance v5, Landroid/graphics/Paint;

    iget-object v6, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    aget-object v6, v6, v9

    invoke-direct {v5, v6}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    aput-object v5, v4, v13

    iget-object v4, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    aget-object v4, v4, v13

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v4, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    aget-object v4, v4, v13

    invoke-virtual {v4, v12}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v4, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    new-instance v5, Landroid/graphics/Paint;

    iget-object v6, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    aget-object v6, v6, v9

    invoke-direct {v5, v6}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    aput-object v5, v4, v11

    iget-object v4, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    aget-object v4, v4, v11

    sget-object v5, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v4, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    aget-object v4, v4, v11

    const/high16 v5, 0x4040

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v4, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    aget-object v4, v4, v11

    invoke-virtual {v4, v12}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v4, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v5, 0x4

    new-instance v6, Landroid/graphics/Paint;

    iget-object v7, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    aget-object v7, v7, v11

    invoke-direct {v6, v7}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    aput-object v6, v4, v5

    iget-object v4, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v5, 0x4

    aget-object v4, v4, v5

    const/16 v5, 0x39

    const/16 v6, 0xab

    const/16 v7, 0xda

    invoke-static {v5, v6, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v4, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v5, 0x5

    new-instance v6, Landroid/graphics/Paint;

    iget-object v7, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    aget-object v7, v7, v9

    invoke-direct {v6, v7}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    aput-object v6, v4, v5

    iget-object v4, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v5, 0x5

    aget-object v4, v4, v5

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v4, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    const/4 v5, 0x5

    aget-object v4, v4, v5

    const/16 v5, 0x39

    const/16 v6, 0xab

    const/16 v7, 0xda

    invoke-static {v5, v6, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    mul-int/lit8 v4, v1, 0xb

    div-int/lit16 v4, v4, 0x90

    int-to-float v0, v4

    div-int/lit8 v4, v1, 0x1d

    int-to-float v2, v4

    new-instance v4, Landroid/graphics/RectF;

    int-to-float v5, v3

    sub-float/2addr v5, v0

    int-to-float v6, v1

    sub-float/2addr v6, v0

    invoke-direct {v4, v0, v0, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v4, p0, Lcom/android/settings/personalvibration/BackgroundView;->mBigOval:Landroid/graphics/RectF;

    new-instance v4, Landroid/graphics/RectF;

    int-to-float v5, v3

    sub-float/2addr v5, v2

    int-to-float v6, v1

    sub-float/2addr v6, v2

    invoke-direct {v4, v2, v2, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v4, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSmallOval:Landroid/graphics/RectF;

    new-instance v4, Landroid/graphics/RectF;

    const/4 v5, 0x0

    const/4 v6, 0x0

    int-to-float v7, v1

    int-to-float v8, v3

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v4, p0, Lcom/android/settings/personalvibration/BackgroundView;->mBG:Landroid/graphics/RectF;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iput-object v4, p0, Lcom/android/settings/personalvibration/BackgroundView;->handler:Landroid/os/Handler;

    sput-boolean v9, Lcom/android/settings/personalvibration/BackgroundView;->isTimerRun:Z

    invoke-virtual {p0}, Lcom/android/settings/personalvibration/BackgroundView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020266

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/personalvibration/BackgroundView;->bm01:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/android/settings/personalvibration/BackgroundView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02026c

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/personalvibration/BackgroundView;->bm02:Landroid/graphics/Bitmap;

    new-instance v4, Landroid/os/Vibrator;

    invoke-direct {v4}, Landroid/os/Vibrator;-><init>()V

    iput-object v4, p0, Lcom/android/settings/personalvibration/BackgroundView;->vib:Landroid/os/Vibrator;

    sget-object v4, Lcom/android/settings/personalvibration/BackgroundView$Stage;->Standby:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    iput-object v4, p0, Lcom/android/settings/personalvibration/BackgroundView;->stage:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    return-void
.end method

.method public isTimerRunning()Z
    .registers 2

    sget-boolean v0, Lcom/android/settings/personalvibration/BackgroundView;->isTimerRun:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 8

    const v5, 0x3fe66666

    const/4 v4, 0x2

    const/high16 v3, 0x43b4

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSizeChanged:Z

    if-eqz v0, :cond_10

    invoke-virtual {p0, p1}, Lcom/android/settings/personalvibration/BackgroundView;->init(Landroid/graphics/Canvas;)V

    iput-boolean v2, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSizeChanged:Z

    :cond_10
    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mBigOval:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    aget-object v1, v1, v4

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/android/settings/personalvibration/BackgroundView;->drawArcs(Landroid/graphics/Canvas;Landroid/graphics/RectF;ZLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->stage:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    sget-object v1, Lcom/android/settings/personalvibration/BackgroundView$Stage;->Recording:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    if-ne v0, v1, :cond_39

    iget v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSweep:F

    add-float/2addr v0, v5

    iput v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSweep:F

    iget v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSweep:F

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_38

    iput v3, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSweep:F

    invoke-virtual {p0}, Lcom/android/settings/personalvibration/BackgroundView;->setPauseTimer()V

    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mBigOval:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    aget-object v1, v1, v4

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/android/settings/personalvibration/BackgroundView;->drawArcs(Landroid/graphics/Canvas;Landroid/graphics/RectF;ZLandroid/graphics/Paint;)V

    :cond_38
    :goto_38
    return-void

    :cond_39
    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->stage:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    sget-object v1, Lcom/android/settings/personalvibration/BackgroundView$Stage;->Play:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    if-ne v0, v1, :cond_38

    iget v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSweep:F

    add-float/2addr v0, v5

    iput v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSweep:F

    iget v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSweep:F

    iget v1, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPauseSweep:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_38

    iput v3, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSweep:F

    invoke-virtual {p0}, Lcom/android/settings/personalvibration/BackgroundView;->setPauseTimer()V

    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mBigOval:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPaints:[Landroid/graphics/Paint;

    aget-object v1, v1, v4

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/android/settings/personalvibration/BackgroundView;->drawArcs(Landroid/graphics/Canvas;Landroid/graphics/RectF;ZLandroid/graphics/Paint;)V

    goto :goto_38
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 12

    const-string v4, "PersonalVibration"

    const-string v5, "onTouchEvent()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/personalvibration/BackgroundView;->isTimerRunning()Z

    move-result v4

    if-eqz v4, :cond_13

    iget-object v4, p0, Lcom/android/settings/personalvibration/BackgroundView;->stage:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    sget-object v5, Lcom/android/settings/personalvibration/BackgroundView$Stage;->Recording:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    if-eq v4, v5, :cond_3d

    :cond_13
    const-string v4, "PersonalVibration"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onTouchEvent() isTimerRunning() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/settings/personalvibration/BackgroundView;->isTimerRunning()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", stage : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/personalvibration/BackgroundView;->stage:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    :goto_3c
    return v4

    :cond_3d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const-string v4, "PersonalVibration"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onTouchEvent(), action : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch v0, :pswitch_data_168

    :cond_5c
    :goto_5c
    :pswitch_5c
    const/4 v4, 0x1

    goto :goto_3c

    :pswitch_5e
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/settings/personalvibration/BackgroundView;->downtime:J

    const-string v4, "PersonalVibration"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "button click started : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/android/settings/personalvibration/BackgroundView;->downtime:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/settings/personalvibration/BackgroundView;->vib:Landroid/os/Vibrator;

    const-wide/16 v5, 0x2710

    sget-object v7, Landroid/os/Vibrator$MagnitudeType;->CallMagnitude:Landroid/os/Vibrator$MagnitudeType;

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Vibrator;->vibrate(JLandroid/os/Vibrator$MagnitudeType;)V

    iget-wide v4, p0, Lcom/android/settings/personalvibration/BackgroundView;->uptime:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_c2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/settings/personalvibration/BackgroundView;->patternString:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/android/settings/personalvibration/BackgroundView;->downtime:J

    iget-wide v7, p0, Lcom/android/settings/personalvibration/BackgroundView;->startTime:J

    sub-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/personalvibration/BackgroundView;->patternString:Ljava/lang/String;

    :goto_af
    new-instance v2, Lcom/android/settings/personalvibration/BackgroundView$floatValue;

    invoke-direct {v2}, Lcom/android/settings/personalvibration/BackgroundView$floatValue;-><init>()V

    iget v4, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSweep:F

    iput v4, v2, Lcom/android/settings/personalvibration/BackgroundView$floatValue;->down:F

    const/high16 v4, -0x4080

    iput v4, v2, Lcom/android/settings/personalvibration/BackgroundView$floatValue;->up:F

    iget-object v4, p0, Lcom/android/settings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5c

    :cond_c2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/settings/personalvibration/BackgroundView;->patternString:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/android/settings/personalvibration/BackgroundView;->downtime:J

    iget-wide v7, p0, Lcom/android/settings/personalvibration/BackgroundView;->uptime:J

    sub-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/personalvibration/BackgroundView;->patternString:Ljava/lang/String;

    goto :goto_af

    :pswitch_e3
    iget-object v4, p0, Lcom/android/settings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    if-ltz v1, :cond_5c

    iget-object v4, p0, Lcom/android/settings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/personalvibration/BackgroundView$floatValue;

    iget v4, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSweep:F

    iput v4, v3, Lcom/android/settings/personalvibration/BackgroundView$floatValue;->up:F

    const-string v4, "PersonalVibration"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ACTION_UP, temp2.up : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lcom/android/settings/personalvibration/BackgroundView$floatValue;->up:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/settings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    invoke-virtual {v4, v1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/settings/personalvibration/BackgroundView;->uptime:J

    const-string v4, "PersonalVibration"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "button clicked ended, clicked time : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/android/settings/personalvibration/BackgroundView;->uptime:J

    iget-wide v8, p0, Lcom/android/settings/personalvibration/BackgroundView;->downtime:J

    sub-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/settings/personalvibration/BackgroundView;->vib:Landroid/os/Vibrator;

    invoke-virtual {v4}, Landroid/os/Vibrator;->cancel()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/settings/personalvibration/BackgroundView;->patternString:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/android/settings/personalvibration/BackgroundView;->uptime:J

    iget-wide v7, p0, Lcom/android/settings/personalvibration/BackgroundView;->downtime:J

    sub-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/personalvibration/BackgroundView;->patternString:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/personalvibration/BackgroundView;->vib:Landroid/os/Vibrator;

    invoke-virtual {v4}, Landroid/os/Vibrator;->cancel()V

    goto/16 :goto_5c

    nop

    :pswitch_data_168
    .packed-switch 0x0
        :pswitch_5e
        :pswitch_e3
        :pswitch_5c
        :pswitch_e3
    .end packed-switch
.end method

.method public setHandler(Landroid/os/Handler;)V
    .registers 2

    iput-object p1, p0, Lcom/android/settings/personalvibration/BackgroundView;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public setPauseTimer()V
    .registers 4

    sget-boolean v0, Lcom/android/settings/personalvibration/BackgroundView;->isTimerRun:Z

    if-nez v0, :cond_c

    const-string v0, "PersonalVibration"

    const-string v1, "setPauseTimer, timer has already stopped"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_b
    return-void

    :cond_c
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/BackgroundView;->validateLastValue()Z

    sget-object v0, Lcom/android/settings/personalvibration/BackgroundView;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    sget-object v0, Lcom/android/settings/personalvibration/BackgroundView;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/personalvibration/BackgroundView;->timer:Ljava/util/Timer;

    const-string v0, "PersonalVibration"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPauseTimer, isTimerRun"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/settings/personalvibration/BackgroundView;->isTimerRun:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/personalvibration/BackgroundView;->isTimerRun:Z

    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->stage:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    sget-object v1, Lcom/android/settings/personalvibration/BackgroundView$Stage;->Recording:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    if-ne v0, v1, :cond_56

    iget v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSweep:F

    iput v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPauseSweep:F

    :cond_43
    :goto_43
    sget-object v0, Lcom/android/settings/personalvibration/BackgroundView$Stage;->Pause:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    iput-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->stage:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_52

    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x70

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_52
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/BackgroundView;->invalidate()V

    goto :goto_b

    :cond_56
    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->stage:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    sget-object v1, Lcom/android/settings/personalvibration/BackgroundView$Stage;->Play:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    if-ne v0, v1, :cond_43

    iget v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mPauseSweep:F

    iput v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSweep:F

    goto :goto_43
.end method

.method public setRunPlayTimer()V
    .registers 7

    sget-boolean v0, Lcom/android/settings/personalvibration/BackgroundView;->isTimerRun:Z

    if-nez v0, :cond_3d

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lcom/android/settings/personalvibration/BackgroundView;->timer:Ljava/util/Timer;

    sget-object v0, Lcom/android/settings/personalvibration/BackgroundView;->timer:Ljava/util/Timer;

    new-instance v1, Lcom/android/settings/personalvibration/BackgroundView$UpdateTimeTask;

    invoke-direct {v1, p0}, Lcom/android/settings/personalvibration/BackgroundView$UpdateTimeTask;-><init>(Lcom/android/settings/personalvibration/BackgroundView;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x32

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/personalvibration/BackgroundView;->isTimerRun:Z

    sget-object v0, Lcom/android/settings/personalvibration/BackgroundView$Stage;->Play:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    iput-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->stage:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSweep:F

    const-string v0, "PersonalVibration"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRunPlayTimer, isTimerRun"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/settings/personalvibration/BackgroundView;->isTimerRun:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3d
    return-void
.end method

.method public setRunRecordingTimer()V
    .registers 9

    const-wide/16 v6, 0x0

    sget-boolean v0, Lcom/android/settings/personalvibration/BackgroundView;->isTimerRun:Z

    if-nez v0, :cond_3a

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lcom/android/settings/personalvibration/BackgroundView;->timer:Ljava/util/Timer;

    sget-object v0, Lcom/android/settings/personalvibration/BackgroundView;->timer:Ljava/util/Timer;

    new-instance v1, Lcom/android/settings/personalvibration/BackgroundView$UpdateTimeTask;

    invoke-direct {v1, p0}, Lcom/android/settings/personalvibration/BackgroundView$UpdateTimeTask;-><init>(Lcom/android/settings/personalvibration/BackgroundView;)V

    const-wide/16 v2, 0x64

    const-wide/16 v4, 0x32

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/personalvibration/BackgroundView;->isTimerRun:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->startTime:J

    iput-wide v6, p0, Lcom/android/settings/personalvibration/BackgroundView;->uptime:J

    iput-wide v6, p0, Lcom/android/settings/personalvibration/BackgroundView;->downtime:J

    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->patternString:Ljava/lang/String;

    sget-object v0, Lcom/android/settings/personalvibration/BackgroundView$Stage;->Recording:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    iput-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->stage:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSweep:F

    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    :cond_3a
    return-void
.end method

.method public setStopTimer()V
    .registers 5

    const-wide/16 v2, 0x0

    sget-boolean v0, Lcom/android/settings/personalvibration/BackgroundView;->isTimerRun:Z

    if-eqz v0, :cond_13

    sget-object v0, Lcom/android/settings/personalvibration/BackgroundView;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    sget-object v0, Lcom/android/settings/personalvibration/BackgroundView;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/personalvibration/BackgroundView;->timer:Ljava/util/Timer;

    :cond_13
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/personalvibration/BackgroundView;->isTimerRun:Z

    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->vib:Landroid/os/Vibrator;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->vib:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    :cond_1f
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSweep:F

    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    iput-wide v2, p0, Lcom/android/settings/personalvibration/BackgroundView;->uptime:J

    iput-wide v2, p0, Lcom/android/settings/personalvibration/BackgroundView;->downtime:J

    sget-object v0, Lcom/android/settings/personalvibration/BackgroundView$Stage;->Standby:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    iput-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->stage:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/android/settings/personalvibration/BackgroundView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6f

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_3c
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/BackgroundView;->invalidate()V

    return-void
.end method

.method public validateLastValue()Z
    .registers 8

    const/high16 v4, 0x43b4

    iget-object v2, p0, Lcom/android/settings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    if-gez v0, :cond_e

    const/4 v2, 0x0

    :goto_d
    return v2

    :cond_e
    iget-object v2, p0, Lcom/android/settings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/personalvibration/BackgroundView$floatValue;

    iget v2, v1, Lcom/android/settings/personalvibration/BackgroundView$floatValue;->up:F

    const/high16 v3, -0x4080

    cmpl-float v2, v2, v3

    if-nez v2, :cond_72

    iget v2, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSweep:F

    cmpl-float v2, v2, v4

    if-lez v2, :cond_74

    iput v4, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSweep:F

    iput v4, v1, Lcom/android/settings/personalvibration/BackgroundView$floatValue;->up:F

    :goto_28
    iget-object v2, p0, Lcom/android/settings/personalvibration/BackgroundView;->pressedValue:Ljava/util/ArrayList;

    invoke-virtual {v2, v0, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/settings/personalvibration/BackgroundView;->uptime:J

    iget-object v2, p0, Lcom/android/settings/personalvibration/BackgroundView;->vib:Landroid/os/Vibrator;

    invoke-virtual {v2}, Landroid/os/Vibrator;->cancel()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/settings/personalvibration/BackgroundView;->patternString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/settings/personalvibration/BackgroundView;->uptime:J

    iget-wide v5, p0, Lcom/android/settings/personalvibration/BackgroundView;->downtime:J

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/personalvibration/BackgroundView;->patternString:Ljava/lang/String;

    const-string v2, "PersonalVibration"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "validateLastValue(), missing last click up value is added now. : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/android/settings/personalvibration/BackgroundView$floatValue;->up:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_72
    const/4 v2, 0x1

    goto :goto_d

    :cond_74
    iget v2, p0, Lcom/android/settings/personalvibration/BackgroundView;->mSweep:F

    iput v2, v1, Lcom/android/settings/personalvibration/BackgroundView$floatValue;->up:F

    goto :goto_28
.end method
