.class Lcom/android/settings/sleepmode/SleepingModeEditor$MyBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SleepingModeEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/sleepmode/SleepingModeEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/sleepmode/SleepingModeEditor;


# direct methods
.method private constructor <init>(Lcom/android/settings/sleepmode/SleepingModeEditor;)V
    .registers 2

    iput-object p1, p0, Lcom/android/settings/sleepmode/SleepingModeEditor$MyBroadcastReceiver;->this$0:Lcom/android/settings/sleepmode/SleepingModeEditor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/sleepmode/SleepingModeEditor;Lcom/android/settings/sleepmode/SleepingModeEditor$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/settings/sleepmode/SleepingModeEditor$MyBroadcastReceiver;-><init>(Lcom/android/settings/sleepmode/SleepingModeEditor;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12

    const/4 v2, -0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string v0, "android.intent.action.TIME_SET"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/android/settings/sleepmode/SleepingModeEditor$MyBroadcastReceiver;->this$0:Lcom/android/settings/sleepmode/SleepingModeEditor;

    move-object v1, p1

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, v2

    move v7, v2

    #calls: Lcom/android/settings/sleepmode/SleepingModeEditor;->initTime(Landroid/content/Context;IIIIII)V
    invoke-static/range {v0 .. v7}, Lcom/android/settings/sleepmode/SleepingModeEditor;->access$300(Lcom/android/settings/sleepmode/SleepingModeEditor;Landroid/content/Context;IIIIII)V

    iget-object v0, p0, Lcom/android/settings/sleepmode/SleepingModeEditor$MyBroadcastReceiver;->this$0:Lcom/android/settings/sleepmode/SleepingModeEditor;

    #getter for: Lcom/android/settings/sleepmode/SleepingModeEditor;->mMainView:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/settings/sleepmode/SleepingModeEditor;->access$400(Lcom/android/settings/sleepmode/SleepingModeEditor;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/android/settings/sleepmode/SleepingModeEditor$MyBroadcastReceiver;->this$0:Lcom/android/settings/sleepmode/SleepingModeEditor;

    #getter for: Lcom/android/settings/sleepmode/SleepingModeEditor;->mMainView:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/settings/sleepmode/SleepingModeEditor;->access$400(Lcom/android/settings/sleepmode/SleepingModeEditor;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestLayout()V

    :cond_29
    return-void
.end method
