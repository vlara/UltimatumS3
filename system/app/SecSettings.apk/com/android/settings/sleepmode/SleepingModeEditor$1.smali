.class Lcom/android/settings/sleepmode/SleepingModeEditor$1;
.super Ljava/lang/Object;
.source "SleepingModeEditor.java"

# interfaces
.implements Landroid/widget/TimePicker$OnTimeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/sleepmode/SleepingModeEditor;->onCreate(Landroid/os/Bundle;)V
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

    iput-object p1, p0, Lcom/android/settings/sleepmode/SleepingModeEditor$1;->this$0:Lcom/android/settings/sleepmode/SleepingModeEditor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeChanged(Landroid/widget/TimePicker;II)V
    .registers 6

    iget-object v0, p0, Lcom/android/settings/sleepmode/SleepingModeEditor$1;->this$0:Lcom/android/settings/sleepmode/SleepingModeEditor;

    const/4 v1, 0x1

    #calls: Lcom/android/settings/sleepmode/SleepingModeEditor;->updateDisplay(IIZ)V
    invoke-static {v0, p2, p3, v1}, Lcom/android/settings/sleepmode/SleepingModeEditor;->access$100(Lcom/android/settings/sleepmode/SleepingModeEditor;IIZ)V

    return-void
.end method
