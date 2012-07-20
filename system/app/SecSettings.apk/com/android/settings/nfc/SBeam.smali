.class public Lcom/android/settings/nfc/SBeam;
.super Landroid/app/Fragment;
.source "SBeam.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field activity:Landroid/app/Activity;

.field context:Landroid/content/Context;

.field frameAnimation:Landroid/graphics/drawable/AnimationDrawable;

.field img_sbeam:Landroid/widget/ImageView;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

.field private mSharedPreference:Landroid/content/SharedPreferences;

.field private mView:Landroid/view/View;

.field private needRefresh:Z

.field private waitingNfcTurnOn:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    iput-object v1, p0, Lcom/android/settings/nfc/SBeam;->activity:Landroid/app/Activity;

    iput-object v1, p0, Lcom/android/settings/nfc/SBeam;->context:Landroid/content/Context;

    iput-boolean v0, p0, Lcom/android/settings/nfc/SBeam;->waitingNfcTurnOn:Z

    iput-boolean v0, p0, Lcom/android/settings/nfc/SBeam;->needRefresh:Z

    new-instance v0, Lcom/android/settings/nfc/SBeam$1;

    invoke-direct {v0, p0}, Lcom/android/settings/nfc/SBeam$1;-><init>(Lcom/android/settings/nfc/SBeam;)V

    iput-object v0, p0, Lcom/android/settings/nfc/SBeam;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/nfc/SBeam;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/settings/nfc/SBeam;->handleNfcStateChanged(I)V

    return-void
.end method

.method private handleNfcStateChanged(I)V
    .registers 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_5e

    :cond_5
    :goto_5
    return-void

    :pswitch_6
    iget-boolean v0, p0, Lcom/android/settings/nfc/SBeam;->waitingNfcTurnOn:Z

    if-eqz v0, :cond_c

    iput-boolean v1, p0, Lcom/android/settings/nfc/SBeam;->waitingNfcTurnOn:Z

    :cond_c
    iget-object v0, p0, Lcom/android/settings/nfc/SBeam;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_5

    :pswitch_12
    iget-boolean v0, p0, Lcom/android/settings/nfc/SBeam;->waitingNfcTurnOn:Z

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/android/settings/nfc/SBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/android/settings/nfc/SBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result v0

    if-nez v0, :cond_27

    iget-object v0, p0, Lcom/android/settings/nfc/SBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->enableNdefPush()Z

    :cond_27
    iput-boolean v1, p0, Lcom/android/settings/nfc/SBeam;->waitingNfcTurnOn:Z

    :cond_29
    iget-object v0, p0, Lcom/android/settings/nfc/SBeam;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/nfc/SBeam;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/settings/nfc/SBeam;->needRefresh:Z

    if-eqz v0, :cond_5

    iput-boolean v1, p0, Lcom/android/settings/nfc/SBeam;->needRefresh:Z

    iget-object v0, p0, Lcom/android/settings/nfc/SBeam;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->recreate()V

    goto :goto_5

    :pswitch_3e
    iget-object v0, p0, Lcom/android/settings/nfc/SBeam;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_5

    :pswitch_44
    iget-object v0, p0, Lcom/android/settings/nfc/SBeam;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_5

    :pswitch_4a
    iget-object v0, p0, Lcom/android/settings/nfc/SBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_57

    iget-boolean v0, p0, Lcom/android/settings/nfc/SBeam;->waitingNfcTurnOn:Z

    if-eqz v0, :cond_57

    iget-object v0, p0, Lcom/android/settings/nfc/SBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->readerEnable()Z

    :cond_57
    iget-object v0, p0, Lcom/android/settings/nfc/SBeam;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_5

    nop

    :pswitch_data_5e
    .packed-switch 0x1
        :pswitch_6
        :pswitch_3e
        :pswitch_12
        :pswitch_44
        :pswitch_4a
    .end packed-switch
.end method

.method private initView(Landroid/view/View;)V
    .registers 6

    iget-object v0, p0, Lcom/android/settings/nfc/SBeam;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/android/settings/nfc/SBeam;->mActionBarSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/android/settings/nfc/SBeam;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v2, "SBeam_on_off"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 8

    const/4 v4, 0x5

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/settings/nfc/SBeam;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/nfc/SBeam;->context:Landroid/content/Context;

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/android/settings/nfc/SBeam;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/nfc/SBeam;->context:Landroid/content/Context;

    :cond_14
    iget-object v0, p0, Lcom/android/settings/nfc/SBeam;->mSharedPreference:Landroid/content/SharedPreferences;

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/android/settings/nfc/SBeam;->context:Landroid/content/Context;

    const-string v1, "pref_sbeam"

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/nfc/SBeam;->mSharedPreference:Landroid/content/SharedPreferences;

    :cond_22
    if-eqz p2, :cond_82

    iget-object v0, p0, Lcom/android/settings/nfc/SBeam;->mSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/nfc/SBeam;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/android/settings/nfc/SBeam;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "SBeam_on_off"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/android/settings/nfc/SBeam;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/android/settings/nfc/SBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_66

    iget-object v0, p0, Lcom/android/settings/nfc/SBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    if-ne v0, v4, :cond_4c

    iput-boolean v2, p0, Lcom/android/settings/nfc/SBeam;->waitingNfcTurnOn:Z

    iget-object v0, p0, Lcom/android/settings/nfc/SBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->readerEnable()Z

    :goto_4b
    return-void

    :cond_4c
    iget-object v0, p0, Lcom/android/settings/nfc/SBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_66

    iget-object v0, p0, Lcom/android/settings/nfc/SBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_66

    iput-boolean v2, p0, Lcom/android/settings/nfc/SBeam;->waitingNfcTurnOn:Z

    iget-object v0, p0, Lcom/android/settings/nfc/SBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->enable()Z

    goto :goto_4b

    :cond_66
    iget-object v0, p0, Lcom/android/settings/nfc/SBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_77

    iget-object v0, p0, Lcom/android/settings/nfc/SBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result v0

    if-nez v0, :cond_77

    iget-object v0, p0, Lcom/android/settings/nfc/SBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->enableNdefPush()Z

    :cond_77
    :goto_77
    iget-object v0, p0, Lcom/android/settings/nfc/SBeam;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p2}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/nfc/SBeam;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_4b

    :cond_82
    iget-object v0, p0, Lcom/android/settings/nfc/SBeam;->mSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/nfc/SBeam;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/android/settings/nfc/SBeam;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "SBeam_on_off"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/android/settings/nfc/SBeam;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_77
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-boolean v0, p0, Lcom/android/settings/nfc/SBeam;->waitingNfcTurnOn:Z

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/nfc/SBeam;->needRefresh:Z

    :cond_a
    :goto_a
    return-void

    :cond_b
    iget-object v0, p0, Lcom/android/settings/nfc/SBeam;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/settings/nfc/SBeam;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->recreate()V

    goto :goto_a
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 10

    const/16 v4, 0x10

    const/4 v7, -0x2

    const/4 v6, 0x0

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/nfc/SBeam;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/nfc/SBeam;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/settings/nfc/SBeam;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/nfc/SBeam;->context:Landroid/content/Context;

    new-instance v2, Landroid/widget/Switch;

    iget-object v3, p0, Lcom/android/settings/nfc/SBeam;->activity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/nfc/SBeam;->mActionBarSwitch:Landroid/widget/Switch;

    iget-object v2, p0, Lcom/android/settings/nfc/SBeam;->activity:Landroid/app/Activity;

    instance-of v2, v2, Landroid/preference/PreferenceActivity;

    if-eqz v2, :cond_6d

    iget-object v1, p0, Lcom/android/settings/nfc/SBeam;->activity:Landroid/app/Activity;

    check-cast v1, Landroid/preference/PreferenceActivity;

    invoke-virtual {v1}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v2

    if-nez v2, :cond_34

    invoke-virtual {v1}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v2

    if-nez v2, :cond_6d

    :cond_34
    iget-object v2, p0, Lcom/android/settings/nfc/SBeam;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v2, p0, Lcom/android/settings/nfc/SBeam;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v6, v6, v0, v6}, Landroid/widget/Switch;->setPadding(IIII)V

    iget-object v2, p0, Lcom/android/settings/nfc/SBeam;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v4, v4}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    iget-object v2, p0, Lcom/android/settings/nfc/SBeam;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/nfc/SBeam;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v4, Landroid/app/ActionBar$LayoutParams;

    const/16 v5, 0x15

    invoke-direct {v4, v7, v7, v5}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v3, v4}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    iget-object v2, p0, Lcom/android/settings/nfc/SBeam;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    const v3, 0x7f0d01e1

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setTitle(I)V

    :cond_6d
    iget-object v2, p0, Lcom/android/settings/nfc/SBeam;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v2, p0, Lcom/android/settings/nfc/SBeam;->activity:Landroid/app/Activity;

    invoke-static {v2}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/nfc/SBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    iget-object v2, p0, Lcom/android/settings/nfc/SBeam;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/nfc/SBeam;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iput-boolean v6, p0, Lcom/android/settings/nfc/SBeam;->waitingNfcTurnOn:Z

    iget-object v2, p0, Lcom/android/settings/nfc/SBeam;->context:Landroid/content/Context;

    const-string v3, "pref_sbeam"

    const/4 v4, 0x5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/nfc/SBeam;->mSharedPreference:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/android/settings/nfc/SBeam;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v3, "SBeam_on_off"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c6

    iget-object v2, p0, Lcom/android/settings/nfc/SBeam;->mSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/nfc/SBeam;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    iget-object v2, p0, Lcom/android/settings/nfc/SBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_b9

    iget-object v2, p0, Lcom/android/settings/nfc/SBeam;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_d4

    :cond_b9
    iget-object v2, p0, Lcom/android/settings/nfc/SBeam;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "SBeam_on_off"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :goto_c1
    iget-object v2, p0, Lcom/android/settings/nfc/SBeam;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_c6
    iget-object v2, p0, Lcom/android/settings/nfc/SBeam;->mActionBarSwitch:Landroid/widget/Switch;

    iget-object v3, p0, Lcom/android/settings/nfc/SBeam;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v4, "SBeam_on_off"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setChecked(Z)V

    return-void

    :cond_d4
    iget-object v2, p0, Lcom/android/settings/nfc/SBeam;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "SBeam_on_off"

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_c1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 7

    const/4 v2, 0x0

    const v0, 0x7f0400a9

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/nfc/SBeam;->mView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/settings/nfc/SBeam;->mView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/settings/nfc/SBeam;->initView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/settings/nfc/SBeam;->mView:Landroid/view/View;

    const v1, 0x7f0a01e1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/nfc/SBeam;->img_sbeam:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/settings/nfc/SBeam;->img_sbeam:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/nfc/SBeam;->img_sbeam:Landroid/widget/ImageView;

    const v1, 0x7f050004

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/android/settings/nfc/SBeam;->img_sbeam:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/android/settings/nfc/SBeam;->frameAnimation:Landroid/graphics/drawable/AnimationDrawable;

    iget-object v0, p0, Lcom/android/settings/nfc/SBeam;->frameAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    iget-object v0, p0, Lcom/android/settings/nfc/SBeam;->mView:Landroid/view/View;

    return-object v0
.end method

.method public onResume()V
    .registers 5

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    iget-object v0, p0, Lcom/android/settings/nfc/SBeam;->mActionBarSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/settings/nfc/SBeam;->mSharedPreference:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/settings/nfc/SBeam;->mActionBarSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/android/settings/nfc/SBeam;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v2, "SBeam_on_off"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    :cond_19
    return-void
.end method
