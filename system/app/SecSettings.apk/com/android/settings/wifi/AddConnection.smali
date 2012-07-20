.class public Lcom/android/settings/wifi/AddConnection;
.super Landroid/preference/PreferenceActivity;
.source "AddConnection.java"


# instance fields
.field ap:Landroid/preference/PreferenceScreen;

.field private ap_address:Ljava/lang/String;

.field private ap_bssid:Ljava/lang/String;

.field private ap_cid:Ljava/lang/String;

.field private ap_ssid:Ljava/lang/String;

.field mAlertDialog:Landroid/app/AlertDialog$Builder;

.field mAlertDialog1:Landroid/app/AlertDialog$Builder;

.field private profile_name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/AddConnection;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/wifi/AddConnection;->profile_name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/settings/wifi/AddConnection;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/android/settings/wifi/AddConnection;->profile_name:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/AddConnection;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/wifi/AddConnection;->ap_ssid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/AddConnection;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/wifi/AddConnection;->ap_cid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/AddConnection;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/wifi/AddConnection;->ap_bssid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/AddConnection;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/wifi/AddConnection;->ap_address:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 7

    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v1, 0x1

    if-ne p1, v1, :cond_72

    const/4 v1, -0x1

    if-ne p2, v1, :cond_72

    const-string v1, "SSID"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/AddConnection;->ap_ssid:Ljava/lang/String;

    const-string v1, "BSSID"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/AddConnection;->ap_bssid:Ljava/lang/String;

    const-string v1, "ADDRESS"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/AddConnection;->ap_address:Ljava/lang/String;

    const-string v1, "CID"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/AddConnection;->ap_cid:Ljava/lang/String;

    const-string v1, "AddConnection"

    const-string v2, "onActivityResult, RESULT_OK"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/wifi/AddConnection;->ap_ssid:Ljava/lang/String;

    if-eqz v1, :cond_72

    iget-object v1, p0, Lcom/android/settings/wifi/AddConnection;->ap_cid:Ljava/lang/String;

    if-eqz v1, :cond_72

    iget-object v1, p0, Lcom/android/settings/wifi/AddConnection;->ap_bssid:Ljava/lang/String;

    if-eqz v1, :cond_72

    iget-object v1, p0, Lcom/android/settings/wifi/AddConnection;->ap_address:Ljava/lang/String;

    if-eqz v1, :cond_73

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/AddConnection;->ap_ssid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/AddConnection;->ap_address:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/AddConnection;->ap_cid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_6d
    iget-object v1, p0, Lcom/android/settings/wifi/AddConnection;->ap:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    :cond_72
    return-void

    :cond_73
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/AddConnection;->ap_ssid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nUnknown Address\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/AddConnection;->ap_cid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6d
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 9

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const v5, 0x7f070006

    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/AddConnection;->addPreferencesFromResource(I)V

    const v5, 0x7f04000a

    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/AddConnection;->setContentView(I)V

    const v5, 0x7f0a001c

    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/AddConnection;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string v5, "matched_ap"

    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/AddConnection;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceScreen;

    iput-object v5, p0, Lcom/android/settings/wifi/AddConnection;->ap:Landroid/preference/PreferenceScreen;

    const v5, 0x7f0a001e

    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/AddConnection;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    const v5, 0x7f0a001f

    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/AddConnection;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/settings/wifi/AddConnection;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/settings/wifi/AddConnection;->mAlertDialog1:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/wifi/AddConnection;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_fa

    const-string v5, "PROFILE"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/wifi/AddConnection;->profile_name:Ljava/lang/String;

    const-string v5, "SSID"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/wifi/AddConnection;->ap_ssid:Ljava/lang/String;

    const-string v5, "BSSID"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/wifi/AddConnection;->ap_bssid:Ljava/lang/String;

    const-string v5, "CID"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/wifi/AddConnection;->ap_cid:Ljava/lang/String;

    const-string v5, "ADDRESS"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/wifi/AddConnection;->ap_address:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/wifi/AddConnection;->profile_name:Ljava/lang/String;

    if-eqz v5, :cond_bf

    iget-object v5, p0, Lcom/android/settings/wifi/AddConnection;->ap_ssid:Ljava/lang/String;

    if-eqz v5, :cond_bf

    iget-object v5, p0, Lcom/android/settings/wifi/AddConnection;->ap_cid:Ljava/lang/String;

    if-eqz v5, :cond_bf

    iget-object v5, p0, Lcom/android/settings/wifi/AddConnection;->ap_bssid:Ljava/lang/String;

    if-eqz v5, :cond_bf

    iget-object v5, p0, Lcom/android/settings/wifi/AddConnection;->profile_name:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/settings/wifi/AddConnection;->ap_address:Ljava/lang/String;

    if-eqz v5, :cond_d8

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/wifi/AddConnection;->ap_ssid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/wifi/AddConnection;->ap_address:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/wifi/AddConnection;->ap_cid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_ba
    iget-object v5, p0, Lcom/android/settings/wifi/AddConnection;->ap:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v3}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    :cond_bf
    :goto_bf
    new-instance v5, Lcom/android/settings/wifi/AddConnection$1;

    invoke-direct {v5, p0, v0}, Lcom/android/settings/wifi/AddConnection$1;-><init>(Lcom/android/settings/wifi/AddConnection;Landroid/widget/EditText;)V

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    new-instance v5, Lcom/android/settings/wifi/AddConnection$2;

    invoke-direct {v5, p0, v0}, Lcom/android/settings/wifi/AddConnection$2;-><init>(Lcom/android/settings/wifi/AddConnection;Landroid/widget/EditText;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v5, Lcom/android/settings/wifi/AddConnection$3;

    invoke-direct {v5, p0}, Lcom/android/settings/wifi/AddConnection$3;-><init>(Lcom/android/settings/wifi/AddConnection;)V

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_d8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/wifi/AddConnection;->ap_ssid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\nUnknown Address\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/wifi/AddConnection;->ap_cid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_ba

    :cond_fa
    iget-object v5, p0, Lcom/android/settings/wifi/AddConnection;->ap:Landroid/preference/PreferenceScreen;

    const v6, 0x7f0d0a66

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_bf
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 6

    const/4 v0, 0x1

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "matched_ap"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-class v2, Lcom/android/settings/wifi/SelectApDialog;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/wifi/AddConnection;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_1a
    return v0

    :cond_1b
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_1a
.end method
