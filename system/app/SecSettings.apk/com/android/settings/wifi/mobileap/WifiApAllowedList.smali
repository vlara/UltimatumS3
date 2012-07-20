.class public Lcom/android/settings/wifi/mobileap/WifiApAllowedList;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "WifiApAllowedList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mActionView:Landroid/view/View;

.field private mActivity:Landroid/app/Activity;

.field private mAddlistMenuItem:Landroid/view/MenuItem;

.field private mCurrentSelected:Landroid/preference/Preference;

.field private mDeleteButton:Landroid/view/View;

.field private mDeleteIcon:Landroid/widget/ImageView;

.field private mDeleteMenuItem:Landroid/view/MenuItem;

.field private mDeviceList:Landroid/preference/PreferenceScreen;

.field private mEmptyView:Landroid/widget/TextView;

.field private mIsTablet:Z

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)Landroid/preference/PreferenceScreen;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeviceList:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->showDialog(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->startDeletePreference()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)Landroid/preference/Preference;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mCurrentSelected:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->reloadWhiteList()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->showDialog(I)V

    return-void
.end method

.method private isHidingHeaders()Z
    .registers 4

    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->getActivity()Landroid/app/Activity;

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

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_17

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    :cond_17
    return-void
.end method

.method private startDeletePreference()V
    .registers 8

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0d02d0

    const/4 v6, 0x0

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    return-void
.end method

.method private updateList()V
    .registers 10

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeviceList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4}, Landroid/preference/PreferenceScreen;->removeAll()V

    invoke-static {}, Landroid/net/wifi/WifiApWhiteList;->getInstance()Landroid/net/wifi/WifiApWhiteList;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiApWhiteList;->getIterator()Ljava/util/Iterator;

    move-result-object v1

    if-eqz v1, :cond_34

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiApWhiteList$WhiteList;

    new-instance v0, Lcom/android/settings/wifi/mobileap/WifiApAllowedDevice;

    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v3}, Landroid/net/wifi/WifiApWhiteList$WhiteList;->getMac()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Landroid/net/wifi/WifiApWhiteList$WhiteList;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v4, v5, v6}, Lcom/android/settings/wifi/mobileap/WifiApAllowedDevice;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeviceList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_11

    :cond_34
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeviceList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v4

    if-lez v4, :cond_60

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteMenuItem:Landroid/view/MenuItem;

    if-eqz v4, :cond_51

    iget-boolean v4, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mIsTablet:Z

    if-nez v4, :cond_4c

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteMenuItem:Landroid/view/MenuItem;

    const v5, 0x7f02006e

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_4c
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteMenuItem:Landroid/view/MenuItem;

    invoke-interface {v4, v8}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_51
    iget-boolean v4, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mIsTablet:Z

    if-nez v4, :cond_5f

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteButton:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setEnabled(Z)V

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setEnabled(Z)V

    :cond_5f
    :goto_5f
    return-void

    :cond_60
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteMenuItem:Landroid/view/MenuItem;

    if-eqz v4, :cond_75

    iget-boolean v4, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mIsTablet:Z

    if-nez v4, :cond_70

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteMenuItem:Landroid/view/MenuItem;

    const v5, 0x7f02006d

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_70
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteMenuItem:Landroid/view/MenuItem;

    invoke-interface {v4, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_75
    iget-boolean v4, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mIsTablet:Z

    if-nez v4, :cond_5f

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteButton:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setEnabled(Z)V

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_5f
.end method

.method private updateOptionsMenuIcon(Z)V
    .registers 4

    const/4 v1, 0x0

    if-eqz p1, :cond_f

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActionView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->setHasOptionsMenu(Z)V

    :goto_e
    return-void

    :cond_f
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActionView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->setHasOptionsMenu(Z)V

    goto :goto_e
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 11

    const/16 v6, 0x10

    const/4 v4, 0x0

    const/4 v8, -0x2

    const/4 v3, 0x1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    const-string v2, "wifi"

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->isHidingHeaders()Z

    move-result v2

    if-nez v2, :cond_76

    move v2, v3

    :goto_19
    iput-boolean v2, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mIsTablet:Z

    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->getView()Landroid/view/View;

    move-result-object v2

    const v5, 0x1020004

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mEmptyView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mEmptyView:Landroid/widget/TextView;

    const/high16 v5, 0x41a0

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mEmptyView:Landroid/widget/TextView;

    const/16 v5, 0x11

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mEmptyView:Landroid/widget/TextView;

    const v5, 0x7f0d0266

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->getListView()Landroid/widget/ListView;

    move-result-object v2

    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    const-string v2, "device_list_category"

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeviceList:Landroid/preference/PreferenceScreen;

    iget-boolean v2, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mIsTablet:Z

    if-eqz v2, :cond_78

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->setHasOptionsMenu(Z)V

    :goto_5a
    iget-boolean v2, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mIsTablet:Z

    if-nez v2, :cond_72

    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v2, v5, :cond_e4

    :goto_6f
    invoke-direct {p0, v3}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->updateOptionsMenuIcon(Z)V

    :cond_72
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->updateList()V

    return-void

    :cond_76
    move v2, v4

    goto :goto_19

    :cond_78
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v5, "layout_inflater"

    invoke-virtual {v2, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v2, 0x7f0400d0

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActionView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActionView:Landroid/view/View;

    const v5, 0x7f0a026f

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$1;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$1;-><init>(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActionView:Landroid/view/View;

    const v5, 0x7f0a026d

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteButton:Landroid/view/View;

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActionView:Landroid/view/View;

    const v5, 0x7f0a026e

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteIcon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteButton:Landroid/view/View;

    new-instance v5, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$2;

    invoke-direct {v5, p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$2;-><init>(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v6, v6}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActionView:Landroid/view/View;

    new-instance v6, Landroid/app/ActionBar$LayoutParams;

    const/16 v7, 0x15

    invoke-direct {v6, v8, v8, v7}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v5, v6}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    goto/16 :goto_5a

    :cond_e4
    move v3, v4

    goto :goto_6f
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 16

    const/4 v12, 0x1

    packed-switch p2, :pswitch_data_78

    :goto_4
    return-void

    :pswitch_5
    move-object v6, p1

    check-cast v6, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    invoke-virtual {v6}, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->getMac()Ljava/lang/String;

    move-result-object v1

    check-cast p1, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    invoke-virtual {p1}, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Landroid/net/wifi/WifiApWhiteList;->getInstance()Landroid/net/wifi/WifiApWhiteList;

    move-result-object v5

    invoke-virtual {v5, v1, v3}, Landroid/net/wifi/WifiApWhiteList;->addWhiteList(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    packed-switch v6, :pswitch_data_7e

    :pswitch_1d
    goto :goto_4

    :pswitch_1e
    new-instance v0, Lcom/android/settings/wifi/mobileap/WifiApAllowedDevice;

    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v0, v6, v1, v3}, Lcom/android/settings/wifi/mobileap/WifiApAllowedDevice;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeviceList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->reloadWhiteList()V

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->updateList()V

    goto :goto_4

    :pswitch_33
    const/4 v6, 0x3

    invoke-virtual {p0, v6}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->showDialog(I)V

    goto :goto_4

    :pswitch_38
    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d026a

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "<font color=#59D0F3>"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "</font>"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v5, v1}, Landroid/net/wifi/WifiApWhiteList;->getDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v12

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    invoke-static {v6, v7, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_4

    :pswitch_data_78
    .packed-switch -0x1
        :pswitch_5
    .end packed-switch

    :pswitch_data_7e
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_1d
        :pswitch_33
        :pswitch_38
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    iget-boolean v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mIsTablet:Z

    if-nez v0, :cond_d

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_11

    const/4 v0, 0x1

    :goto_a
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->updateOptionsMenuIcon(Z)V

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

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->addPreferencesFromResource(I)V

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .registers 8

    const/4 v3, 0x0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_f

    new-instance v2, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5, v3, p0}, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;-><init>(Landroid/content/Context;ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    :goto_e
    return-object v2

    :cond_f
    const/4 v2, 0x2

    if-ne p1, v2, :cond_4e

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mCurrentSelected:Landroid/preference/Preference;

    check-cast v2, Lcom/android/settings/wifi/mobileap/WifiApAllowedDevice;

    invoke-virtual {v2}, Lcom/android/settings/wifi/mobileap/WifiApAllowedDevice;->getMac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0d0262

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0d0023

    new-instance v4, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$4;

    invoke-direct {v4, p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$4;-><init>(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0d010e

    new-instance v4, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$3;

    invoke-direct {v4, p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$3;-><init>(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    goto :goto_e

    :cond_4e
    const/4 v2, 0x3

    if-ne p1, v2, :cond_8a

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x1040014

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1010355

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0d0282

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0d0281

    new-instance v4, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$6;

    invoke-direct {v4, p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$6;-><init>(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x104

    new-instance v4, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$5;

    invoke-direct {v4, p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$5;-><init>(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    goto :goto_e

    :cond_8a
    move-object v2, v3

    goto :goto_e
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 7

    const/4 v3, 0x5

    const/4 v2, 0x0

    const/4 v0, 0x1

    const v1, 0x7f0d027a

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteMenuItem:Landroid/view/MenuItem;

    iget-boolean v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mIsTablet:Z

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteMenuItem:Landroid/view/MenuItem;

    const v1, 0x7f02006e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_18
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeviceList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_36

    iget-boolean v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mIsTablet:Z

    if-nez v0, :cond_31

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteMenuItem:Landroid/view/MenuItem;

    const v1, 0x7f02006d

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_31
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_36
    const/4 v0, 0x2

    const v1, 0x7f0d025d

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mAddlistMenuItem:Landroid/view/MenuItem;

    iget-boolean v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mIsTablet:Z

    if-nez v0, :cond_4c

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mAddlistMenuItem:Landroid/view/MenuItem;

    const v1, 0x7f020051

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_4c
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mAddlistMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 6

    const/4 v1, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_2e

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_c
    return v1

    :pswitch_d
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->startDeletePreference()V

    goto :goto_c

    :pswitch_11
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeviceList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v2

    const/16 v3, 0xa

    if-ge v2, v3, :cond_1f

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->showDialog(I)V

    goto :goto_c

    :cond_1f
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0d0292

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_c

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_d
        :pswitch_11
    .end packed-switch
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 4

    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 4

    iput-object p2, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mCurrentSelected:Landroid/preference/Preference;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->showDialog(I)V

    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .registers 1

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->updateList()V

    return-void
.end method
