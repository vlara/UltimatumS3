.class public Lcom/android/systemui/statusbar/phone/ExpandedView;
.super Landroid/widget/LinearLayout;
.source "ExpandedView.java"


# instance fields
.field mPrevHeight:I

.field mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedView;->mPrevHeight:I

    .line 31
    return-void
.end method


# virtual methods
.method public getSuggestedMinimumHeight()I
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 35
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 36
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 61
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedView;->mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isUnsecureKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedView;->mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->pokeWakelock()V

    .line 67
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 46
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 47
    sub-int v0, p5, p3

    .line 48
    .local v0, height:I
    iget v1, p0, Lcom/android/systemui/statusbar/phone/ExpandedView;->mPrevHeight:I

    if-eq v0, v1, :cond_0

    .line 53
    iput v0, p0, Lcom/android/systemui/statusbar/phone/ExpandedView;->mPrevHeight:I

    .line 54
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ExpandedView;->mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/16 v2, -0x2710

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateExpandedViewPos(I)V

    .line 56
    :cond_0
    return-void
.end method
