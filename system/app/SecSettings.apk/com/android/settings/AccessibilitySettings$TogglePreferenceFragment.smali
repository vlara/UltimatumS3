.class abstract Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "AccessibilitySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/AccessibilitySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "TogglePreferenceFragment"
.end annotation


# instance fields
.field private mDisableWarningMessage:Ljava/lang/CharSequence;

.field private mDisableWarningTitle:Ljava/lang/CharSequence;

.field private mEnableWarningMessage:Ljava/lang/CharSequence;

.field private mEnableWarningTitle:Ljava/lang/CharSequence;

.field private mOldActivityTitle:Ljava/lang/CharSequence;

.field private mPreferenceKey:Ljava/lang/String;

.field private mSettingsIntent:Landroid/content/Intent;

.field private mSettingsTitle:Ljava/lang/CharSequence;

.field private mShownDialogId:I

.field private mSummaryPreference:Landroid/preference/Preference;

.field private mToggleSwitch:Lcom/android/settings/AccessibilitySettings$ToggleSwitch;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/AccessibilitySettings$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;)Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->mEnableWarningMessage:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;)Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->mDisableWarningMessage:Ljava/lang/CharSequence;

    return-object v0
.end method

.method private installActionBarToggleSwitch()V
    .registers 3

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    #calls: Lcom/android/settings/AccessibilitySettings;->createAndAddActionBarToggleSwitch(Landroid/app/Activity;)Lcom/android/settings/AccessibilitySettings$ToggleSwitch;
    invoke-static {v0}, Lcom/android/settings/AccessibilitySettings;->access$1000(Landroid/app/Activity;)Lcom/android/settings/AccessibilitySettings$ToggleSwitch;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->mToggleSwitch:Lcom/android/settings/AccessibilitySettings$ToggleSwitch;

    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->mToggleSwitch:Lcom/android/settings/AccessibilitySettings$ToggleSwitch;

    new-instance v1, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment$2;

    invoke-direct {v1, p0}, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment$2;-><init>(Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/AccessibilitySettings$ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/settings/AccessibilitySettings$ToggleSwitch$OnBeforeCheckedChangeListener;)V

    return-void
.end method

.method private processArguments()V
    .registers 11

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v8, "preference_key"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    const-string v8, "checked"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iget-object v8, p0, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->mToggleSwitch:Lcom/android/settings/AccessibilitySettings$ToggleSwitch;

    invoke-virtual {v8, v2}, Lcom/android/settings/AccessibilitySettings$ToggleSwitch;->setCheckedInternal(Z)V

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    invoke-virtual {v0}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v8

    if-eqz v8, :cond_29

    invoke-virtual {v0}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v8

    if-eqz v8, :cond_44

    :cond_29
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->mOldActivityTitle:Ljava/lang/CharSequence;

    const-string v8, "title"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_44
    const-string v8, "summary"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v8, p0, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->mSummaryPreference:Landroid/preference/Preference;

    invoke-virtual {v8, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const-string v8, "settings_title"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v8, "settings_component_name"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_91

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_91

    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.intent.action.MAIN"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v4, v9}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_91

    iput-object v5, p0, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->mSettingsTitle:Ljava/lang/CharSequence;

    iput-object v4, p0, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->mSettingsIntent:Landroid/content/Intent;

    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->setHasOptionsMenu(Z)V

    :cond_91
    const-string v8, "enable_warning_title"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->mEnableWarningTitle:Ljava/lang/CharSequence;

    const-string v8, "enable_warning_message"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->mEnableWarningMessage:Ljava/lang/CharSequence;

    const-string v8, "disable_warning_title"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->mDisableWarningTitle:Ljava/lang/CharSequence;

    const-string v8, "disable_warning_message"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->mDisableWarningMessage:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7

    const/4 v1, 0x0

    const/4 v0, 0x1

    packed-switch p2, :pswitch_data_2e

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :pswitch_b
    iget v2, p0, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->mShownDialogId:I

    if-ne v2, v0, :cond_1a

    :goto_f
    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->mToggleSwitch:Lcom/android/settings/AccessibilitySettings$ToggleSwitch;

    invoke-virtual {v1, v0}, Lcom/android/settings/AccessibilitySettings$ToggleSwitch;->setCheckedInternal(Z)V

    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->onPreferenceToggled(Ljava/lang/String;Z)V

    :goto_19
    return-void

    :cond_1a
    move v0, v1

    goto :goto_f

    :pswitch_1c
    iget v2, p0, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->mShownDialogId:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2c

    :goto_21
    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->mToggleSwitch:Lcom/android/settings/AccessibilitySettings$ToggleSwitch;

    invoke-virtual {v1, v0}, Lcom/android/settings/AccessibilitySettings$ToggleSwitch;->setCheckedInternal(Z)V

    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->onPreferenceToggled(Ljava/lang/String;Z)V

    goto :goto_19

    :cond_2c
    move v0, v1

    goto :goto_21

    :pswitch_data_2e
    .packed-switch -0x2
        :pswitch_1c
        :pswitch_b
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    new-instance v1, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment$1;

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment$1;-><init>(Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->mSummaryPreference:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->mSummaryPreference:Landroid/preference/Preference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setPersistent(Z)V

    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->mSummaryPreference:Landroid/preference/Preference;

    const v2, 0x7f0400ba

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setLayoutResource(I)V

    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->mSummaryPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .registers 7

    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_48

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    :pswitch_c
    iput v4, p0, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->mShownDialogId:I

    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->mEnableWarningTitle:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->mEnableWarningMessage:Ljava/lang/CharSequence;

    :goto_12
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1010355

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    invoke-virtual {v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x104

    invoke-virtual {v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2

    :pswitch_40
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->mShownDialogId:I

    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->mDisableWarningTitle:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->mDisableWarningMessage:Ljava/lang/CharSequence;

    goto :goto_12

    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_c
        :pswitch_40
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 5

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->mSettingsTitle:Ljava/lang/CharSequence;

    invoke-interface {p1, v1}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->mSettingsIntent:Landroid/content/Intent;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    return-void
.end method

.method public onDestroyView()V
    .registers 4

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->mOldActivityTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->mOldActivityTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_1d
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->mToggleSwitch:Lcom/android/settings/AccessibilitySettings$ToggleSwitch;

    invoke-virtual {v0, v2}, Lcom/android/settings/AccessibilitySettings$ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/settings/AccessibilitySettings$ToggleSwitch$OnBeforeCheckedChangeListener;)V

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    return-void
.end method

.method public abstract onPreferenceToggled(Ljava/lang/String;Z)V
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->installActionBarToggleSwitch()V

    invoke-direct {p0}, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->processArguments()V

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEnabled(Z)V

    return-void
.end method
