.class Lcom/android/settings/sleepmode/SleepingModeReceiver$1;
.super Landroid/telephony/PhoneStateListener;
.source "SleepingModeReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/sleepmode/SleepingModeReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/sleepmode/SleepingModeReceiver;


# direct methods
.method constructor <init>(Lcom/android/settings/sleepmode/SleepingModeReceiver;)V
    .registers 2

    iput-object p1, p0, Lcom/android/settings/sleepmode/SleepingModeReceiver$1;->this$0:Lcom/android/settings/sleepmode/SleepingModeReceiver;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .registers 6

    const/4 v2, 0x0

    if-nez p1, :cond_53

    iget-object v0, p0, Lcom/android/settings/sleepmode/SleepingModeReceiver$1;->this$0:Lcom/android/settings/sleepmode/SleepingModeReceiver;

    #getter for: Lcom/android/settings/sleepmode/SleepingModeReceiver;->mSharedPreference:Landroid/content/SharedPreferences;
    invoke-static {v0}, Lcom/android/settings/sleepmode/SleepingModeReceiver;->access$000(Lcom/android/settings/sleepmode/SleepingModeReceiver;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "sleeping_mode_suspended"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_53

    iget-object v0, p0, Lcom/android/settings/sleepmode/SleepingModeReceiver$1;->this$0:Lcom/android/settings/sleepmode/SleepingModeReceiver;

    iget-object v1, p0, Lcom/android/settings/sleepmode/SleepingModeReceiver$1;->this$0:Lcom/android/settings/sleepmode/SleepingModeReceiver;

    #getter for: Lcom/android/settings/sleepmode/SleepingModeReceiver;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/sleepmode/SleepingModeReceiver;->access$100(Lcom/android/settings/sleepmode/SleepingModeReceiver;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    #calls: Lcom/android/settings/sleepmode/SleepingModeReceiver;->enterSleepingMode(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lcom/android/settings/sleepmode/SleepingModeReceiver;->access$200(Lcom/android/settings/sleepmode/SleepingModeReceiver;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/settings/sleepmode/SleepingModeReceiver$1;->this$0:Lcom/android/settings/sleepmode/SleepingModeReceiver;

    #getter for: Lcom/android/settings/sleepmode/SleepingModeReceiver;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/sleepmode/SleepingModeReceiver;->access$100(Lcom/android/settings/sleepmode/SleepingModeReceiver;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0d09bc

    invoke-static {v0, v1}, Lcom/android/settings/sleepmode/SleepingMode;->notifySleepingMode(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/android/settings/sleepmode/SleepingModeReceiver$1;->this$0:Lcom/android/settings/sleepmode/SleepingModeReceiver;

    iget-object v1, p0, Lcom/android/settings/sleepmode/SleepingModeReceiver$1;->this$0:Lcom/android/settings/sleepmode/SleepingModeReceiver;

    #getter for: Lcom/android/settings/sleepmode/SleepingModeReceiver;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/sleepmode/SleepingModeReceiver;->access$100(Lcom/android/settings/sleepmode/SleepingModeReceiver;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    #calls: Lcom/android/settings/sleepmode/SleepingModeReceiver;->setNextTimeAction(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lcom/android/settings/sleepmode/SleepingModeReceiver;->access$300(Lcom/android/settings/sleepmode/SleepingModeReceiver;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/settings/sleepmode/SleepingModeReceiver$1;->this$0:Lcom/android/settings/sleepmode/SleepingModeReceiver;

    #getter for: Lcom/android/settings/sleepmode/SleepingModeReceiver;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v0}, Lcom/android/settings/sleepmode/SleepingModeReceiver;->access$400(Lcom/android/settings/sleepmode/SleepingModeReceiver;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "sleeping_mode_suspended"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/android/settings/sleepmode/SleepingModeReceiver$1;->this$0:Lcom/android/settings/sleepmode/SleepingModeReceiver;

    #getter for: Lcom/android/settings/sleepmode/SleepingModeReceiver;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v0}, Lcom/android/settings/sleepmode/SleepingModeReceiver;->access$400(Lcom/android/settings/sleepmode/SleepingModeReceiver;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_53
    return-void
.end method
