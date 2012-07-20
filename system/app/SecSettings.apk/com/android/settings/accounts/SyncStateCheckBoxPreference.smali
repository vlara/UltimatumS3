.class public Lcom/android/settings/accounts/SyncStateCheckBoxPreference;
.super Landroid/preference/CheckBoxPreference;
.source "SyncStateCheckBoxPreference.java"


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mAuthority:Ljava/lang/String;

.field private mFailed:Z

.field private mIsActive:Z

.field private mIsPending:Z

.field private mOneTimeSyncMode:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)V
    .registers 6

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v1, p0, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->mIsActive:Z

    iput-boolean v1, p0, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->mIsPending:Z

    iput-boolean v1, p0, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->mFailed:Z

    iput-boolean v1, p0, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->mOneTimeSyncMode:Z

    iput-object p2, p0, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->mAccount:Landroid/accounts/Account;

    iput-object p3, p0, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->mAuthority:Ljava/lang/String;

    const v0, 0x7f040096

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->setWidgetLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v0, p0, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->mIsActive:Z

    iput-boolean v0, p0, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->mIsPending:Z

    iput-boolean v0, p0, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->mFailed:Z

    iput-boolean v0, p0, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->mOneTimeSyncMode:Z

    const v0, 0x7f040096

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->setWidgetLayoutResource(I)V

    iput-object v1, p0, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->mAccount:Landroid/accounts/Account;

    iput-object v1, p0, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->mAuthority:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAccount()Landroid/accounts/Account;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->mAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method public getAuthority()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->mAuthority:Ljava/lang/String;

    return-object v0
.end method

.method public isOneTimeSyncMode()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->mOneTimeSyncMode:Z

    return v0
.end method

.method public onBindView(Landroid/view/View;)V
    .registers 13

    const/16 v8, 0x8

    const/4 v9, 0x1

    const/4 v7, 0x0

    invoke-super {p0, p1}, Landroid/preference/CheckBoxPreference;->onBindView(Landroid/view/View;)V

    const v6, 0x7f0a019f

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/settings/widget/AnimatedImageView;

    const v6, 0x7f0a019e

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->mIsActive:Z

    if-nez v6, :cond_1f

    iget-boolean v6, p0, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->mIsPending:Z

    if-eqz v6, :cond_66

    :cond_1f
    move v0, v9

    :goto_20
    if-eqz v0, :cond_68

    move v6, v7

    :goto_23
    invoke-virtual {v4, v6}, Lcom/android/settings/widget/AnimatedImageView;->setVisibility(I)V

    iget-boolean v6, p0, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->mIsActive:Z

    invoke-virtual {v4, v6}, Lcom/android/settings/widget/AnimatedImageView;->setAnimating(Z)V

    iget-boolean v6, p0, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->mFailed:Z

    if-eqz v6, :cond_6a

    if-nez v0, :cond_6a

    move v2, v9

    :goto_32
    if-eqz v2, :cond_6c

    move v6, v7

    :goto_35
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    const v6, 0x1020001

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-boolean v6, p0, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->mOneTimeSyncMode:Z

    if-eqz v6, :cond_6e

    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    const v6, 0x1020010

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->getContext()Landroid/content/Context;

    move-result-object v6

    const v8, 0x7f0d0683

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v10

    aput-object v10, v9, v7

    invoke-virtual {v6, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_65
    return-void

    :cond_66
    move v0, v7

    goto :goto_20

    :cond_68
    move v6, v8

    goto :goto_23

    :cond_6a
    move v2, v7

    goto :goto_32

    :cond_6c
    move v6, v8

    goto :goto_35

    :cond_6e
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_65
.end method

.method protected onClick()V
    .registers 2

    iget-boolean v0, p0, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->mOneTimeSyncMode:Z

    if-nez v0, :cond_7

    invoke-super {p0}, Landroid/preference/CheckBoxPreference;->onClick()V

    :cond_7
    return-void
.end method

.method public setActive(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->mIsActive:Z

    invoke-virtual {p0}, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->notifyChanged()V

    return-void
.end method

.method public setFailed(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->mFailed:Z

    invoke-virtual {p0}, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->notifyChanged()V

    return-void
.end method

.method public setOneTimeSyncMode(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->mOneTimeSyncMode:Z

    invoke-virtual {p0}, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->notifyChanged()V

    return-void
.end method

.method public setPending(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->mIsPending:Z

    invoke-virtual {p0}, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->notifyChanged()V

    return-void
.end method
