.class public Lcom/android/settings/accounts/ProviderPreference;
.super Landroid/preference/Preference;
.source "ProviderPreference.java"


# instance fields
.field private mAccountType:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mNotification:Ljava/lang/Boolean;

.field private mProviderIcon:Landroid/graphics/drawable/Drawable;

.field private mProviderIconView:Landroid/widget/ImageView;

.field private mProviderName:Ljava/lang/CharSequence;

.field private mProviderNotificationView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Z)V
    .registers 7

    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/accounts/ProviderPreference;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/accounts/ProviderPreference;->mAccountType:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/settings/accounts/ProviderPreference;->mProviderIcon:Landroid/graphics/drawable/Drawable;

    iput-object p4, p0, Lcom/android/settings/accounts/ProviderPreference;->mProviderName:Ljava/lang/CharSequence;

    const v0, 0x7f04009e

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/ProviderPreference;->setLayoutResource(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/ProviderPreference;->setPersistent(Z)V

    iget-object v0, p0, Lcom/android/settings/accounts/ProviderPreference;->mProviderName:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/ProviderPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accounts/ProviderPreference;->mNotification:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public getAccountType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/accounts/ProviderPreference;->mAccountType:Ljava/lang/String;

    return-object v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .registers 5

    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    const v0, 0x7f0a0016

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/accounts/ProviderPreference;->mProviderIconView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/settings/accounts/ProviderPreference;->mProviderIconView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/settings/accounts/ProviderPreference;->mProviderIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/settings/accounts/ProviderPreference;->mProviderName:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/ProviderPreference;->setTitle(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a01aa

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/accounts/ProviderPreference;->mProviderNotificationView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/settings/accounts/ProviderPreference;->mNotification:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/android/settings/accounts/ProviderPreference;->mProviderNotificationView:Landroid/widget/ImageView;

    const v1, 0x7f020118

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/settings/accounts/ProviderPreference;->mProviderNotificationView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/settings/accounts/ProviderPreference;->mContext:Landroid/content/Context;

    const v2, 0x7f0d0670

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_43
    return-void

    :cond_44
    iget-object v0, p0, Lcom/android/settings/accounts/ProviderPreference;->mProviderNotificationView:Landroid/widget/ImageView;

    const v1, 0x7f020119

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/settings/accounts/ProviderPreference;->mProviderNotificationView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/settings/accounts/ProviderPreference;->mContext:Landroid/content/Context;

    const v2, 0x7f0d0671

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_43
.end method
