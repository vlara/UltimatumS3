.class Lcom/android/settings/motion/MotionView$6;
.super Ljava/lang/Object;
.source "MotionView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/motion/MotionView;->showGuideDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/motion/MotionView;


# direct methods
.method constructor <init>(Lcom/android/settings/motion/MotionView;)V
    .registers 2

    iput-object p1, p0, Lcom/android/settings/motion/MotionView$6;->this$0:Lcom/android/settings/motion/MotionView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/settings/motion/MotionView$6;->this$0:Lcom/android/settings/motion/MotionView;

    #calls: Lcom/android/settings/motion/MotionView;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings/motion/MotionView;->access$900(Lcom/android/settings/motion/MotionView;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "motion_engine"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/android/settings/motion/MotionView$6;->this$0:Lcom/android/settings/motion/MotionView;

    #calls: Lcom/android/settings/motion/MotionView;->showMotionDialog()V
    invoke-static {v0}, Lcom/android/settings/motion/MotionView;->access$1000(Lcom/android/settings/motion/MotionView;)V

    :cond_14
    iget-object v0, p0, Lcom/android/settings/motion/MotionView$6;->this$0:Lcom/android/settings/motion/MotionView;

    #calls: Lcom/android/settings/motion/MotionView;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings/motion/MotionView;->access$1100(Lcom/android/settings/motion/MotionView;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/motion/MotionView$6;->this$0:Lcom/android/settings/motion/MotionView;

    #getter for: Lcom/android/settings/motion/MotionView;->mCurrentDB:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/motion/MotionView;->access$200(Lcom/android/settings/motion/MotionView;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/android/settings/motion/MotionView$6;->this$0:Lcom/android/settings/motion/MotionView;

    #calls: Lcom/android/settings/motion/MotionView;->startTryActually()V
    invoke-static {v0}, Lcom/android/settings/motion/MotionView;->access$800(Lcom/android/settings/motion/MotionView;)V

    :goto_2b
    return-void

    :cond_2c
    iget-object v0, p0, Lcom/android/settings/motion/MotionView$6;->this$0:Lcom/android/settings/motion/MotionView;

    #calls: Lcom/android/settings/motion/MotionView;->showMotionDialog()V
    invoke-static {v0}, Lcom/android/settings/motion/MotionView;->access$1000(Lcom/android/settings/motion/MotionView;)V

    goto :goto_2b
.end method
