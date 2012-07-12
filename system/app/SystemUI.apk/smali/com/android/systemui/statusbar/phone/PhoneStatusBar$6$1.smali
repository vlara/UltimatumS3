.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$6$1;
.super Ljava/lang/Object;
.source "PhoneStatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar$6;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$6;

.field final synthetic val$mNotificationRowLayout:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

.field final synthetic val$snapshot:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar$6;Lcom/android/systemui/statusbar/policy/NotificationRowLayout;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$6$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$6;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$6$1;->val$mNotificationRowLayout:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$6$1;->val$snapshot:Ljava/util/ArrayList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    const/16 v0, 0xa

    const/16 v2, 0x8c

    const/4 v4, 0x0

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$6$1;->val$mNotificationRowLayout:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->setViewRemoval(Z)V

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$6$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$6;

    iget-object v8, v8, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$6;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    new-instance v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$6$1$1;

    invoke-direct {v9, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$6$1$1;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar$6$1;)V

    iput-object v9, v8, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPostCollapseCleanup:Ljava/lang/Runnable;

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$6$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$6;

    iget-object v8, v8, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$6;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v8, v8, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->screenWidthDp:I

    int-to-float v8, v8

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$6$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$6;

    iget-object v9, v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$6;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v9, v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v9, v9, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v7

    mul-int/lit8 v6, v7, 0x8

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$6$1;->val$snapshot:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    move-object v1, v5

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$6$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$6;

    iget-object v8, v8, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$6;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v8, v8, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;

    new-instance v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$6$1$2;

    invoke-direct {v9, p0, v1, v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$6$1$2;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar$6$1;Landroid/view/View;I)V

    int-to-long v10, v4

    invoke-virtual {v8, v9, v10, v11}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->postDelayed(Ljava/lang/Runnable;J)Z

    const/16 v8, 0x32

    add-int/lit8 v9, v2, -0xa

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/2addr v4, v2

    goto :goto_0

    :cond_0
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$6$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$6;

    iget-object v8, v8, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$6;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v8, v8, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;

    new-instance v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$6$1$3;

    invoke-direct {v9, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$6$1$3;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar$6$1;)V

    add-int/lit16 v10, v4, 0xe1

    int-to-long v10, v10

    invoke-virtual {v8, v9, v10, v11}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
