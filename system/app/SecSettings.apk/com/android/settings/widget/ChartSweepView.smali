.class public Lcom/android/settings/widget/ChartSweepView;
.super Landroid/view/View;
.source "ChartSweepView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/widget/ChartSweepView$OnSweepListener;
    }
.end annotation


# instance fields
.field private mAxis:Lcom/android/settings/widget/ChartAxis;

.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mContentOffset:Landroid/graphics/Rect;

.field private mDragInterval:J

.field private mFollowAxis:I

.field private mLabelColor:I

.field private mLabelLayout:Landroid/text/DynamicLayout;

.field private mLabelMinSize:I

.field private mLabelOffset:F

.field private mLabelSize:F

.field private mLabelTemplate:Landroid/text/SpannableStringBuilder;

.field private mLabelTemplateRes:I

.field private mLabelValue:J

.field private mListener:Lcom/android/settings/widget/ChartSweepView$OnSweepListener;

.field private mMargins:Landroid/graphics/Rect;

.field private mMaximumValue:J

.field private mNeighborMargin:F

.field private mNeighbors:[Lcom/android/settings/widget/ChartSweepView;

.field private mOutlinePaint:Landroid/graphics/Paint;

.field private mSweep:Landroid/graphics/drawable/Drawable;

.field private mSweepOffset:Landroid/graphics/Point;

.field private mSweepPadding:Landroid/graphics/Rect;

.field private mTouchMode:I

.field private mTracking:Landroid/view/MotionEvent;

.field private mTrackingStart:F

.field private mUsingMaximumSetableRestriction:Z

.field private mValidAfter:J

.field private mValidAfterDynamic:Lcom/android/settings/widget/ChartSweepView;

.field private mValidBefore:J

.field private mValidBeforeDynamic:Lcom/android/settings/widget/ChartSweepView;

.field private mValue:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/widget/ChartSweepView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/widget/ChartSweepView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 9

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-wide/32 v1, 0x7fffffff

    iput-wide v1, p0, Lcom/android/settings/widget/ChartSweepView;->mMaximumValue:J

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/settings/widget/ChartSweepView;->mSweepPadding:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/settings/widget/ChartSweepView;->mContentOffset:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/android/settings/widget/ChartSweepView;->mSweepOffset:Landroid/graphics/Point;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/settings/widget/ChartSweepView;->mMargins:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/settings/widget/ChartSweepView;->mOutlinePaint:Landroid/graphics/Paint;

    iput v3, p0, Lcom/android/settings/widget/ChartSweepView;->mTouchMode:I

    const-wide/16 v1, 0x1

    iput-wide v1, p0, Lcom/android/settings/widget/ChartSweepView;->mDragInterval:J

    new-array v1, v3, [Lcom/android/settings/widget/ChartSweepView;

    iput-object v1, p0, Lcom/android/settings/widget/ChartSweepView;->mNeighbors:[Lcom/android/settings/widget/ChartSweepView;

    iput-boolean v3, p0, Lcom/android/settings/widget/ChartSweepView;->mUsingMaximumSetableRestriction:Z

    new-instance v1, Lcom/android/settings/widget/ChartSweepView$1;

    invoke-direct {v1, p0}, Lcom/android/settings/widget/ChartSweepView$1;-><init>(Lcom/android/settings/widget/ChartSweepView;)V

    iput-object v1, p0, Lcom/android/settings/widget/ChartSweepView;->mClickListener:Landroid/view/View$OnClickListener;

    sget-object v1, Lcom/android/settings/R$styleable;->ChartSweepView:[I

    invoke-virtual {p1, p2, v1, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/widget/ChartSweepView;->setSweepDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v1, -0x1

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/settings/widget/ChartSweepView;->setFollowAxis(I)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Lcom/android/settings/widget/ChartSweepView;->setNeighborMargin(F)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/settings/widget/ChartSweepView;->setLabelMinSize(I)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/settings/widget/ChartSweepView;->setLabelTemplate(I)V

    const/4 v1, 0x5

    const v2, -0xffff01

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/settings/widget/ChartSweepView;->setLabelColor(I)V

    const v1, 0x7f020047

    invoke-virtual {p0, v1}, Lcom/android/settings/widget/ChartSweepView;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/android/settings/widget/ChartSweepView;->mOutlinePaint:Landroid/graphics/Paint;

    const/high16 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/android/settings/widget/ChartSweepView;->mOutlinePaint:Landroid/graphics/Paint;

    const/high16 v2, 0x3f80

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, p0, Lcom/android/settings/widget/ChartSweepView;->mOutlinePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0, v4}, Lcom/android/settings/widget/ChartSweepView;->setClickable(Z)V

    invoke-virtual {p0, v4}, Lcom/android/settings/widget/ChartSweepView;->setFocusable(Z)V

    iget-object v1, p0, Lcom/android/settings/widget/ChartSweepView;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v1}, Lcom/android/settings/widget/ChartSweepView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v3}, Lcom/android/settings/widget/ChartSweepView;->setWillNotDraw(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/widget/ChartSweepView;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/widget/ChartSweepView;->dispatchRequestEdit()V

    return-void
.end method

.method private buildClampRect(Landroid/graphics/Rect;JJF)Landroid/graphics/Rect;
    .registers 16

    iget-object v7, p0, Lcom/android/settings/widget/ChartSweepView;->mAxis:Lcom/android/settings/widget/ChartAxis;

    instance-of v7, v7, Lcom/android/settings/widget/InvertedChartAxis;

    if-eqz v7, :cond_9

    move-wide v5, p4

    move-wide p4, p2

    move-wide p2, v5

    :cond_9
    const-wide/high16 v7, -0x8000

    cmp-long v7, p2, v7

    if-eqz v7, :cond_55

    const-wide v7, 0x7fffffffffffffffL

    cmp-long v7, p2, v7

    if-eqz v7, :cond_55

    const/4 v1, 0x1

    :goto_19
    const-wide/high16 v7, -0x8000

    cmp-long v7, p4, v7

    if-eqz v7, :cond_57

    const-wide v7, 0x7fffffffffffffffL

    cmp-long v7, p4, v7

    if-eqz v7, :cond_57

    const/4 v3, 0x1

    :goto_29
    iget-object v7, p0, Lcom/android/settings/widget/ChartSweepView;->mAxis:Lcom/android/settings/widget/ChartAxis;

    invoke-interface {v7, p2, p3}, Lcom/android/settings/widget/ChartAxis;->convertToPoint(J)F

    move-result v7

    add-float v0, v7, p6

    iget-object v7, p0, Lcom/android/settings/widget/ChartSweepView;->mAxis:Lcom/android/settings/widget/ChartAxis;

    invoke-interface {v7, p4, p5}, Lcom/android/settings/widget/ChartAxis;->convertToPoint(J)F

    move-result v7

    sub-float v2, v7, p6

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget v7, p0, Lcom/android/settings/widget/ChartSweepView;->mFollowAxis:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_59

    if-eqz v3, :cond_4b

    iget v7, v4, Landroid/graphics/Rect;->top:I

    float-to-int v8, v2

    add-int/2addr v7, v8

    iput v7, v4, Landroid/graphics/Rect;->bottom:I

    :cond_4b
    if-eqz v1, :cond_54

    iget v7, v4, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    add-float/2addr v7, v0

    float-to-int v7, v7

    iput v7, v4, Landroid/graphics/Rect;->top:I

    :cond_54
    :goto_54
    return-object v4

    :cond_55
    const/4 v1, 0x0

    goto :goto_19

    :cond_57
    const/4 v3, 0x0

    goto :goto_29

    :cond_59
    if-eqz v3, :cond_61

    iget v7, v4, Landroid/graphics/Rect;->left:I

    float-to-int v8, v2

    add-int/2addr v7, v8

    iput v7, v4, Landroid/graphics/Rect;->right:I

    :cond_61
    if-eqz v1, :cond_54

    iget v7, v4, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    add-float/2addr v7, v0

    float-to-int v7, v7

    iput v7, v4, Landroid/graphics/Rect;->left:I

    goto :goto_54
.end method

.method private computeClampRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 11

    iget-wide v2, p0, Lcom/android/settings/widget/ChartSweepView;->mValidAfter:J

    iget-wide v4, p0, Lcom/android/settings/widget/ChartSweepView;->mValidBefore:J

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/widget/ChartSweepView;->buildClampRect(Landroid/graphics/Rect;JJF)Landroid/graphics/Rect;

    move-result-object v8

    invoke-direct {p0}, Lcom/android/settings/widget/ChartSweepView;->getValidAfterDynamic()J

    move-result-wide v2

    invoke-direct {p0}, Lcom/android/settings/widget/ChartSweepView;->getValidBeforeDynamic()J

    move-result-wide v4

    iget v6, p0, Lcom/android/settings/widget/ChartSweepView;->mNeighborMargin:F

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/widget/ChartSweepView;->buildClampRect(Landroid/graphics/Rect;JJF)Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v8, v7}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_24

    invoke-virtual {v8}, Landroid/graphics/Rect;->setEmpty()V

    :cond_24
    return-object v8
.end method

.method private dispatchOnSweep(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->mListener:Lcom/android/settings/widget/ChartSweepView$OnSweepListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->mListener:Lcom/android/settings/widget/ChartSweepView$OnSweepListener;

    invoke-interface {v0, p0, p1}, Lcom/android/settings/widget/ChartSweepView$OnSweepListener;->onSweep(Lcom/android/settings/widget/ChartSweepView;Z)V

    :cond_9
    return-void
.end method

.method private dispatchRequestEdit()V
    .registers 2

    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->mListener:Lcom/android/settings/widget/ChartSweepView$OnSweepListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->mListener:Lcom/android/settings/widget/ChartSweepView$OnSweepListener;

    invoke-interface {v0, p0}, Lcom/android/settings/widget/ChartSweepView$OnSweepListener;->requestEdit(Lcom/android/settings/widget/ChartSweepView;)V

    :cond_9
    return-void
.end method

.method public static getLabelBottom(Lcom/android/settings/widget/ChartSweepView;)F
    .registers 3

    invoke-static {p0}, Lcom/android/settings/widget/ChartSweepView;->getLabelTop(Lcom/android/settings/widget/ChartSweepView;)F

    move-result v0

    iget-object v1, p0, Lcom/android/settings/widget/ChartSweepView;->mLabelLayout:Landroid/text/DynamicLayout;

    invoke-virtual {v1}, Landroid/text/DynamicLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    return v0
.end method

.method public static getLabelTop(Lcom/android/settings/widget/ChartSweepView;)F
    .registers 3

    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/android/settings/widget/ChartSweepView;->mContentOffset:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    return v0
.end method

.method public static getLabelWidth(Lcom/android/settings/widget/ChartSweepView;)F
    .registers 3

    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->mLabelLayout:Landroid/text/DynamicLayout;

    invoke-virtual {v0}, Landroid/text/DynamicLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/widget/ChartSweepView;->mLabelLayout:Landroid/text/DynamicLayout;

    invoke-virtual {v1}, Landroid/text/DynamicLayout;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v0

    return v0
.end method

.method private getParentContentRect()Landroid/graphics/Rect;
    .registers 8

    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1
.end method

.method private getTargetInset()F
    .registers 6

    const/high16 v4, 0x4000

    iget v2, p0, Lcom/android/settings/widget/ChartSweepView;->mFollowAxis:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_27

    iget-object v2, p0, Lcom/android/settings/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iget-object v3, p0, Lcom/android/settings/widget/ChartSweepView;->mSweepPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/settings/widget/ChartSweepView;->mSweepPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    int-to-float v0, v2

    iget-object v2, p0, Lcom/android/settings/widget/ChartSweepView;->mSweepPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    div-float v3, v0, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/settings/widget/ChartSweepView;->mSweepOffset:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    :goto_26
    return v2

    :cond_27
    iget-object v2, p0, Lcom/android/settings/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/settings/widget/ChartSweepView;->mSweepPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/settings/widget/ChartSweepView;->mSweepPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    int-to-float v1, v2

    iget-object v2, p0, Lcom/android/settings/widget/ChartSweepView;->mSweepPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    div-float v3, v1, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/settings/widget/ChartSweepView;->mSweepOffset:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    goto :goto_26
.end method

.method private getTouchDistanceFromTarget(Landroid/view/MotionEvent;)F
    .registers 5

    iget v0, p0, Lcom/android/settings/widget/ChartSweepView;->mFollowAxis:I

    if-nez v0, :cond_17

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->getX()F

    move-result v1

    invoke-direct {p0}, Lcom/android/settings/widget/ChartSweepView;->getTargetInset()F

    move-result v2

    add-float/2addr v1, v2

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    :goto_16
    return v0

    :cond_17
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->getY()F

    move-result v1

    invoke-direct {p0}, Lcom/android/settings/widget/ChartSweepView;->getTargetInset()F

    move-result v2

    add-float/2addr v1, v2

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    goto :goto_16
.end method

.method private getValidAfterDynamic()J
    .registers 4

    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->mValidAfterDynamic:Lcom/android/settings/widget/ChartSweepView;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/android/settings/widget/ChartSweepView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {v0}, Lcom/android/settings/widget/ChartSweepView;->getValue()J

    move-result-wide v1

    :goto_e
    return-wide v1

    :cond_f
    const-wide/high16 v1, -0x8000

    goto :goto_e
.end method

.method private getValidBeforeDynamic()J
    .registers 4

    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->mValidBeforeDynamic:Lcom/android/settings/widget/ChartSweepView;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/android/settings/widget/ChartSweepView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {v0}, Lcom/android/settings/widget/ChartSweepView;->getValue()J

    move-result-wide v1

    :goto_e
    return-wide v1

    :cond_f
    const-wide v1, 0x7fffffffffffffffL

    goto :goto_e
.end method

.method private invalidateLabel()V
    .registers 6

    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->mLabelTemplate:Landroid/text/SpannableStringBuilder;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->mAxis:Lcom/android/settings/widget/ChartAxis;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->mAxis:Lcom/android/settings/widget/ChartAxis;

    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/widget/ChartSweepView;->mLabelTemplate:Landroid/text/SpannableStringBuilder;

    iget-wide v3, p0, Lcom/android/settings/widget/ChartSweepView;->mValue:J

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/settings/widget/ChartAxis;->buildLabel(Landroid/content/res/Resources;Landroid/text/SpannableStringBuilder;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/widget/ChartSweepView;->mLabelValue:J

    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->mLabelTemplate:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/ChartSweepView;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->invalidateLabelOffset()V

    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->invalidate()V

    :goto_23
    return-void

    :cond_24
    iget-wide v0, p0, Lcom/android/settings/widget/ChartSweepView;->mValue:J

    iput-wide v0, p0, Lcom/android/settings/widget/ChartSweepView;->mLabelValue:J

    goto :goto_23
.end method

.method private invalidateLabelTemplate()V
    .registers 10

    const/4 v1, 0x0

    const/high16 v5, 0x3f80

    const/4 v6, 0x0

    iget v0, p0, Lcom/android/settings/widget/ChartSweepView;->mLabelTemplateRes:I

    if-eqz v0, :cond_5d

    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/widget/ChartSweepView;->mLabelTemplateRes:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    new-instance v2, Landroid/text/TextPaint;

    const/4 v0, 0x1

    invoke-direct {v2, v0}, Landroid/text/TextPaint;-><init>(I)V

    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, v2, Landroid/text/TextPaint;->density:F

    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setCompatibilityScaling(F)V

    iget v0, p0, Lcom/android/settings/widget/ChartSweepView;->mLabelColor:I

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setColor(I)V

    iget v0, v2, Landroid/text/TextPaint;->density:F

    mul-float/2addr v0, v5

    const/high16 v1, -0x100

    invoke-virtual {v2, v0, v6, v6, v1}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, v8}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->mLabelTemplate:Landroid/text/SpannableStringBuilder;

    new-instance v0, Landroid/text/DynamicLayout;

    iget-object v1, p0, Lcom/android/settings/widget/ChartSweepView;->mLabelTemplate:Landroid/text/SpannableStringBuilder;

    const/16 v3, 0x400

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/text/DynamicLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->mLabelLayout:Landroid/text/DynamicLayout;

    invoke-direct {p0}, Lcom/android/settings/widget/ChartSweepView;->invalidateLabel()V

    :goto_56
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->invalidate()V

    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->requestLayout()V

    return-void

    :cond_5d
    iput-object v1, p0, Lcom/android/settings/widget/ChartSweepView;->mLabelTemplate:Landroid/text/SpannableStringBuilder;

    iput-object v1, p0, Lcom/android/settings/widget/ChartSweepView;->mLabelLayout:Landroid/text/DynamicLayout;

    goto :goto_56
.end method


# virtual methods
.method public addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V
    .registers 2

    return-void
.end method

.method public addOnSweepListener(Lcom/android/settings/widget/ChartSweepView$OnSweepListener;)V
    .registers 2

    iput-object p1, p0, Lcom/android/settings/widget/ChartSweepView;->mListener:Lcom/android/settings/widget/ChartSweepView$OnSweepListener;

    return-void
.end method

.method protected drawableStateChanged()V
    .registers 3

    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_14
    return-void
.end method

.method public getFollowAxis()I
    .registers 2

    iget v0, p0, Lcom/android/settings/widget/ChartSweepView;->mFollowAxis:I

    return v0
.end method

.method public getLabelValue()J
    .registers 3

    iget-wide v0, p0, Lcom/android/settings/widget/ChartSweepView;->mLabelValue:J

    return-wide v0
.end method

.method public getMargins()Landroid/graphics/Rect;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->mMargins:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getPoint()F
    .registers 4

    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->mAxis:Lcom/android/settings/widget/ChartAxis;

    iget-wide v1, p0, Lcom/android/settings/widget/ChartSweepView;->mValue:J

    invoke-interface {v0, v1, v2}, Lcom/android/settings/widget/ChartAxis;->convertToPoint(J)F

    move-result v0

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public getValue()J
    .registers 3

    iget-wide v0, p0, Lcom/android/settings/widget/ChartSweepView;->mValue:J

    return-wide v0
.end method

.method init(Lcom/android/settings/widget/ChartAxis;)V
    .registers 3

    const-string v0, "missing axis"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/ChartAxis;

    iput-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->mAxis:Lcom/android/settings/widget/ChartAxis;

    return-void
.end method

.method public invalidateLabelOffset()V
    .registers 7

    const/high16 v5, 0x4000

    const/4 v4, 0x0

    const/4 v0, 0x0

    iget v2, p0, Lcom/android/settings/widget/ChartSweepView;->mFollowAxis:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2f

    iget-object v2, p0, Lcom/android/settings/widget/ChartSweepView;->mValidAfterDynamic:Lcom/android/settings/widget/ChartSweepView;

    if-eqz v2, :cond_58

    invoke-static {p0}, Lcom/android/settings/widget/ChartSweepView;->getLabelWidth(Lcom/android/settings/widget/ChartSweepView;)F

    move-result v2

    iget-object v3, p0, Lcom/android/settings/widget/ChartSweepView;->mValidAfterDynamic:Lcom/android/settings/widget/ChartSweepView;

    invoke-static {v3}, Lcom/android/settings/widget/ChartSweepView;->getLabelWidth(Lcom/android/settings/widget/ChartSweepView;)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Lcom/android/settings/widget/ChartSweepView;->mLabelSize:F

    iget-object v2, p0, Lcom/android/settings/widget/ChartSweepView;->mValidAfterDynamic:Lcom/android/settings/widget/ChartSweepView;

    invoke-static {v2}, Lcom/android/settings/widget/ChartSweepView;->getLabelTop(Lcom/android/settings/widget/ChartSweepView;)F

    move-result v2

    invoke-static {p0}, Lcom/android/settings/widget/ChartSweepView;->getLabelBottom(Lcom/android/settings/widget/ChartSweepView;)F

    move-result v3

    sub-float v1, v2, v3

    cmpg-float v2, v1, v4

    if-gez v2, :cond_2f

    div-float v0, v1, v5

    :cond_2f
    :goto_2f
    iget v2, p0, Lcom/android/settings/widget/ChartSweepView;->mLabelSize:F

    iget v3, p0, Lcom/android/settings/widget/ChartSweepView;->mLabelMinSize:I

    int-to-float v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Lcom/android/settings/widget/ChartSweepView;->mLabelSize:F

    iget v2, p0, Lcom/android/settings/widget/ChartSweepView;->mLabelOffset:F

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_57

    iput v0, p0, Lcom/android/settings/widget/ChartSweepView;->mLabelOffset:F

    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->invalidate()V

    iget-object v2, p0, Lcom/android/settings/widget/ChartSweepView;->mValidAfterDynamic:Lcom/android/settings/widget/ChartSweepView;

    if-eqz v2, :cond_4e

    iget-object v2, p0, Lcom/android/settings/widget/ChartSweepView;->mValidAfterDynamic:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v2}, Lcom/android/settings/widget/ChartSweepView;->invalidateLabelOffset()V

    :cond_4e
    iget-object v2, p0, Lcom/android/settings/widget/ChartSweepView;->mValidBeforeDynamic:Lcom/android/settings/widget/ChartSweepView;

    if-eqz v2, :cond_57

    iget-object v2, p0, Lcom/android/settings/widget/ChartSweepView;->mValidBeforeDynamic:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v2}, Lcom/android/settings/widget/ChartSweepView;->invalidateLabelOffset()V

    :cond_57
    return-void

    :cond_58
    iget-object v2, p0, Lcom/android/settings/widget/ChartSweepView;->mValidBeforeDynamic:Lcom/android/settings/widget/ChartSweepView;

    if-eqz v2, :cond_80

    invoke-static {p0}, Lcom/android/settings/widget/ChartSweepView;->getLabelWidth(Lcom/android/settings/widget/ChartSweepView;)F

    move-result v2

    iget-object v3, p0, Lcom/android/settings/widget/ChartSweepView;->mValidBeforeDynamic:Lcom/android/settings/widget/ChartSweepView;

    invoke-static {v3}, Lcom/android/settings/widget/ChartSweepView;->getLabelWidth(Lcom/android/settings/widget/ChartSweepView;)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Lcom/android/settings/widget/ChartSweepView;->mLabelSize:F

    invoke-static {p0}, Lcom/android/settings/widget/ChartSweepView;->getLabelTop(Lcom/android/settings/widget/ChartSweepView;)F

    move-result v2

    iget-object v3, p0, Lcom/android/settings/widget/ChartSweepView;->mValidBeforeDynamic:Lcom/android/settings/widget/ChartSweepView;

    invoke-static {v3}, Lcom/android/settings/widget/ChartSweepView;->getLabelBottom(Lcom/android/settings/widget/ChartSweepView;)F

    move-result v3

    sub-float v1, v2, v3

    cmpg-float v2, v1, v4

    if-gez v2, :cond_2f

    neg-float v2, v1

    div-float v0, v2, v5

    goto :goto_2f

    :cond_80
    invoke-static {p0}, Lcom/android/settings/widget/ChartSweepView;->getLabelWidth(Lcom/android/settings/widget/ChartSweepView;)F

    move-result v2

    iput v2, p0, Lcom/android/settings/widget/ChartSweepView;->mLabelSize:F

    goto :goto_2f
.end method

.method public isTouchCloserTo(Landroid/view/MotionEvent;Lcom/android/settings/widget/ChartSweepView;)Z
    .registers 6

    invoke-direct {p0, p1}, Lcom/android/settings/widget/ChartSweepView;->getTouchDistanceFromTarget(Landroid/view/MotionEvent;)F

    move-result v1

    invoke-direct {p2, p1}, Lcom/android/settings/widget/ChartSweepView;->getTouchDistanceFromTarget(Landroid/view/MotionEvent;)F

    move-result v0

    cmpg-float v2, v0, v1

    if-gez v2, :cond_e

    const/4 v2, 0x1

    :goto_d
    return v2

    :cond_e
    const/4 v2, 0x0

    goto :goto_d
.end method

.method public jumpDrawablesToCurrentState()V
    .registers 2

    invoke-super {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_c
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 12

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_5f

    iget-object v5, p0, Lcom/android/settings/widget/ChartSweepView;->mLabelLayout:Landroid/text/DynamicLayout;

    if-eqz v5, :cond_5f

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    iget v5, p0, Lcom/android/settings/widget/ChartSweepView;->mLabelSize:F

    const/high16 v6, 0x4480

    sub-float v0, v5, v6

    iget-object v5, p0, Lcom/android/settings/widget/ChartSweepView;->mContentOffset:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    add-float/2addr v5, v0

    iget-object v6, p0, Lcom/android/settings/widget/ChartSweepView;->mContentOffset:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    iget v7, p0, Lcom/android/settings/widget/ChartSweepView;->mLabelOffset:F

    add-float/2addr v6, v7

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v5, p0, Lcom/android/settings/widget/ChartSweepView;->mLabelLayout:Landroid/text/DynamicLayout;

    invoke-virtual {v5, p1}, Landroid/text/DynamicLayout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    iget v5, p0, Lcom/android/settings/widget/ChartSweepView;->mLabelSize:F

    float-to-int v3, v5

    :goto_3b
    iget v5, p0, Lcom/android/settings/widget/ChartSweepView;->mFollowAxis:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_61

    iget-object v5, p0, Lcom/android/settings/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lcom/android/settings/widget/ChartSweepView;->mSweepOffset:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    iget-object v7, p0, Lcom/android/settings/widget/ChartSweepView;->mContentOffset:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v4

    iget-object v8, p0, Lcom/android/settings/widget/ChartSweepView;->mSweepOffset:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->y:I

    iget-object v9, p0, Lcom/android/settings/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {v5, v3, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :goto_59
    iget-object v5, p0, Lcom/android/settings/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void

    :cond_5f
    const/4 v3, 0x0

    goto :goto_3b

    :cond_61
    iget-object v5, p0, Lcom/android/settings/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lcom/android/settings/widget/ChartSweepView;->mSweepOffset:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    iget-object v7, p0, Lcom/android/settings/widget/ChartSweepView;->mSweepOffset:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    iget-object v8, p0, Lcom/android/settings/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/android/settings/widget/ChartSweepView;->mContentOffset:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v2

    invoke-virtual {v5, v6, v3, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_59
.end method

.method protected onLayout(ZIIII)V
    .registers 6

    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->invalidateLabelOffset()V

    return-void
.end method

.method protected onMeasure(II)V
    .registers 16

    const/4 v12, 0x0

    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->isEnabled()Z

    move-result v9

    if-eqz v9, :cond_bf

    iget-object v9, p0, Lcom/android/settings/widget/ChartSweepView;->mLabelLayout:Landroid/text/DynamicLayout;

    if-eqz v9, :cond_bf

    iget-object v9, p0, Lcom/android/settings/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    iget-object v9, p0, Lcom/android/settings/widget/ChartSweepView;->mLabelLayout:Landroid/text/DynamicLayout;

    invoke-virtual {v9}, Landroid/text/DynamicLayout;->getHeight()I

    move-result v6

    iget-object v9, p0, Lcom/android/settings/widget/ChartSweepView;->mSweepOffset:Landroid/graphics/Point;

    iput v12, v9, Landroid/graphics/Point;->x:I

    iget-object v9, p0, Lcom/android/settings/widget/ChartSweepView;->mSweepOffset:Landroid/graphics/Point;

    iput v12, v9, Landroid/graphics/Point;->y:I

    iget-object v9, p0, Lcom/android/settings/widget/ChartSweepView;->mSweepOffset:Landroid/graphics/Point;

    div-int/lit8 v10, v6, 0x2

    int-to-float v10, v10

    invoke-direct {p0}, Lcom/android/settings/widget/ChartSweepView;->getTargetInset()F

    move-result v11

    sub-float/2addr v10, v11

    float-to-int v10, v10

    iput v10, v9, Landroid/graphics/Point;->y:I

    iget-object v9, p0, Lcom/android/settings/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v10

    invoke-virtual {p0, v9, v10}, Lcom/android/settings/widget/ChartSweepView;->setMeasuredDimension(II)V

    :goto_39
    iget v9, p0, Lcom/android/settings/widget/ChartSweepView;->mFollowAxis:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_d8

    iget-object v9, p0, Lcom/android/settings/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    iget-object v10, p0, Lcom/android/settings/widget/ChartSweepView;->mSweepPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v10

    iget-object v10, p0, Lcom/android/settings/widget/ChartSweepView;->mSweepPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v9, v10

    iget-object v9, p0, Lcom/android/settings/widget/ChartSweepView;->mMargins:Landroid/graphics/Rect;

    iget-object v10, p0, Lcom/android/settings/widget/ChartSweepView;->mSweepPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    div-int/lit8 v11, v4, 0x2

    add-int/2addr v10, v11

    neg-int v10, v10

    iput v10, v9, Landroid/graphics/Rect;->top:I

    iget-object v9, p0, Lcom/android/settings/widget/ChartSweepView;->mMargins:Landroid/graphics/Rect;

    iput v12, v9, Landroid/graphics/Rect;->bottom:I

    iget-object v9, p0, Lcom/android/settings/widget/ChartSweepView;->mMargins:Landroid/graphics/Rect;

    iget-object v10, p0, Lcom/android/settings/widget/ChartSweepView;->mSweepPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    neg-int v10, v10

    iput v10, v9, Landroid/graphics/Rect;->left:I

    iget-object v9, p0, Lcom/android/settings/widget/ChartSweepView;->mMargins:Landroid/graphics/Rect;

    iget-object v10, p0, Lcom/android/settings/widget/ChartSweepView;->mSweepPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    iput v10, v9, Landroid/graphics/Rect;->right:I

    :goto_70
    iget-object v9, p0, Lcom/android/settings/widget/ChartSweepView;->mContentOffset:Landroid/graphics/Rect;

    invoke-virtual {v9, v12, v12, v12, v12}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->getMeasuredWidth()I

    move-result v8

    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->getMeasuredHeight()I

    move-result v1

    iget v9, p0, Lcom/android/settings/widget/ChartSweepView;->mFollowAxis:I

    if-nez v9, :cond_10c

    mul-int/lit8 v7, v8, 0x3

    invoke-virtual {p0, v7, v1}, Lcom/android/settings/widget/ChartSweepView;->setMeasuredDimension(II)V

    iget-object v9, p0, Lcom/android/settings/widget/ChartSweepView;->mContentOffset:Landroid/graphics/Rect;

    sub-int v10, v7, v8

    div-int/lit8 v10, v10, 0x2

    iput v10, v9, Landroid/graphics/Rect;->left:I

    iget-object v9, p0, Lcom/android/settings/widget/ChartSweepView;->mSweepPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    mul-int/lit8 v2, v9, 0x2

    iget-object v9, p0, Lcom/android/settings/widget/ChartSweepView;->mContentOffset:Landroid/graphics/Rect;

    iget v10, v9, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v10, v2

    iput v10, v9, Landroid/graphics/Rect;->bottom:I

    iget-object v9, p0, Lcom/android/settings/widget/ChartSweepView;->mMargins:Landroid/graphics/Rect;

    iget v10, v9, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v10, v2

    iput v10, v9, Landroid/graphics/Rect;->bottom:I

    :goto_a2
    iget-object v9, p0, Lcom/android/settings/widget/ChartSweepView;->mSweepOffset:Landroid/graphics/Point;

    iget-object v10, p0, Lcom/android/settings/widget/ChartSweepView;->mContentOffset:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    iget-object v11, p0, Lcom/android/settings/widget/ChartSweepView;->mContentOffset:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Point;->offset(II)V

    iget-object v9, p0, Lcom/android/settings/widget/ChartSweepView;->mMargins:Landroid/graphics/Rect;

    iget-object v10, p0, Lcom/android/settings/widget/ChartSweepView;->mSweepOffset:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->x:I

    neg-int v10, v10

    iget-object v11, p0, Lcom/android/settings/widget/ChartSweepView;->mSweepOffset:Landroid/graphics/Point;

    iget v11, v11, Landroid/graphics/Point;->y:I

    neg-int v11, v11

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Rect;->offset(II)V

    return-void

    :cond_bf
    iget-object v9, p0, Lcom/android/settings/widget/ChartSweepView;->mSweepOffset:Landroid/graphics/Point;

    iput v12, v9, Landroid/graphics/Point;->x:I

    iget-object v9, p0, Lcom/android/settings/widget/ChartSweepView;->mSweepOffset:Landroid/graphics/Point;

    iput v12, v9, Landroid/graphics/Point;->y:I

    iget-object v9, p0, Lcom/android/settings/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    iget-object v10, p0, Lcom/android/settings/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    invoke-virtual {p0, v9, v10}, Lcom/android/settings/widget/ChartSweepView;->setMeasuredDimension(II)V

    goto/16 :goto_39

    :cond_d8
    iget-object v9, p0, Lcom/android/settings/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    iget-object v10, p0, Lcom/android/settings/widget/ChartSweepView;->mSweepPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    sub-int/2addr v9, v10

    iget-object v10, p0, Lcom/android/settings/widget/ChartSweepView;->mSweepPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    sub-int v5, v9, v10

    iget-object v9, p0, Lcom/android/settings/widget/ChartSweepView;->mMargins:Landroid/graphics/Rect;

    iget-object v10, p0, Lcom/android/settings/widget/ChartSweepView;->mSweepPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    div-int/lit8 v11, v5, 0x2

    add-int/2addr v10, v11

    neg-int v10, v10

    iput v10, v9, Landroid/graphics/Rect;->left:I

    iget-object v9, p0, Lcom/android/settings/widget/ChartSweepView;->mMargins:Landroid/graphics/Rect;

    iput v12, v9, Landroid/graphics/Rect;->right:I

    iget-object v9, p0, Lcom/android/settings/widget/ChartSweepView;->mMargins:Landroid/graphics/Rect;

    iget-object v10, p0, Lcom/android/settings/widget/ChartSweepView;->mSweepPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    neg-int v10, v10

    iput v10, v9, Landroid/graphics/Rect;->top:I

    iget-object v9, p0, Lcom/android/settings/widget/ChartSweepView;->mMargins:Landroid/graphics/Rect;

    iget-object v10, p0, Lcom/android/settings/widget/ChartSweepView;->mSweepPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    iput v10, v9, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_70

    :cond_10c
    mul-int/lit8 v0, v1, 0x2

    invoke-virtual {p0, v8, v0}, Lcom/android/settings/widget/ChartSweepView;->setMeasuredDimension(II)V

    iget-object v9, p0, Lcom/android/settings/widget/ChartSweepView;->mContentOffset:Landroid/graphics/Rect;

    sub-int v10, v0, v1

    div-int/lit8 v10, v10, 0x2

    invoke-virtual {v9, v12, v10}, Landroid/graphics/Rect;->offset(II)V

    iget-object v9, p0, Lcom/android/settings/widget/ChartSweepView;->mSweepPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    mul-int/lit8 v2, v9, 0x2

    iget-object v9, p0, Lcom/android/settings/widget/ChartSweepView;->mContentOffset:Landroid/graphics/Rect;

    iget v10, v9, Landroid/graphics/Rect;->right:I

    sub-int/2addr v10, v2

    iput v10, v9, Landroid/graphics/Rect;->right:I

    iget-object v9, p0, Lcom/android/settings/widget/ChartSweepView;->mMargins:Landroid/graphics/Rect;

    iget v10, v9, Landroid/graphics/Rect;->right:I

    add-int/2addr v10, v2

    iput v10, v9, Landroid/graphics/Rect;->right:I

    goto/16 :goto_a2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 26

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/widget/ChartSweepView;->isEnabled()Z

    move-result v21

    if-nez v21, :cond_9

    const/16 v21, 0x0

    :goto_8
    return v21

    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/widget/ChartSweepView;->getParent()Landroid/view/ViewParent;

    move-result-object v15

    check-cast v15, Landroid/view/View;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v21

    packed-switch v21, :pswitch_data_316

    const/16 v21, 0x0

    goto :goto_8

    :pswitch_19
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/widget/ChartSweepView;->mFollowAxis:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_a2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v21

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/widget/ChartSweepView;->getWidth()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/widget/ChartSweepView;->mSweepPadding:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v23, v0

    mul-int/lit8 v23, v23, 0x8

    sub-int v22, v22, v23

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    cmpl-float v21, v21, v22

    if-lez v21, :cond_9c

    const/4 v3, 0x1

    :goto_49
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/widget/ChartSweepView;->mLabelLayout:Landroid/text/DynamicLayout;

    move-object/from16 v21, v0

    if-eqz v21, :cond_a0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/widget/ChartSweepView;->mLabelLayout:Landroid/text/DynamicLayout;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/text/DynamicLayout;->getWidth()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    cmpg-float v21, v21, v22

    if-gez v21, :cond_9e

    const/4 v4, 0x1

    :goto_69
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->copy()Landroid/view/MotionEvent;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/widget/ChartSweepView;->getLeft()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/widget/ChartSweepView;->getTop()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/widget/ChartSweepView;->mNeighbors:[Lcom/android/settings/widget/ChartSweepView;

    array-length v13, v5

    const/4 v12, 0x0

    :goto_8c
    if-ge v12, v13, :cond_ee

    aget-object v14, v5, v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v14}, Lcom/android/settings/widget/ChartSweepView;->isTouchCloserTo(Landroid/view/MotionEvent;Lcom/android/settings/widget/ChartSweepView;)Z

    move-result v21

    if-eqz v21, :cond_eb

    const/16 v21, 0x0

    goto/16 :goto_8

    :cond_9c
    const/4 v3, 0x0

    goto :goto_49

    :cond_9e
    const/4 v4, 0x0

    goto :goto_69

    :cond_a0
    const/4 v4, 0x0

    goto :goto_69

    :cond_a2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v21

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/widget/ChartSweepView;->getHeight()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/widget/ChartSweepView;->mSweepPadding:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v23, v0

    mul-int/lit8 v23, v23, 0x8

    sub-int v22, v22, v23

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    cmpl-float v21, v21, v22

    if-lez v21, :cond_e5

    const/4 v3, 0x1

    :goto_c4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/widget/ChartSweepView;->mLabelLayout:Landroid/text/DynamicLayout;

    move-object/from16 v21, v0

    if-eqz v21, :cond_e9

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/widget/ChartSweepView;->mLabelLayout:Landroid/text/DynamicLayout;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/text/DynamicLayout;->getHeight()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    cmpg-float v21, v21, v22

    if-gez v21, :cond_e7

    const/4 v4, 0x1

    :goto_e4
    goto :goto_69

    :cond_e5
    const/4 v3, 0x0

    goto :goto_c4

    :cond_e7
    const/4 v4, 0x0

    goto :goto_e4

    :cond_e9
    const/4 v4, 0x0

    goto :goto_e4

    :cond_eb
    add-int/lit8 v12, v12, 0x1

    goto :goto_8c

    :cond_ee
    if-eqz v3, :cond_165

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/widget/ChartSweepView;->mFollowAxis:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_147

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/widget/ChartSweepView;->getParent()Landroid/view/ViewParent;

    move-result-object v21

    const/16 v22, 0x1

    invoke-interface/range {v21 .. v22}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/widget/ChartSweepView;->getTop()I

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/widget/ChartSweepView;->mMargins:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/widget/ChartSweepView;->mTrackingStart:F

    :goto_124
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->copy()Landroid/view/MotionEvent;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/widget/ChartSweepView;->mTracking:Landroid/view/MotionEvent;

    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/widget/ChartSweepView;->mTouchMode:I

    invoke-virtual {v15}, Landroid/view/View;->isActivated()Z

    move-result v21

    if-nez v21, :cond_143

    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/view/View;->setActivated(Z)V

    :cond_143
    const/16 v21, 0x1

    goto/16 :goto_8

    :cond_147
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/widget/ChartSweepView;->getLeft()I

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/widget/ChartSweepView;->mMargins:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/widget/ChartSweepView;->mTrackingStart:F

    goto :goto_124

    :cond_165
    if-eqz v4, :cond_173

    const/16 v21, 0x2

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/widget/ChartSweepView;->mTouchMode:I

    const/16 v21, 0x1

    goto/16 :goto_8

    :cond_173
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/widget/ChartSweepView;->mTouchMode:I

    const/16 v21, 0x0

    goto/16 :goto_8

    :pswitch_17f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/widget/ChartSweepView;->mTouchMode:I

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_191

    const/16 v21, 0x1

    goto/16 :goto_8

    :cond_191
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/widget/ChartSweepView;->getParent()Landroid/view/ViewParent;

    move-result-object v21

    const/16 v22, 0x1

    invoke-interface/range {v21 .. v22}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/widget/ChartSweepView;->getParentContentRect()Landroid/graphics/Rect;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/settings/widget/ChartSweepView;->computeClampRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v21

    if-eqz v21, :cond_1b0

    const/16 v21, 0x1

    goto/16 :goto_8

    :cond_1b0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/widget/ChartSweepView;->mFollowAxis:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_245

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/widget/ChartSweepView;->getTop()I

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/widget/ChartSweepView;->mMargins:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    move/from16 v0, v21

    int-to-float v10, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/widget/ChartSweepView;->mTrackingStart:F

    move/from16 v21, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/widget/ChartSweepView;->mTracking:Landroid/view/MotionEvent;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/view/MotionEvent;->getRawY()F

    move-result v23

    sub-float v22, v22, v23

    add-float v18, v21, v22

    iget v0, v6, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v0, v18

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v8

    sub-float v21, v8, v10

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ChartSweepView;->setTranslationY(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/widget/ChartSweepView;->mAxis:Lcom/android/settings/widget/ChartAxis;

    move-object/from16 v21, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    sub-float v22, v8, v22

    invoke-interface/range {v21 .. v22}, Lcom/android/settings/widget/ChartAxis;->convertToValue(F)J

    move-result-wide v19

    :goto_227
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/widget/ChartSweepView;->mDragInterval:J

    move-wide/from16 v21, v0

    rem-long v21, v19, v21

    sub-long v19, v19, v21

    move-object/from16 v0, p0

    move-wide/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/widget/ChartSweepView;->setValue(J)V

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/settings/widget/ChartSweepView;->dispatchOnSweep(Z)V

    const/16 v21, 0x1

    goto/16 :goto_8

    :cond_245
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/widget/ChartSweepView;->getLeft()I

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/widget/ChartSweepView;->mMargins:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    move/from16 v0, v21

    int-to-float v9, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/widget/ChartSweepView;->mTrackingStart:F

    move/from16 v21, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/widget/ChartSweepView;->mTracking:Landroid/view/MotionEvent;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/view/MotionEvent;->getRawX()F

    move-result v23

    sub-float v22, v22, v23

    add-float v17, v21, v22

    iget v0, v6, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    iget v0, v6, Landroid/graphics/Rect;->right:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v0, v17

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v7

    sub-float v21, v7, v9

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ChartSweepView;->setTranslationX(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/widget/ChartSweepView;->mAxis:Lcom/android/settings/widget/ChartAxis;

    move-object/from16 v21, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    sub-float v22, v7, v22

    invoke-interface/range {v21 .. v22}, Lcom/android/settings/widget/ChartAxis;->convertToValue(F)J

    move-result-wide v19

    goto/16 :goto_227

    :pswitch_2b0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/widget/ChartSweepView;->mTouchMode:I

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_2cd

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/widget/ChartSweepView;->performClick()Z

    :cond_2c1
    :goto_2c1
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/widget/ChartSweepView;->mTouchMode:I

    const/16 v21, 0x1

    goto/16 :goto_8

    :cond_2cd
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/widget/ChartSweepView;->mTouchMode:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_2c1

    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/widget/ChartSweepView;->mTrackingStart:F

    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/widget/ChartSweepView;->mTracking:Landroid/view/MotionEvent;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/widget/ChartSweepView;->mLabelValue:J

    move-wide/from16 v21, v0

    move-wide/from16 v0, v21

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/widget/ChartSweepView;->mValue:J

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/settings/widget/ChartSweepView;->dispatchOnSweep(Z)V

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ChartSweepView;->setTranslationX(F)V

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ChartSweepView;->setTranslationY(F)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/widget/ChartSweepView;->requestLayout()V

    goto :goto_2c1

    :pswitch_data_316
    .packed-switch 0x0
        :pswitch_19
        :pswitch_2b0
        :pswitch_17f
    .end packed-switch
.end method

.method public removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V
    .registers 2

    return-void
.end method

.method public setDragInterval(J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/settings/widget/ChartSweepView;->mDragInterval:J

    return-void
.end method

.method public setEnabled(Z)V
    .registers 2

    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/ChartSweepView;->setFocusable(Z)V

    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->requestLayout()V

    return-void
.end method

.method public setFollowAxis(I)V
    .registers 2

    iput p1, p0, Lcom/android/settings/widget/ChartSweepView;->mFollowAxis:I

    return-void
.end method

.method public setLabelColor(I)V
    .registers 2

    iput p1, p0, Lcom/android/settings/widget/ChartSweepView;->mLabelColor:I

    invoke-direct {p0}, Lcom/android/settings/widget/ChartSweepView;->invalidateLabelTemplate()V

    return-void
.end method

.method public setLabelMinSize(I)V
    .registers 2

    iput p1, p0, Lcom/android/settings/widget/ChartSweepView;->mLabelMinSize:I

    invoke-direct {p0}, Lcom/android/settings/widget/ChartSweepView;->invalidateLabelTemplate()V

    return-void
.end method

.method public setLabelTemplate(I)V
    .registers 2

    iput p1, p0, Lcom/android/settings/widget/ChartSweepView;->mLabelTemplateRes:I

    invoke-direct {p0}, Lcom/android/settings/widget/ChartSweepView;->invalidateLabelTemplate()V

    return-void
.end method

.method public setMaximumSetableValue(J)V
    .registers 4

    iput-wide p1, p0, Lcom/android/settings/widget/ChartSweepView;->mMaximumValue:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/widget/ChartSweepView;->mUsingMaximumSetableRestriction:Z

    return-void
.end method

.method public setNeighborMargin(F)V
    .registers 2

    iput p1, p0, Lcom/android/settings/widget/ChartSweepView;->mNeighborMargin:F

    return-void
.end method

.method public varargs setNeighbors([Lcom/android/settings/widget/ChartSweepView;)V
    .registers 2

    iput-object p1, p0, Lcom/android/settings/widget/ChartSweepView;->mNeighbors:[Lcom/android/settings/widget/ChartSweepView;

    return-void
.end method

.method public setSweepDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 5

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/ChartSweepView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_10
    if-eqz p1, :cond_39

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_22
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_37

    const/4 v0, 0x1

    :goto_29
    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    iput-object p1, p0, Lcom/android/settings/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->mSweepPadding:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    :goto_33
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->invalidate()V

    return-void

    :cond_37
    move v0, v1

    goto :goto_29

    :cond_39
    iput-object v2, p0, Lcom/android/settings/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    goto :goto_33
.end method

.method public setValidRange(JJ)V
    .registers 5

    iput-wide p1, p0, Lcom/android/settings/widget/ChartSweepView;->mValidAfter:J

    iput-wide p3, p0, Lcom/android/settings/widget/ChartSweepView;->mValidBefore:J

    return-void
.end method

.method public setValidRangeDynamic(Lcom/android/settings/widget/ChartSweepView;Lcom/android/settings/widget/ChartSweepView;)V
    .registers 3

    iput-object p1, p0, Lcom/android/settings/widget/ChartSweepView;->mValidAfterDynamic:Lcom/android/settings/widget/ChartSweepView;

    iput-object p2, p0, Lcom/android/settings/widget/ChartSweepView;->mValidBeforeDynamic:Lcom/android/settings/widget/ChartSweepView;

    return-void
.end method

.method public setValue(J)V
    .registers 7

    iget-boolean v0, p0, Lcom/android/settings/widget/ChartSweepView;->mUsingMaximumSetableRestriction:Z

    if-eqz v0, :cond_30

    iget-wide v0, p0, Lcom/android/settings/widget/ChartSweepView;->mMaximumValue:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_30

    const-string v0, "ChartSweepView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setValue(), value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", maximum : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/settings/widget/ChartSweepView;->mMaximumValue:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide p1, p0, Lcom/android/settings/widget/ChartSweepView;->mMaximumValue:J

    :cond_30
    iput-wide p1, p0, Lcom/android/settings/widget/ChartSweepView;->mValue:J

    invoke-direct {p0}, Lcom/android/settings/widget/ChartSweepView;->invalidateLabel()V

    return-void
.end method

.method public setVisibility(I)V
    .registers 5

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_10

    iget-object v2, p0, Lcom/android/settings/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_11

    const/4 v0, 0x1

    :goto_d
    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_10
    return-void

    :cond_11
    move v0, v1

    goto :goto_d
.end method

.method public shouldAdjustAxis()I
    .registers 4

    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->mAxis:Lcom/android/settings/widget/ChartAxis;

    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->getValue()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/android/settings/widget/ChartAxis;->shouldAdjustAxis(J)I

    move-result v0

    return v0
.end method

.method public updateValueFromPosition()V
    .registers 6

    invoke-direct {p0}, Lcom/android/settings/widget/ChartSweepView;->getParentContentRect()Landroid/graphics/Rect;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/widget/ChartSweepView;->mFollowAxis:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_22

    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->getY()F

    move-result v3

    iget-object v4, p0, Lcom/android/settings/widget/ChartSweepView;->mMargins:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget v4, v2, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    sub-float v1, v3, v4

    iget-object v3, p0, Lcom/android/settings/widget/ChartSweepView;->mAxis:Lcom/android/settings/widget/ChartAxis;

    invoke-interface {v3, v1}, Lcom/android/settings/widget/ChartAxis;->convertToValue(F)J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/widget/ChartSweepView;->setValue(J)V

    :goto_21
    return-void

    :cond_22
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartSweepView;->getX()F

    move-result v3

    iget-object v4, p0, Lcom/android/settings/widget/ChartSweepView;->mMargins:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget v4, v2, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    sub-float v0, v3, v4

    iget-object v3, p0, Lcom/android/settings/widget/ChartSweepView;->mAxis:Lcom/android/settings/widget/ChartAxis;

    invoke-interface {v3, v0}, Lcom/android/settings/widget/ChartAxis;->convertToValue(F)J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/widget/ChartSweepView;->setValue(J)V

    goto :goto_21
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/settings/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_a

    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method