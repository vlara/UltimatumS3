.class public Lcom/android/systemui/statusbar/policy/quicksetting/DoNotDisturbQuickSettingButton;
.super Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;
.source "DoNotDisturbQuickSettingButton.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDoNotDisturb:Z

.field mPrefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 11
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    .line 19
    const/4 v2, 0x0

    const v3, 0x7f08008d

    const v4, 0x7f020145

    const v5, 0x7f020144

    move-object v0, p0

    move-object v1, p1

    move v7, v6

    move v8, v6

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIIIII)V

    .line 26
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DoNotDisturbQuickSettingButton;->mContext:Landroid/content/Context;

    .line 27
    invoke-virtual {p0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/DoNotDisturbQuickSettingButton;->setListener(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;)V

    .line 28
    return-void
.end method


# virtual methods
.method public deinit()V
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DoNotDisturbQuickSettingButton;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 56
    return-void
.end method

.method public init()V
    .registers 5

    .prologue
    .line 40
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DoNotDisturbQuickSettingButton;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/Prefs;->read(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DoNotDisturbQuickSettingButton;->mPrefs:Landroid/content/SharedPreferences;

    .line 42
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DoNotDisturbQuickSettingButton;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "do_not_disturb"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DoNotDisturbQuickSettingButton;->mDoNotDisturb:Z

    .line 44
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DoNotDisturbQuickSettingButton;->mDoNotDisturb:Z

    if-eqz v1, :cond_46

    const/4 v1, 0x2

    :goto_18
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/DoNotDisturbQuickSettingButton;->setActivateStatus(I)V

    .line 47
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DoNotDisturbQuickSettingButton;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/Prefs;->edit(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 48
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "do_not_disturb"

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DoNotDisturbQuickSettingButton;->mDoNotDisturb:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 49
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 51
    const-string v1, "systemui/quicksetting/QuickSettingButton"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() - mDoNotDisturb : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DoNotDisturbQuickSettingButton;->mDoNotDisturb:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    return-void

    .line 44
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_46
    const/4 v1, 0x1

    goto :goto_18
.end method

.method public onClick(Z)V
    .registers 8
    .parameter "state"

    .prologue
    const/4 v2, 0x1

    .line 59
    const-string v3, "systemui/quicksetting/QuickSettingButton"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onClick() - state : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    if-nez p1, :cond_36

    move v1, v2

    .line 62
    .local v1, newVal:Z
    :goto_1c
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DoNotDisturbQuickSettingButton;->mDoNotDisturb:Z

    if-eq v1, v3, :cond_35

    .line 63
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DoNotDisturbQuickSettingButton;->mDoNotDisturb:Z

    .line 64
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DoNotDisturbQuickSettingButton;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/Prefs;->edit(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 65
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "do_not_disturb"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 66
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 68
    if-eqz p1, :cond_38

    .line 69
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/quicksetting/DoNotDisturbQuickSettingButton;->setActivateStatus(I)V

    .line 74
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_35
    :goto_35
    return-void

    .line 61
    .end local v1           #newVal:Z
    :cond_36
    const/4 v1, 0x0

    goto :goto_1c

    .line 71
    .restart local v0       #editor:Landroid/content/SharedPreferences$Editor;
    .restart local v1       #newVal:Z
    :cond_38
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/quicksetting/DoNotDisturbQuickSettingButton;->setActivateStatus(I)V

    goto :goto_35
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 6
    .parameter "prefs"
    .parameter "key"

    .prologue
    .line 31
    const-string v1, "do_not_disturb"

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 33
    .local v0, val:Z
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DoNotDisturbQuickSettingButton;->mDoNotDisturb:Z

    if-eq v0, v1, :cond_d

    .line 34
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DoNotDisturbQuickSettingButton;->mDoNotDisturb:Z

    .line 37
    :cond_d
    return-void
.end method
