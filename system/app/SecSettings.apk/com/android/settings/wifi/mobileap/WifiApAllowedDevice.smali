.class Lcom/android/settings/wifi/mobileap/WifiApAllowedDevice;
.super Landroid/preference/Preference;
.source "WifiApAllowedDevice.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mMac:Ljava/lang/String;

.field private mName:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    const v0, 0x7f040098

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedDevice;->setLayoutResource(I)V

    iput-object p2, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedDevice;->mMac:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedDevice;->mName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/mobileap/WifiApAllowedDevice;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedDevice;->showDialog()V

    return-void
.end method

.method private showDialog()V
    .registers 5

    new-instance v0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedDevice;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedDevice;->mMac:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;-><init>(Landroid/content/Context;ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0}, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->show()V

    return-void
.end method


# virtual methods
.method public compareTo(Landroid/preference/Preference;)I
    .registers 5

    instance-of v1, p1, Lcom/android/settings/wifi/mobileap/WifiApAllowedDevice;

    if-nez v1, :cond_6

    const/4 v1, 0x1

    :goto_5
    return v1

    :cond_6
    move-object v0, p1

    check-cast v0, Lcom/android/settings/wifi/mobileap/WifiApAllowedDevice;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedDevice;->mMac:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/settings/wifi/mobileap/WifiApAllowedDevice;->mMac:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    goto :goto_5
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Landroid/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/mobileap/WifiApAllowedDevice;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    return v0
.end method

.method public getMac()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedDevice;->mMac:Ljava/lang/String;

    return-object v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedDevice;->mName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedDevice;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedDevice;->mMac:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedDevice;->setSummary(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a01a2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/settings/wifi/mobileap/WifiApAllowedDevice$1;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedDevice$1;-><init>(Lcom/android/settings/wifi/mobileap/WifiApAllowedDevice;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    const/4 v0, -0x1

    if-ne p2, v0, :cond_c

    check-cast p1, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    invoke-virtual {p1}, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedDevice;->update(Ljava/lang/String;)Z

    :cond_c
    return-void
.end method

.method update(Ljava/lang/String;)Z
    .registers 5

    if-eqz p1, :cond_1c

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedDevice;->mName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedDevice;->mName:Ljava/lang/String;

    invoke-static {}, Landroid/net/wifi/WifiApWhiteList;->getInstance()Landroid/net/wifi/WifiApWhiteList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedDevice;->mMac:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedDevice;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiApWhiteList;->modifyWhiteList(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedDevice;->notifyHierarchyChanged()V

    const/4 v1, 0x1

    :goto_1b
    return v1

    :cond_1c
    const/4 v1, 0x0

    goto :goto_1b
.end method
