.class Lcom/android/settings/AccessibilityTutorialActivity$TouchTutorialModule1;
.super Lcom/android/settings/AccessibilityTutorialActivity$TutorialModule;
.source "AccessibilityTutorialActivity.java"

# interfaces
.implements Landroid/view/View$OnHoverListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/AccessibilityTutorialActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TouchTutorialModule1"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/AccessibilityTutorialActivity$TouchTutorialModule1$HoverTargetHandler;
    }
.end annotation


# instance fields
.field private final mAllApps:Landroid/widget/GridView;

.field private final mAppsAdapter:Lcom/android/settings/AccessibilityTutorialActivity$AppsAdapter;

.field private final mHandler:Lcom/android/settings/AccessibilityTutorialActivity$TouchTutorialModule1$HoverTargetHandler;

.field private mTargetName:Ljava/lang/CharSequence;

.field private mTargetPosition:I

.field private mTouched:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/AccessibilityTutorialActivity;)V
    .registers 6

    const v0, 0x7f040001

    const v1, 0x7f0d071d

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/settings/AccessibilityTutorialActivity$TutorialModule;-><init>(Landroid/content/Context;Lcom/android/settings/AccessibilityTutorialActivity;II)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/AccessibilityTutorialActivity$TouchTutorialModule1;->mTouched:I

    new-instance v0, Lcom/android/settings/AccessibilityTutorialActivity$TouchTutorialModule1$HoverTargetHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/AccessibilityTutorialActivity$TouchTutorialModule1$HoverTargetHandler;-><init>(Lcom/android/settings/AccessibilityTutorialActivity$TouchTutorialModule1;Lcom/android/settings/AccessibilityTutorialActivity$1;)V

    iput-object v0, p0, Lcom/android/settings/AccessibilityTutorialActivity$TouchTutorialModule1;->mHandler:Lcom/android/settings/AccessibilityTutorialActivity$TouchTutorialModule1$HoverTargetHandler;

    new-instance v0, Lcom/android/settings/AccessibilityTutorialActivity$AppsAdapter;

    const v1, 0x7f040003

    const v2, 0x7f0a0006

    invoke-direct {v0, p1, v1, v2}, Lcom/android/settings/AccessibilityTutorialActivity$AppsAdapter;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/android/settings/AccessibilityTutorialActivity$TouchTutorialModule1;->mAppsAdapter:Lcom/android/settings/AccessibilityTutorialActivity$AppsAdapter;

    iget-object v0, p0, Lcom/android/settings/AccessibilityTutorialActivity$TouchTutorialModule1;->mAppsAdapter:Lcom/android/settings/AccessibilityTutorialActivity$AppsAdapter;

    invoke-virtual {v0, p0}, Lcom/android/settings/AccessibilityTutorialActivity$AppsAdapter;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    const v0, 0x7f0a0004

    invoke-virtual {p0, v0}, Lcom/android/settings/AccessibilityTutorialActivity$TouchTutorialModule1;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/android/settings/AccessibilityTutorialActivity$TouchTutorialModule1;->mAllApps:Landroid/widget/GridView;

    iget-object v0, p0, Lcom/android/settings/AccessibilityTutorialActivity$TouchTutorialModule1;->mAllApps:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/android/settings/AccessibilityTutorialActivity$TouchTutorialModule1;->mAppsAdapter:Lcom/android/settings/AccessibilityTutorialActivity$AppsAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/android/settings/AccessibilityTutorialActivity$TouchTutorialModule1;->mAllApps:Landroid/widget/GridView;

    invoke-virtual {v0, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const v0, 0x7f0a000b

    invoke-virtual {p0, v0}, Lcom/android/settings/AccessibilityTutorialActivity$TouchTutorialModule1;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/AccessibilityTutorialActivity$TouchTutorialModule1;->setSkipVisible(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/AccessibilityTutorialActivity$TouchTutorialModule1;)Lcom/android/settings/AccessibilityTutorialActivity$TouchTutorialModule1$HoverTargetHandler;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/AccessibilityTutorialActivity$TouchTutorialModule1;->mHandler:Lcom/android/settings/AccessibilityTutorialActivity$TouchTutorialModule1$HoverTargetHandler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/AccessibilityTutorialActivity$TouchTutorialModule1;)Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/AccessibilityTutorialActivity$TouchTutorialModule1;->mTargetName:Ljava/lang/CharSequence;

    return-object v0
.end method


# virtual methods
.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 9

    const/16 v5, 0x9

    const/4 v4, 0x4

    const/4 v1, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_88

    :cond_d
    :goto_d
    return v3

    :pswitch_e
    invoke-virtual {p0, v2}, Lcom/android/settings/AccessibilityTutorialActivity$TouchTutorialModule1;->hasFlag(I)Z

    move-result v0

    if-eqz v0, :cond_50

    invoke-virtual {p0, v1}, Lcom/android/settings/AccessibilityTutorialActivity$TouchTutorialModule1;->hasFlag(I)Z

    move-result v0

    if-nez v0, :cond_50

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_50

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v5, :cond_50

    iget v0, p0, Lcom/android/settings/AccessibilityTutorialActivity$TouchTutorialModule1;->mTouched:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/AccessibilityTutorialActivity$TouchTutorialModule1;->mTouched:I

    iget v0, p0, Lcom/android/settings/AccessibilityTutorialActivity$TouchTutorialModule1;->mTouched:I

    if-lt v0, v1, :cond_43

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/AccessibilityTutorialActivity$TouchTutorialModule1;->setFlag(IZ)V

    const v0, 0x7f0d0720

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/settings/AccessibilityTutorialActivity$TouchTutorialModule1;->mTargetName:Ljava/lang/CharSequence;

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/AccessibilityTutorialActivity$TouchTutorialModule1;->addInstruction(I[Ljava/lang/Object;)V

    :cond_3f
    :goto_3f
    invoke-virtual {p1, v3}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_d

    :cond_43
    iget v0, p0, Lcom/android/settings/AccessibilityTutorialActivity$TouchTutorialModule1;->mTouched:I

    if-ne v0, v2, :cond_3f

    const v0, 0x7f0d071f

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/AccessibilityTutorialActivity$TouchTutorialModule1;->addInstruction(I[Ljava/lang/Object;)V

    goto :goto_3f

    :cond_50
    invoke-virtual {p0, v1}, Lcom/android/settings/AccessibilityTutorialActivity$TouchTutorialModule1;->hasFlag(I)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p0, Lcom/android/settings/AccessibilityTutorialActivity$TouchTutorialModule1;->mTargetPosition:I

    if-ne v0, v1, :cond_d

    invoke-virtual {p0, v4}, Lcom/android/settings/AccessibilityTutorialActivity$TouchTutorialModule1;->hasFlag(I)Z

    move-result v0

    if-nez v0, :cond_79

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v5, :cond_79

    iget-object v0, p0, Lcom/android/settings/AccessibilityTutorialActivity$TouchTutorialModule1;->mHandler:Lcom/android/settings/AccessibilityTutorialActivity$TouchTutorialModule1$HoverTargetHandler;

    invoke-virtual {v0}, Lcom/android/settings/AccessibilityTutorialActivity$TouchTutorialModule1$HoverTargetHandler;->enteredTarget()V

    invoke-virtual {p0, v4, v2}, Lcom/android/settings/AccessibilityTutorialActivity$TouchTutorialModule1;->setFlag(IZ)V

    goto :goto_d

    :cond_79
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_d

    iget-object v0, p0, Lcom/android/settings/AccessibilityTutorialActivity$TouchTutorialModule1;->mHandler:Lcom/android/settings/AccessibilityTutorialActivity$TouchTutorialModule1$HoverTargetHandler;

    invoke-virtual {v0}, Lcom/android/settings/AccessibilityTutorialActivity$TouchTutorialModule1$HoverTargetHandler;->exitedTarget()V

    goto :goto_d

    nop

    :pswitch_data_88
    .packed-switch 0x7f0a0006
        :pswitch_e
    .end packed-switch
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/16 v2, 0x8

    const/4 v4, 0x1

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/android/settings/AccessibilityTutorialActivity$TouchTutorialModule1;->hasFlag(I)Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-virtual {p0, v2}, Lcom/android/settings/AccessibilityTutorialActivity$TouchTutorialModule1;->hasFlag(I)Z

    move-result v1

    if-nez v1, :cond_30

    iget v1, p0, Lcom/android/settings/AccessibilityTutorialActivity$TouchTutorialModule1;->mTargetPosition:I

    if-ne p3, v1, :cond_30

    invoke-virtual {p0, v2, v4}, Lcom/android/settings/AccessibilityTutorialActivity$TouchTutorialModule1;->setFlag(IZ)V

    invoke-virtual {p0}, Lcom/android/settings/AccessibilityTutorialActivity$TouchTutorialModule1;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d0719

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const v1, 0x7f0d0723

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/AccessibilityTutorialActivity$TouchTutorialModule1;->addInstruction(I[Ljava/lang/Object;)V

    invoke-virtual {p0, v4}, Lcom/android/settings/AccessibilityTutorialActivity$TouchTutorialModule1;->setNextVisible(Z)V

    :cond_30
    return-void
.end method

.method public onShown()V
    .registers 7

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/settings/AccessibilityTutorialActivity$TouchTutorialModule1;->mAllApps:Landroid/widget/GridView;

    invoke-virtual {v2}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result v0

    iget-object v2, p0, Lcom/android/settings/AccessibilityTutorialActivity$TouchTutorialModule1;->mAllApps:Landroid/widget/GridView;

    invoke-virtual {v2}, Landroid/widget/GridView;->getLastVisiblePosition()I

    move-result v1

    iput v4, p0, Lcom/android/settings/AccessibilityTutorialActivity$TouchTutorialModule1;->mTargetPosition:I

    iget-object v2, p0, Lcom/android/settings/AccessibilityTutorialActivity$TouchTutorialModule1;->mAppsAdapter:Lcom/android/settings/AccessibilityTutorialActivity$AppsAdapter;

    iget v3, p0, Lcom/android/settings/AccessibilityTutorialActivity$TouchTutorialModule1;->mTargetPosition:I

    invoke-virtual {v2, v3}, Lcom/android/settings/AccessibilityTutorialActivity$AppsAdapter;->getLabel(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/AccessibilityTutorialActivity$TouchTutorialModule1;->mTargetName:Ljava/lang/CharSequence;

    const v2, 0x7f0d071e

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/AccessibilityTutorialActivity$TouchTutorialModule1;->addInstruction(I[Ljava/lang/Object;)V

    invoke-virtual {p0, v5, v5}, Lcom/android/settings/AccessibilityTutorialActivity$TouchTutorialModule1;->setFlag(IZ)V

    return-void
.end method
