.class public Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "WifiApAllowedListDelete.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mActionView:Landroid/view/View;

.field private mDeviceList:Landroid/preference/PreferenceScreen;

.field private mIsPrefClick:Z

.field private mIsTablet:Z

.field private mMenuItemCancel:Landroid/view/MenuItem;

.field private mMenuItemOk:Landroid/view/MenuItem;

.field private mSelectAll:Landroid/preference/CheckBoxPreference;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mIsPrefClick:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->removeSelectedList()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mIsPrefClick:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->isAllDeviceChecked()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;)Landroid/preference/CheckBoxPreference;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mSelectAll:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method private isAllDeviceChecked()Z
    .registers 3

    const/4 v0, 0x1

    :goto_1
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mDeviceList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v1

    if-ge v0, v1, :cond_1e

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mDeviceList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    check-cast v1, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_1b

    const/4 v1, 0x0

    :goto_1a
    return v1

    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1e
    const/4 v1, 0x1

    goto :goto_1a
.end method

.method private isHidingHeaders()Z
    .registers 4

    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v2, v0, Landroid/preference/PreferenceActivity;

    if-eqz v2, :cond_19

    move-object v1, v0

    check-cast v1, Landroid/preference/PreferenceActivity;

    invoke-virtual {v1}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v2

    if-nez v2, :cond_17

    invoke-virtual {v1}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v2

    if-nez v2, :cond_19

    :cond_17
    const/4 v2, 0x1

    :goto_18
    return v2

    :cond_19
    const/4 v2, 0x0

    goto :goto_18
.end method

.method private reloadWhiteList()V
    .registers 4

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_17

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    :cond_17
    return-void
.end method

.method private removeSelectedList()V
    .registers 5

    const/4 v0, 0x1

    :goto_1
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mDeviceList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v3

    if-ge v0, v3, :cond_29

    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mDeviceList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-static {}, Landroid/net/wifi/WifiApWhiteList;->getInstance()Landroid/net/wifi/WifiApWhiteList;

    move-result-object v2

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiApWhiteList;->removeWhiteList(Ljava/lang/String;)I

    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_29
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->reloadWhiteList()V

    return-void
.end method

.method private updateOptionsMenuIcon(Z)V
    .registers 4

    const/4 v1, 0x0

    if-eqz p1, :cond_f

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mActionView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->setHasOptionsMenu(Z)V

    :goto_e
    return-void

    :cond_f
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mActionView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->setHasOptionsMenu(Z)V

    goto :goto_e
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 17

    invoke-super/range {p0 .. p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    const-string v9, "wifi"

    invoke-virtual {p0, v9}, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/WifiManager;

    iput-object v9, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->isHidingHeaders()Z

    move-result v9

    if-nez v9, :cond_7e

    const/4 v9, 0x1

    :goto_14
    iput-boolean v9, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mIsTablet:Z

    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v9, "device_list_category"

    invoke-virtual {p0, v9}, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceScreen;

    iput-object v9, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mDeviceList:Landroid/preference/PreferenceScreen;

    iget-boolean v9, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mIsTablet:Z

    if-eqz v9, :cond_80

    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->setHasOptionsMenu(Z)V

    :goto_2c
    new-instance v9, Landroid/preference/CheckBoxPreference;

    invoke-direct {v9, v0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mSelectAll:Landroid/preference/CheckBoxPreference;

    iget-object v9, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mSelectAll:Landroid/preference/CheckBoxPreference;

    const v10, 0x7f0d06a0

    invoke-virtual {v9, v10}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    iget-object v9, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mDeviceList:Landroid/preference/PreferenceScreen;

    iget-object v10, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mSelectAll:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    iget-object v9, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mSelectAll:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-static {}, Landroid/net/wifi/WifiApWhiteList;->getInstance()Landroid/net/wifi/WifiApWhiteList;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/wifi/WifiApWhiteList;->getIterator()Ljava/util/Iterator;

    move-result-object v4

    if-eqz v4, :cond_e6

    :goto_51
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_e6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/WifiApWhiteList$WhiteList;

    new-instance v2, Lcom/android/settings/wifi/mobileap/WifiApAllowedDeleteDevice;

    invoke-direct {v2, v0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedDeleteDevice;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8}, Landroid/net/wifi/WifiApWhiteList$WhiteList;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v8}, Landroid/net/wifi/WifiApWhiteList$WhiteList;->getMac()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/android/settings/wifi/mobileap/WifiApAllowedDeleteDevice;->setSummary(Ljava/lang/CharSequence;)V

    new-instance v9, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete$3;

    invoke-direct {v9, p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete$3;-><init>(Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;)V

    invoke-virtual {v2, v9}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v9, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mDeviceList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v9, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_51

    :cond_7e
    const/4 v9, 0x0

    goto :goto_14

    :cond_80
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const-string v10, "layout_inflater"

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    const v9, 0x7f0400e7

    const/4 v10, 0x0

    invoke-virtual {v3, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mActionView:Landroid/view/View;

    iget-object v9, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mActionView:Landroid/view/View;

    const v10, 0x7f0a02da

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const v9, 0x7f0a02db

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v9, 0x7f0d077f

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(I)V

    new-instance v9, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete$1;

    invoke-direct {v9, p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete$1;-><init>(Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;)V

    invoke-virtual {v6, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v9, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mActionView:Landroid/view/View;

    const v10, 0x7f0a02d8

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v9, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete$2;

    invoke-direct {v9, p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete$2;-><init>(Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;)V

    invoke-virtual {v1, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v9

    const/16 v10, 0x10

    const/16 v11, 0x10

    invoke-virtual {v9, v10, v11}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mActionView:Landroid/view/View;

    new-instance v11, Landroid/app/ActionBar$LayoutParams;

    const/4 v12, -0x2

    const/4 v13, -0x2

    const/16 v14, 0x15

    invoke-direct {v11, v12, v13, v14}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v9, v10, v11}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    goto/16 :goto_2c

    :cond_e6
    iget-boolean v9, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mIsTablet:Z

    if-nez v9, :cond_ff

    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget v9, v9, Landroid/content/res/Configuration;->orientation:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_100

    const/4 v9, 0x1

    :goto_fc
    invoke-direct {p0, v9}, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->updateOptionsMenuIcon(Z)V

    :cond_ff
    return-void

    :cond_100
    const/4 v9, 0x0

    goto :goto_fc
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    iget-boolean v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mIsTablet:Z

    if-nez v0, :cond_d

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_11

    const/4 v0, 0x1

    :goto_a
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->updateOptionsMenuIcon(Z)V

    :cond_d
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void

    :cond_11
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f070061

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->addPreferencesFromResource(I)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 7

    const/4 v3, 0x5

    const/4 v2, 0x0

    const/4 v0, 0x1

    const v1, 0x7f0d010e

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mMenuItemOk:Landroid/view/MenuItem;

    iget-boolean v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mIsTablet:Z

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mMenuItemOk:Landroid/view/MenuItem;

    const v1, 0x7f02005a

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_18
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mMenuItemOk:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const/4 v0, 0x2

    const v1, 0x7f0d077f

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mMenuItemCancel:Landroid/view/MenuItem;

    iget-boolean v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mIsTablet:Z

    if-nez v0, :cond_33

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mMenuItemCancel:Landroid/view/MenuItem;

    const v1, 0x7f02005b

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_33
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mMenuItemCancel:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4

    const/4 v0, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_18

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_c
    return v0

    :pswitch_d
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->finish()V

    goto :goto_c

    :pswitch_11
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->removeSelectedList()V

    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->finish()V

    goto :goto_c

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_d
        :pswitch_11
    .end packed-switch
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 7

    const/4 v3, 0x1

    iget-boolean v2, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mIsPrefClick:Z

    if-eqz v2, :cond_6

    :cond_5
    return v3

    :cond_6
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v0, 0x1

    :goto_d
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mDeviceList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v2

    if-ge v0, v2, :cond_5

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;->mDeviceList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    check-cast v2, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_d
.end method

.method public onResume()V
    .registers 1

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    return-void
.end method
