.class public Lcom/android/settings/AccessibilityEnableScriptInjectionPreference;
.super Landroid/preference/DialogPreference;
.source "AccessibilityEnableScriptInjectionPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/AccessibilityEnableScriptInjectionPreference$SavedState;
    }
.end annotation


# instance fields
.field private mInjectionAllowed:Z

.field private mSendClickAccessibilityEvent:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/android/settings/AccessibilityEnableScriptInjectionPreference;->updateSummary()V

    return-void
.end method

.method private sendAccessibilityEvent(Landroid/view/View;)V
    .registers 5

    invoke-virtual {p0}, Lcom/android/settings/AccessibilityEnableScriptInjectionPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/settings/AccessibilityEnableScriptInjectionPreference;->mSendClickAccessibilityEvent:Z

    if-eqz v2, :cond_23

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_23
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/settings/AccessibilityEnableScriptInjectionPreference;->mSendClickAccessibilityEvent:Z

    return-void
.end method

.method private setSystemSetting(Z)V
    .registers 5

    invoke-virtual {p0}, Lcom/android/settings/AccessibilityEnableScriptInjectionPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accessibility_script_injection"

    if-eqz p1, :cond_11

    const/4 v0, 0x1

    :goto_d
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_11
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private updateSummary()V
    .registers 3

    iget-boolean v0, p0, Lcom/android/settings/AccessibilityEnableScriptInjectionPreference;->mInjectionAllowed:Z

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lcom/android/settings/AccessibilityEnableScriptInjectionPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0d0595

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_f
    invoke-virtual {p0, v0}, Lcom/android/settings/AccessibilityEnableScriptInjectionPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    :cond_13
    invoke-virtual {p0}, Lcom/android/settings/AccessibilityEnableScriptInjectionPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0d0596

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_f
.end method


# virtual methods
.method public isInjectionAllowed()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/settings/AccessibilityEnableScriptInjectionPreference;->mInjectionAllowed:Z

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindView(Landroid/view/View;)V

    const v1, 0x1020010

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/AccessibilityEnableScriptInjectionPreference;->sendAccessibilityEvent(Landroid/view/View;)V

    return-void
.end method

.method protected onClick()V
    .registers 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/settings/AccessibilityEnableScriptInjectionPreference;->isInjectionAllowed()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p0, v1}, Lcom/android/settings/AccessibilityEnableScriptInjectionPreference;->setInjectionAllowed(Z)V

    invoke-direct {p0, v1}, Lcom/android/settings/AccessibilityEnableScriptInjectionPreference;->setSystemSetting(Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/AccessibilityEnableScriptInjectionPreference;->mSendClickAccessibilityEvent:Z

    :goto_10
    return-void

    :cond_11
    invoke-super {p0}, Landroid/preference/DialogPreference;->onClick()V

    iput-boolean v1, p0, Lcom/android/settings/AccessibilityEnableScriptInjectionPreference;->mSendClickAccessibilityEvent:Z

    goto :goto_10
.end method

.method protected onDialogClosed(Z)V
    .registers 3

    invoke-virtual {p0, p1}, Lcom/android/settings/AccessibilityEnableScriptInjectionPreference;->setInjectionAllowed(Z)V

    if-eqz p1, :cond_9

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/AccessibilityEnableScriptInjectionPreference;->setSystemSetting(Z)V

    :cond_9
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 4

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/android/settings/AccessibilityEnableScriptInjectionPreference$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    :cond_e
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :goto_11
    return-void

    :cond_12
    check-cast p1, Lcom/android/settings/AccessibilityEnableScriptInjectionPreference$SavedState;

    invoke-virtual {p1}, Lcom/android/settings/AccessibilityEnableScriptInjectionPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    #getter for: Lcom/android/settings/AccessibilityEnableScriptInjectionPreference$SavedState;->mInjectionAllowed:Z
    invoke-static {p1}, Lcom/android/settings/AccessibilityEnableScriptInjectionPreference$SavedState;->access$000(Lcom/android/settings/AccessibilityEnableScriptInjectionPreference$SavedState;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/AccessibilityEnableScriptInjectionPreference;->setInjectionAllowed(Z)V

    goto :goto_11
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 4

    invoke-super {p0}, Landroid/preference/DialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/AccessibilityEnableScriptInjectionPreference;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_b

    :goto_a
    return-object v1

    :cond_b
    new-instance v0, Lcom/android/settings/AccessibilityEnableScriptInjectionPreference$SavedState;

    invoke-direct {v0, v1}, Lcom/android/settings/AccessibilityEnableScriptInjectionPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget-boolean v2, p0, Lcom/android/settings/AccessibilityEnableScriptInjectionPreference;->mInjectionAllowed:Z

    #setter for: Lcom/android/settings/AccessibilityEnableScriptInjectionPreference$SavedState;->mInjectionAllowed:Z
    invoke-static {v0, v2}, Lcom/android/settings/AccessibilityEnableScriptInjectionPreference$SavedState;->access$002(Lcom/android/settings/AccessibilityEnableScriptInjectionPreference$SavedState;Z)Z

    move-object v1, v0

    goto :goto_a
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .registers 4

    if-eqz p1, :cond_c

    iget-boolean v0, p0, Lcom/android/settings/AccessibilityEnableScriptInjectionPreference;->mInjectionAllowed:Z

    invoke-virtual {p0, v0}, Lcom/android/settings/AccessibilityEnableScriptInjectionPreference;->getPersistedBoolean(Z)Z

    move-result v0

    :goto_8
    invoke-virtual {p0, v0}, Lcom/android/settings/AccessibilityEnableScriptInjectionPreference;->setInjectionAllowed(Z)V

    return-void

    :cond_c
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_8
.end method

.method public setInjectionAllowed(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/android/settings/AccessibilityEnableScriptInjectionPreference;->mInjectionAllowed:Z

    if-eq v0, p1, :cond_c

    iput-boolean p1, p0, Lcom/android/settings/AccessibilityEnableScriptInjectionPreference;->mInjectionAllowed:Z

    invoke-virtual {p0, p1}, Lcom/android/settings/AccessibilityEnableScriptInjectionPreference;->persistBoolean(Z)Z

    invoke-direct {p0}, Lcom/android/settings/AccessibilityEnableScriptInjectionPreference;->updateSummary()V

    :cond_c
    return-void
.end method
