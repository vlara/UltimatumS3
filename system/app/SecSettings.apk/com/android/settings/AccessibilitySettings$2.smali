.class Lcom/android/settings/AccessibilitySettings$2;
.super Landroid/database/ContentObserver;
.source "AccessibilitySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/AccessibilitySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AccessibilitySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/AccessibilitySettings;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Lcom/android/settings/AccessibilitySettings$2;->this$0:Lcom/android/settings/AccessibilitySettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings$2;->this$0:Lcom/android/settings/AccessibilitySettings;

    #getter for: Lcom/android/settings/AccessibilitySettings;->mToggleAutoRotateScreenPreference:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/settings/AccessibilitySettings;->access$300(Lcom/android/settings/AccessibilitySettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    if-eqz v1, :cond_21

    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings$2;->this$0:Lcom/android/settings/AccessibilitySettings;

    invoke-virtual {v1}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accelerometer_rotation"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_18

    const/4 v0, 0x1

    :cond_18
    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings$2;->this$0:Lcom/android/settings/AccessibilitySettings;

    #getter for: Lcom/android/settings/AccessibilitySettings;->mToggleAutoRotateScreenPreference:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/settings/AccessibilitySettings;->access$300(Lcom/android/settings/AccessibilitySettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_21
    return-void
.end method
