.class abstract Lcom/android/settings/AccessibilityTutorialActivity$TutorialModule;
.super Landroid/widget/FrameLayout;
.source "AccessibilityTutorialActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/AccessibilityTutorialActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "TutorialModule"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/AccessibilityTutorialActivity$TutorialModule$InstructionHandler;
    }
.end annotation


# instance fields
.field private final mBack:Landroid/widget/Button;

.field private final mController:Lcom/android/settings/AccessibilityTutorialActivity;

.field private final mFinish:Landroid/widget/Button;

.field private mFlags:J

.field private mHandler:Lcom/android/settings/AccessibilityTutorialActivity$TutorialModule$InstructionHandler;

.field private final mInstructions:Landroid/widget/TextView;

.field private mIsVisible:Z

.field private final mNext:Landroid/widget/Button;

.field private final mSkip:Landroid/widget/Button;

.field private final mTitleResId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/AccessibilityTutorialActivity;II)V
    .registers 11

    const/4 v5, 0x1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/android/settings/AccessibilityTutorialActivity$TutorialModule$InstructionHandler;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/settings/AccessibilityTutorialActivity$TutorialModule$InstructionHandler;-><init>(Lcom/android/settings/AccessibilityTutorialActivity$TutorialModule;Lcom/android/settings/AccessibilityTutorialActivity$1;)V

    iput-object v3, p0, Lcom/android/settings/AccessibilityTutorialActivity$TutorialModule;->mHandler:Lcom/android/settings/AccessibilityTutorialActivity$TutorialModule$InstructionHandler;

    iput-object p2, p0, Lcom/android/settings/AccessibilityTutorialActivity$TutorialModule;->mController:Lcom/android/settings/AccessibilityTutorialActivity;

    iput p4, p0, Lcom/android/settings/AccessibilityTutorialActivity$TutorialModule;->mTitleResId:I

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f040004

    invoke-virtual {v3, v4, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v3, 0x7f0a0008

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/AccessibilityTutorialActivity$TutorialModule;->mInstructions:Landroid/widget/TextView;

    const v3, 0x7f0a0009

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/settings/AccessibilityTutorialActivity$TutorialModule;->mSkip:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/settings/AccessibilityTutorialActivity$TutorialModule;->mSkip:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f0a000a

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/settings/AccessibilityTutorialActivity$TutorialModule;->mBack:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/settings/AccessibilityTutorialActivity$TutorialModule;->mBack:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f0a000b

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/settings/AccessibilityTutorialActivity$TutorialModule;->mNext:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/settings/AccessibilityTutorialActivity$TutorialModule;->mNext:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f0a000c

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/settings/AccessibilityTutorialActivity$TutorialModule;->mFinish:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/settings/AccessibilityTutorialActivity$TutorialModule;->mFinish:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f0a000d

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_74

    invoke-virtual {v2, p4}, Landroid/widget/TextView;->setText(I)V

    :cond_74
    const v3, 0x7f0a0007

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    invoke-virtual {v3, p3, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/AccessibilityTutorialActivity$TutorialModule;Ljava/lang/CharSequence;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/settings/AccessibilityTutorialActivity$TutorialModule;->addInstructionSync(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private addInstructionSync(Ljava/lang/CharSequence;)V
    .registers 4

    iget-object v0, p0, Lcom/android/settings/AccessibilityTutorialActivity$TutorialModule;->mInstructions:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/AccessibilityTutorialActivity$TutorialModule;->mInstructions:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/AccessibilityTutorialActivity$TutorialModule;->mInstructions:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->sendAccessibilityEvent(I)V

    return-void
.end method


# virtual methods
.method public final activate()V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/AccessibilityTutorialActivity$TutorialModule;->mIsVisible:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/settings/AccessibilityTutorialActivity$TutorialModule;->mFlags:J

    iget-object v0, p0, Lcom/android/settings/AccessibilityTutorialActivity$TutorialModule;->mInstructions:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/AccessibilityTutorialActivity$TutorialModule;->mController:Lcom/android/settings/AccessibilityTutorialActivity;

    iget v1, p0, Lcom/android/settings/AccessibilityTutorialActivity$TutorialModule;->mTitleResId:I

    invoke-virtual {v0, v1}, Lcom/android/settings/AccessibilityTutorialActivity;->setTitle(I)V

    invoke-virtual {p0}, Lcom/android/settings/AccessibilityTutorialActivity$TutorialModule;->onShown()V

    return-void
.end method

.method protected varargs addInstruction(I[Ljava/lang/Object;)V
    .registers 5

    iget-boolean v1, p0, Lcom/android/settings/AccessibilityTutorialActivity$TutorialModule;->mIsVisible:Z

    if-nez v1, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v1, p0, Lcom/android/settings/AccessibilityTutorialActivity$TutorialModule;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/AccessibilityTutorialActivity$TutorialModule;->mHandler:Lcom/android/settings/AccessibilityTutorialActivity$TutorialModule$InstructionHandler;

    invoke-virtual {v1, v0}, Lcom/android/settings/AccessibilityTutorialActivity$TutorialModule$InstructionHandler;->addInstruction(Ljava/lang/String;)V

    goto :goto_4
.end method

.method public deactivate()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/AccessibilityTutorialActivity$TutorialModule;->mIsVisible:Z

    iget-object v0, p0, Lcom/android/settings/AccessibilityTutorialActivity$TutorialModule;->mController:Lcom/android/settings/AccessibilityTutorialActivity;

    #calls: Lcom/android/settings/AccessibilityTutorialActivity;->interrupt()V
    invoke-static {v0}, Lcom/android/settings/AccessibilityTutorialActivity;->access$700(Lcom/android/settings/AccessibilityTutorialActivity;)V

    return-void
.end method

.method protected hasFlag(I)Z
    .registers 6

    iget-wide v0, p0, Lcom/android/settings/AccessibilityTutorialActivity$TutorialModule;->mFlags:J

    int-to-long v2, p1

    and-long/2addr v0, v2

    int-to-long v2, p1

    cmp-long v0, v0, v2

    if-nez v0, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_20

    :goto_7
    return-void

    :pswitch_8
    iget-object v0, p0, Lcom/android/settings/AccessibilityTutorialActivity$TutorialModule;->mController:Lcom/android/settings/AccessibilityTutorialActivity;

    invoke-virtual {v0}, Lcom/android/settings/AccessibilityTutorialActivity;->finish()V

    goto :goto_7

    :pswitch_e
    iget-object v0, p0, Lcom/android/settings/AccessibilityTutorialActivity$TutorialModule;->mController:Lcom/android/settings/AccessibilityTutorialActivity;

    #calls: Lcom/android/settings/AccessibilityTutorialActivity;->previous()V
    invoke-static {v0}, Lcom/android/settings/AccessibilityTutorialActivity;->access$800(Lcom/android/settings/AccessibilityTutorialActivity;)V

    goto :goto_7

    :pswitch_14
    iget-object v0, p0, Lcom/android/settings/AccessibilityTutorialActivity$TutorialModule;->mController:Lcom/android/settings/AccessibilityTutorialActivity;

    #calls: Lcom/android/settings/AccessibilityTutorialActivity;->next()V
    invoke-static {v0}, Lcom/android/settings/AccessibilityTutorialActivity;->access$900(Lcom/android/settings/AccessibilityTutorialActivity;)V

    goto :goto_7

    :pswitch_1a
    iget-object v0, p0, Lcom/android/settings/AccessibilityTutorialActivity$TutorialModule;->mController:Lcom/android/settings/AccessibilityTutorialActivity;

    invoke-virtual {v0}, Lcom/android/settings/AccessibilityTutorialActivity;->finish()V

    goto :goto_7

    :pswitch_data_20
    .packed-switch 0x7f0a0009
        :pswitch_8
        :pswitch_e
        :pswitch_14
        :pswitch_1a
    .end packed-switch
.end method

.method public abstract onShown()V
.end method

.method protected setBackVisible(Z)V
    .registers 4

    iget-object v1, p0, Lcom/android/settings/AccessibilityTutorialActivity$TutorialModule;->mBack:Landroid/widget/Button;

    if-eqz p1, :cond_9

    const/4 v0, 0x0

    :goto_5
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    return-void

    :cond_9
    const/16 v0, 0x8

    goto :goto_5
.end method

.method protected setFinishVisible(Z)V
    .registers 4

    iget-object v1, p0, Lcom/android/settings/AccessibilityTutorialActivity$TutorialModule;->mFinish:Landroid/widget/Button;

    if-eqz p1, :cond_9

    const/4 v0, 0x0

    :goto_5
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    return-void

    :cond_9
    const/16 v0, 0x8

    goto :goto_5
.end method

.method protected setFlag(IZ)V
    .registers 9

    const-wide/16 v4, -0x1

    if-eqz p2, :cond_b

    iget-wide v0, p0, Lcom/android/settings/AccessibilityTutorialActivity$TutorialModule;->mFlags:J

    int-to-long v2, p1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/settings/AccessibilityTutorialActivity$TutorialModule;->mFlags:J

    :goto_a
    return-void

    :cond_b
    iget-wide v0, p0, Lcom/android/settings/AccessibilityTutorialActivity$TutorialModule;->mFlags:J

    xor-long/2addr v0, v4

    int-to-long v2, p1

    or-long/2addr v0, v2

    xor-long/2addr v0, v4

    iput-wide v0, p0, Lcom/android/settings/AccessibilityTutorialActivity$TutorialModule;->mFlags:J

    goto :goto_a
.end method

.method protected setNextVisible(Z)V
    .registers 4

    iget-object v1, p0, Lcom/android/settings/AccessibilityTutorialActivity$TutorialModule;->mNext:Landroid/widget/Button;

    if-eqz p1, :cond_9

    const/4 v0, 0x0

    :goto_5
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    return-void

    :cond_9
    const/16 v0, 0x8

    goto :goto_5
.end method

.method protected setSkipVisible(Z)V
    .registers 4

    iget-object v1, p0, Lcom/android/settings/AccessibilityTutorialActivity$TutorialModule;->mSkip:Landroid/widget/Button;

    if-eqz p1, :cond_9

    const/4 v0, 0x0

    :goto_5
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    return-void

    :cond_9
    const/16 v0, 0x8

    goto :goto_5
.end method
