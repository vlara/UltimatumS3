.class public Lcom/android/settings/nfc/NfcEnabler;
.super Ljava/lang/Object;
.source "NfcEnabler.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private final mAndroidBeam:Landroid/preference/PreferenceScreen;

.field private final mCheckbox:Landroid/preference/CheckBoxPreference;

.field private final mContext:Landroid/content/Context;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private final mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private final mReaderCheckbox:Landroid/preference/CheckBoxPreference;

.field private final mReaderIntentFilter:Landroid/content/IntentFilter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

.field private final mSBeam:Landroid/preference/PreferenceScreen;

.field private mSBeamEnabled:Z

.field private mSBeamSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

.field private mSBeamSharedPreference:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;Landroid/preference/CheckBoxPreference;Landroid/preference/PreferenceScreen;Landroid/preference/PreferenceScreen;)V
    .registers 13

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v4, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeamEnabled:Z

    new-instance v1, Lcom/android/settings/nfc/NfcEnabler$1;

    invoke-direct {v1, p0}, Lcom/android/settings/nfc/NfcEnabler$1;-><init>(Lcom/android/settings/nfc/NfcEnabler;)V

    iput-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/nfc/NfcEnabler;->mCheckbox:Landroid/preference/CheckBoxPreference;

    iput-object p3, p0, Lcom/android/settings/nfc/NfcEnabler;->mReaderCheckbox:Landroid/preference/CheckBoxPreference;

    iput-object p4, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/PreferenceScreen;

    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    iput-object p5, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeam:Landroid/preference/PreferenceScreen;

    iput-boolean v5, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeamEnabled:Z

    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeam:Landroid/preference/PreferenceScreen;

    if-nez v1, :cond_27

    iput-boolean v4, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeamEnabled:Z

    :cond_27
    iget-boolean v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeamEnabled:Z

    if-eqz v1, :cond_66

    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    const-string v2, "pref_sbeam"

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeamSharedPreference:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeamSharedPreference:Landroid/content/SharedPreferences;

    const-string v2, "SBeam_on_off"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_66

    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeamSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeamSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_5a

    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_8b

    :cond_5a
    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeamSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "SBeam_on_off"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :goto_61
    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeamSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_66
    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v1, :cond_93

    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mReaderCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeam:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_86

    iget-boolean v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeamEnabled:Z

    if-eqz v1, :cond_86

    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_86
    iput-object v6, p0, Lcom/android/settings/nfc/NfcEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    iput-object v6, p0, Lcom/android/settings/nfc/NfcEnabler;->mReaderIntentFilter:Landroid/content/IntentFilter;

    :goto_8a
    return-void

    :cond_8b
    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeamSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "SBeam_on_off"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_61

    :cond_93
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.nfc.action.ADAPTER_STATE_CHANGE_READER"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mReaderIntentFilter:Landroid/content/IntentFilter;

    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    const-string v2, "enterprise_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    goto :goto_8a
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;Landroid/preference/PreferenceScreen;Landroid/preference/PreferenceScreen;)V
    .registers 12

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v4, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeamEnabled:Z

    new-instance v1, Lcom/android/settings/nfc/NfcEnabler$1;

    invoke-direct {v1, p0}, Lcom/android/settings/nfc/NfcEnabler$1;-><init>(Lcom/android/settings/nfc/NfcEnabler;)V

    iput-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/nfc/NfcEnabler;->mCheckbox:Landroid/preference/CheckBoxPreference;

    iput-object p3, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/PreferenceScreen;

    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    iput-object p4, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeam:Landroid/preference/PreferenceScreen;

    iput-boolean v6, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeamEnabled:Z

    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeam:Landroid/preference/PreferenceScreen;

    if-nez v1, :cond_25

    iput-boolean v4, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeamEnabled:Z

    :cond_25
    iget-boolean v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeamEnabled:Z

    if-eqz v1, :cond_64

    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    const-string v2, "pref_sbeam"

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeamSharedPreference:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeamSharedPreference:Landroid/content/SharedPreferences;

    const-string v2, "SBeam_on_off"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_64

    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeamSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeamSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_58

    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_86

    :cond_58
    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeamSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "SBeam_on_off"

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :goto_5f
    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeamSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_64
    iput-object v5, p0, Lcom/android/settings/nfc/NfcEnabler;->mReaderCheckbox:Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/settings/nfc/NfcEnabler;->mReaderIntentFilter:Landroid/content/IntentFilter;

    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v1, :cond_8e

    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeam:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_83

    iget-boolean v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeamEnabled:Z

    if-eqz v1, :cond_83

    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_83
    iput-object v5, p0, Lcom/android/settings/nfc/NfcEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    :goto_85
    return-void

    :cond_86
    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeamSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "SBeam_on_off"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_5f

    :cond_8e
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    const-string v2, "enterprise_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    goto :goto_85
.end method

.method static synthetic access$000(Lcom/android/settings/nfc/NfcEnabler;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/settings/nfc/NfcEnabler;->handleNfcStateChanged(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/nfc/NfcEnabler;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/settings/nfc/NfcEnabler;->handleNfcReaderStateChanged(I)V

    return-void
.end method

.method private handleNfcReaderStateChanged(I)V
    .registers 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_28

    :goto_5
    :pswitch_5
    return-void

    :pswitch_6
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mReaderCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mReaderCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_5

    :pswitch_11
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mReaderCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mReaderCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_5

    :pswitch_1c
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mReaderCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mReaderCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_5

    nop

    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_11
        :pswitch_5
        :pswitch_1c
    .end packed-switch
.end method

.method private handleNfcStateChanged(I)V
    .registers 9

    const v6, 0x7f0d01dd

    const v5, 0x7f0d01e3

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeamSharedPreference:Landroid/content/SharedPreferences;

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    const-string v1, "pref_sbeam"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeamSharedPreference:Landroid/content/SharedPreferences;

    :cond_17
    packed-switch p1, :pswitch_data_18e

    :cond_1a
    :goto_1a
    return-void

    :pswitch_1b
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mReaderCheckbox:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mReaderCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mReaderCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :cond_33
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeam:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_1a

    iget-boolean v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeamEnabled:Z

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeamSharedPreference:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeamSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeamSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeamSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "SBeam_on_off"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeamSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_1a

    :pswitch_68
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mReaderCheckbox:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_80

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mReaderCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mReaderCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_80
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result v0

    if-eqz v0, :cond_bd

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/PreferenceScreen;

    const v1, 0x7f0d01db

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeam:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_1a

    iget-boolean v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeamEnabled:Z

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeamSharedPreference:Landroid/content/SharedPreferences;

    const-string v1, "SBeam_on_off"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_b6

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeam:Landroid/preference/PreferenceScreen;

    const v1, 0x7f0d01e2

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto/16 :goto_1a

    :cond_b6
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto/16 :goto_1a

    :cond_bd
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/PreferenceScreen;

    const v1, 0x7f0d01dc

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeam:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_1a

    iget-boolean v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeamEnabled:Z

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeamSharedPreference:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeamSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeamSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeamSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "SBeam_on_off"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeamSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_1a

    :pswitch_f1
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mReaderCheckbox:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_104

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mReaderCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :cond_104
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeam:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_1a

    iget-boolean v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeamEnabled:Z

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_1a

    :pswitch_118
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mReaderCheckbox:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_12b

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mReaderCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :cond_12b
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeam:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_1a

    iget-boolean v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeamEnabled:Z

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_1a

    :pswitch_13f
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mReaderCheckbox:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_157

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mReaderCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mReaderCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :cond_157
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeam:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_1a

    iget-boolean v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeamEnabled:Z

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeamSharedPreference:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeamSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeamSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeamSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "SBeam_on_off"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeamSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_1a

    nop

    :pswitch_data_18e
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_f1
        :pswitch_68
        :pswitch_118
        :pswitch_13f
    .end packed-switch
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 6

    const/4 v2, 0x0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mReaderCheckbox:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mReaderCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :cond_1d
    if-eqz v0, :cond_25

    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->enable()Z

    :cond_24
    :goto_24
    return v2

    :cond_25
    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->disable()Z

    goto :goto_24

    :cond_2b
    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mReaderCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mReaderCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    if-eqz v0, :cond_40

    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->readerEnable()Z

    goto :goto_24

    :cond_40
    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->readerDisable()Z

    goto :goto_24
.end method

.method public pause()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_6

    :cond_5
    :goto_5
    return-void

    :cond_6
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v0}, Landroid/app/enterprise/RestrictionPolicy;->isNFCEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mReaderCheckbox:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mReaderCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_5
.end method

.method public resume()V
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_6

    :cond_5
    :goto_5
    return-void

    :cond_6
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v0}, Landroid/app/enterprise/RestrictionPolicy;->isNFCEnabled()Z

    move-result v0

    if-nez v0, :cond_39

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeam:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_2a

    iget-boolean v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeamEnabled:Z

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_2a
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mReaderCheckbox:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mReaderCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mReaderCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_5

    :cond_39
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/nfc/NfcEnabler;->handleNfcStateChanged(I)V

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/nfc/NfcEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mReaderCheckbox:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mReaderCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/nfc/NfcEnabler;->mReaderIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_5
.end method
