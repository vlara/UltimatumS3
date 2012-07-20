.class Lcom/android/settings/sleepmode/SleepingModeEditor$9;
.super Ljava/lang/Object;
.source "SleepingModeEditor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/sleepmode/SleepingModeEditor;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/sleepmode/SleepingModeEditor;


# direct methods
.method constructor <init>(Lcom/android/settings/sleepmode/SleepingModeEditor;)V
    .registers 2

    iput-object p1, p0, Lcom/android/settings/sleepmode/SleepingModeEditor$9;->this$0:Lcom/android/settings/sleepmode/SleepingModeEditor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    iget-object v1, p0, Lcom/android/settings/sleepmode/SleepingModeEditor$9;->this$0:Lcom/android/settings/sleepmode/SleepingModeEditor;

    #getter for: Lcom/android/settings/sleepmode/SleepingModeEditor;->mEveryWeekCheckBox:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/android/settings/sleepmode/SleepingModeEditor;->access$200(Lcom/android/settings/sleepmode/SleepingModeEditor;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    iget-object v1, p0, Lcom/android/settings/sleepmode/SleepingModeEditor$9;->this$0:Lcom/android/settings/sleepmode/SleepingModeEditor;

    #getter for: Lcom/android/settings/sleepmode/SleepingModeEditor;->mEveryWeekCheckBox:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/android/settings/sleepmode/SleepingModeEditor;->access$200(Lcom/android/settings/sleepmode/SleepingModeEditor;)Landroid/widget/CheckBox;

    move-result-object v2

    if-nez v0, :cond_17

    const/4 v1, 0x1

    :goto_13
    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void

    :cond_17
    const/4 v1, 0x0

    goto :goto_13
.end method
