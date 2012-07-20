.class public Lcom/android/settings/ProgressCategory;
.super Lcom/android/settings/ProgressCategoryBase;
.source "ProgressCategory.java"


# instance fields
.field private mChangeProgressText:Z

.field private mCheckIgnore:Z

.field private mNoDeviceFoundAdded:Z

.field private mNoDeviceFoundPreference:Landroid/preference/Preference;

.field private mNoDeviceIgnore:Z

.field private mNoDeviceTitle:I

.field private mProgress:Z

.field private mProgressText:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/ProgressCategoryBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v0, p0, Lcom/android/settings/ProgressCategory;->mProgress:Z

    iput-boolean v0, p0, Lcom/android/settings/ProgressCategory;->mCheckIgnore:Z

    iput-boolean v0, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceIgnore:Z

    iput-boolean v0, p0, Lcom/android/settings/ProgressCategory;->mChangeProgressText:Z

    const v0, 0x7f0d0aa0

    iput v0, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceTitle:I

    const v0, 0x7f040091

    invoke-virtual {p0, v0}, Lcom/android/settings/ProgressCategory;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public onBindView(Landroid/view/View;)V
    .registers 10

    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-super {p0, p1}, Lcom/android/settings/ProgressCategoryBase;->onBindView(Landroid/view/View;)V

    const v3, 0x7f0a018e

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0a018d

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-boolean v3, p0, Lcom/android/settings/ProgressCategory;->mChangeProgressText:Z

    if-nez v3, :cond_66

    iget-boolean v3, p0, Lcom/android/settings/ProgressCategory;->mProgress:Z

    if-eqz v3, :cond_62

    const v3, 0x7f0d0093

    :goto_22
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    :goto_25
    invoke-virtual {p0}, Lcom/android/settings/ProgressCategory;->getPreferenceCount()I

    move-result v3

    if-eqz v3, :cond_39

    invoke-virtual {p0}, Lcom/android/settings/ProgressCategory;->getPreferenceCount()I

    move-result v3

    if-ne v3, v5, :cond_6c

    invoke-virtual {p0, v4}, Lcom/android/settings/ProgressCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    iget-object v7, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    if-ne v3, v7, :cond_6c

    :cond_39
    move v0, v5

    :goto_3a
    iget-boolean v3, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceIgnore:Z

    if-nez v3, :cond_70

    if-eqz v0, :cond_6e

    move v3, v6

    :goto_41
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_44
    iget-boolean v3, p0, Lcom/android/settings/ProgressCategory;->mProgress:Z

    if-eqz v3, :cond_49

    move v6, v4

    :cond_49
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v3, p0, Lcom/android/settings/ProgressCategory;->mProgress:Z

    if-nez v3, :cond_56

    if-eqz v0, :cond_56

    iget-boolean v3, p0, Lcom/android/settings/ProgressCategory;->mCheckIgnore:Z

    if-eqz v3, :cond_74

    :cond_56
    iget-boolean v3, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundAdded:Z

    if-eqz v3, :cond_61

    iget-object v3, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    invoke-virtual {p0, v3}, Lcom/android/settings/ProgressCategory;->removePreference(Landroid/preference/Preference;)Z

    iput-boolean v4, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundAdded:Z

    :cond_61
    :goto_61
    return-void

    :cond_62
    const v3, 0x7f0d019f

    goto :goto_22

    :cond_66
    iget v3, p0, Lcom/android/settings/ProgressCategory;->mProgressText:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_25

    :cond_6c
    move v0, v4

    goto :goto_3a

    :cond_6e
    move v3, v4

    goto :goto_41

    :cond_70
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_44

    :cond_74
    iget-boolean v3, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundAdded:Z

    if-nez v3, :cond_61

    iget-object v3, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    if-nez v3, :cond_9b

    new-instance v3, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/ProgressCategory;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    const v6, 0x7f040088

    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setLayoutResource(I)V

    iget-object v3, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    iget v6, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceTitle:I

    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setTitle(I)V

    iget-object v3, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSelectable(Z)V

    :cond_9b
    iget-object v3, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    invoke-virtual {p0, v3}, Lcom/android/settings/ProgressCategory;->addPreference(Landroid/preference/Preference;)Z

    iput-boolean v5, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceFoundAdded:Z

    goto :goto_61
.end method

.method public setIgnoreMessage(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/settings/ProgressCategory;->mCheckIgnore:Z

    return-void
.end method

.method public setIgnoreNoDevice(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceIgnore:Z

    return-void
.end method

.method public setNoDeviceFoundText(I)V
    .registers 2

    iput p1, p0, Lcom/android/settings/ProgressCategory;->mNoDeviceTitle:I

    return-void
.end method

.method public setProgress(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/settings/ProgressCategory;->mProgress:Z

    invoke-virtual {p0}, Lcom/android/settings/ProgressCategory;->notifyChanged()V

    return-void
.end method

.method public setProgressText(ZI)V
    .registers 4

    iput-boolean p1, p0, Lcom/android/settings/ProgressCategory;->mChangeProgressText:Z

    iget-boolean v0, p0, Lcom/android/settings/ProgressCategory;->mChangeProgressText:Z

    if-eqz v0, :cond_9

    iput p2, p0, Lcom/android/settings/ProgressCategory;->mProgressText:I

    :goto_8
    return-void

    :cond_9
    const v0, 0x7f0d0093

    iput v0, p0, Lcom/android/settings/ProgressCategory;->mProgressText:I

    goto :goto_8
.end method
