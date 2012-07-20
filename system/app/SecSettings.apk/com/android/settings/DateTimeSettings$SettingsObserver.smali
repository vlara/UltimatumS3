.class Lcom/android/settings/DateTimeSettings$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "DateTimeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DateTimeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DateTimeSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/DateTimeSettings;Landroid/os/Handler;)V
    .registers 6

    iput-object p1, p0, Lcom/android/settings/DateTimeSettings$SettingsObserver;->this$0:Lcom/android/settings/DateTimeSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    invoke-virtual {p1}, Lcom/android/settings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "auto_time"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 9

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object v4, p0, Lcom/android/settings/DateTimeSettings$SettingsObserver;->this$0:Lcom/android/settings/DateTimeSettings;

    invoke-virtual {v4}, Lcom/android/settings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "device_provisioned"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_64

    move v1, v2

    :goto_14
    iget-object v4, p0, Lcom/android/settings/DateTimeSettings$SettingsObserver;->this$0:Lcom/android/settings/DateTimeSettings;

    invoke-virtual {v4}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    if-eqz v4, :cond_63

    if-nez v1, :cond_63

    iget-object v4, p0, Lcom/android/settings/DateTimeSettings$SettingsObserver;->this$0:Lcom/android/settings/DateTimeSettings;

    const-string v5, "auto_time"

    #calls: Lcom/android/settings/DateTimeSettings;->getAutoState(Ljava/lang/String;)Z
    invoke-static {v4, v5}, Lcom/android/settings/DateTimeSettings;->access$000(Lcom/android/settings/DateTimeSettings;Ljava/lang/String;)Z

    move-result v0

    const-string v4, "DateTimeSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SettingsObserver onChange getAutoState() return : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/settings/DateTimeSettings$SettingsObserver;->this$0:Lcom/android/settings/DateTimeSettings;

    #getter for: Lcom/android/settings/DateTimeSettings;->mAutoTimePref:Landroid/preference/CheckBoxPreference;
    invoke-static {v4}, Lcom/android/settings/DateTimeSettings;->access$100(Lcom/android/settings/DateTimeSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v4, p0, Lcom/android/settings/DateTimeSettings$SettingsObserver;->this$0:Lcom/android/settings/DateTimeSettings;

    #getter for: Lcom/android/settings/DateTimeSettings;->mTimePref:Landroid/preference/Preference;
    invoke-static {v4}, Lcom/android/settings/DateTimeSettings;->access$200(Lcom/android/settings/DateTimeSettings;)Landroid/preference/Preference;

    move-result-object v5

    if-nez v0, :cond_66

    move v4, v2

    :goto_50
    invoke-virtual {v5, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v4, p0, Lcom/android/settings/DateTimeSettings$SettingsObserver;->this$0:Lcom/android/settings/DateTimeSettings;

    #getter for: Lcom/android/settings/DateTimeSettings;->mDatePref:Landroid/preference/Preference;
    invoke-static {v4}, Lcom/android/settings/DateTimeSettings;->access$300(Lcom/android/settings/DateTimeSettings;)Landroid/preference/Preference;

    move-result-object v4

    if-nez v0, :cond_68

    :goto_5b
    invoke-virtual {v4, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/DateTimeSettings$SettingsObserver;->this$0:Lcom/android/settings/DateTimeSettings;

    #calls: Lcom/android/settings/DateTimeSettings;->applyEDMDateTimeChangePolicy()V
    invoke-static {v2}, Lcom/android/settings/DateTimeSettings;->access$400(Lcom/android/settings/DateTimeSettings;)V

    :cond_63
    return-void

    :cond_64
    move v1, v3

    goto :goto_14

    :cond_66
    move v4, v3

    goto :goto_50

    :cond_68
    move v2, v3

    goto :goto_5b
.end method
