.class public Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;
.super Landroid/preference/CheckBoxPreference;
.source "WifiP2pAvailablePeer.java"


# static fields
.field private static final sDeviceTypeImages:[I


# instance fields
.field public device:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private mDeviceType:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->sDeviceTypeImages:[I

    return-void

    :array_a
    .array-data 0x4
        0x32t 0x1t 0x2t 0x7ft
        0x35t 0x1t 0x2t 0x7ft
        0x38t 0x1t 0x2t 0x7ft
        0x31t 0x1t 0x2t 0x7ft
        0x39t 0x1t 0x2t 0x7ft
        0x37t 0x1t 0x2t 0x7ft
        0x33t 0x1t 0x2t 0x7ft
        0x36t 0x1t 0x2t 0x7ft
        0x34t 0x1t 0x2t 0x7ft
        0x3at 0x1t 0x2t 0x7ft
        0x30t 0x1t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .registers 8

    const/16 v4, 0x9

    const/4 v3, 0x1

    invoke-direct {p0, p1}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->primaryDeviceType:Ljava/lang/String;

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->primaryDeviceType:Ljava/lang/String;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :cond_19
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->primaryDeviceType:Ljava/lang/String;

    if-eqz v1, :cond_22

    array-length v1, v0

    if-ge v1, v3, :cond_31

    :cond_22
    const-string v1, "WifiP2pAvailablePeer"

    const-string v2, "Malformed primaryDeviceType"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->sDeviceTypeImages:[I

    aget v1, v1, v4

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->setIcon(I)V

    :goto_30
    return-void

    :cond_31
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->mDeviceType:I

    iget v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->mDeviceType:I

    if-lt v1, v3, :cond_50

    iget v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->mDeviceType:I

    const/16 v2, 0xc

    if-ge v1, v2, :cond_50

    sget-object v1, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->sDeviceTypeImages:[I

    iget v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->mDeviceType:I

    add-int/lit8 v2, v2, -0x1

    aget v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->setIcon(I)V

    goto :goto_30

    :cond_50
    sget-object v1, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->sDeviceTypeImages:[I

    aget v1, v1, v4

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->setIcon(I)V

    goto :goto_30
.end method

.method private refresh()V
    .registers 5

    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090020

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_33

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->GOdeviceName:Ljava/lang/String;

    if-nez v2, :cond_24

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v2}, Landroid/net/wifi/p2p/WifiP2pDevice;->isGroupClient()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_33

    :cond_24
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v2}, Landroid/net/wifi/p2p/WifiP2pDevice;->isGroupOwner()Z

    move-result v2

    if-nez v2, :cond_33

    const v2, 0x7f0d0319

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->setSummary(I)V

    :goto_32
    return-void

    :cond_33
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    aget-object v2, v1, v2

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_32
.end method


# virtual methods
.method public compareTo(Landroid/preference/Preference;)I
    .registers 7

    const/4 v2, 0x1

    const/4 v1, -0x1

    instance-of v3, p1, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;

    if-nez v3, :cond_d

    instance-of v3, p1, Lcom/android/settings/ButtonPreference;

    if-eqz v3, :cond_b

    :cond_a
    :goto_a
    return v1

    :cond_b
    move v1, v2

    goto :goto_a

    :cond_d
    move-object v0, p1

    check-cast v0, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;

    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v3, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    iget-object v4, v0, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v4, v4, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-eq v3, v4, :cond_26

    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v3, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    iget-object v4, v0, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v4, v4, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-lt v3, v4, :cond_a

    move v1, v2

    goto :goto_a

    :cond_26
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    if-eqz v1, :cond_39

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    goto :goto_a

    :cond_39
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    goto :goto_a
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Landroid/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .registers 5

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_37

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->setTitle(Ljava/lang/CharSequence;)V

    :goto_11
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-nez v1, :cond_30

    const v1, 0x1020016

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "@android:style/Theme.DeviceDefault"

    const-string v2, "Theme.DeviceDefault.Light"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3f

    const v1, -0xff9467

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_30
    :goto_30
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->refresh()V

    invoke-super {p0, p1}, Landroid/preference/CheckBoxPreference;->onBindView(Landroid/view/View;)V

    return-void

    :cond_37
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/p2p/WifiP2pAvailablePeer;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_11

    :cond_3f
    const v1, -0xff6601

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_30
.end method
