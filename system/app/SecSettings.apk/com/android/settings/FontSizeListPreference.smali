.class public Lcom/android/settings/FontSizeListPreference;
.super Landroid/preference/ListPreference;
.source "FontSizeListPreference.java"


# instance fields
.field private context:Landroid/content/Context;

.field private isWidget:Ljava/lang/Boolean;

.field private mFontSize:Lcom/android/settings/DisplaySettings;

.field private mFontSizeListAdapter:Lcom/android/settings/FontSizeListAdapter;

.field private mSelectedFontSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/FontSizeListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    const/4 v0, 0x0

    const v1, 0x7f0d0826

    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/android/settings/FontSizeListPreference;->context:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/settings/FontSizeListPreference;->mFontSizeListAdapter:Lcom/android/settings/FontSizeListAdapter;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/FontSizeListPreference;->mSelectedFontSize:I

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/FontSizeListPreference;->isWidget:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/android/settings/FontSizeListPreference;->context:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/android/settings/FontSizeListPreference;->setTitle(I)V

    const v0, 0x7f0d0827

    invoke-virtual {p0, v0}, Lcom/android/settings/FontSizeListPreference;->setSummary(I)V

    invoke-virtual {p0, v1}, Lcom/android/settings/FontSizeListPreference;->setDialogTitle(I)V

    const/high16 v0, 0x104

    invoke-virtual {p0, v0}, Lcom/android/settings/FontSizeListPreference;->setNegativeButtonText(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/FontSizeListPreference;)Ljava/lang/Boolean;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/FontSizeListPreference;->isWidget:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/settings/FontSizeListPreference;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .registers 2

    iput-object p1, p0, Lcom/android/settings/FontSizeListPreference;->isWidget:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings/FontSizeListPreference;)Lcom/android/settings/DisplaySettings;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/FontSizeListPreference;->mFontSize:Lcom/android/settings/DisplaySettings;

    return-object v0
.end method


# virtual methods
.method public directFontsize()V
    .registers 2

    invoke-super {p0}, Landroid/preference/ListPreference;->onClick()V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/FontSizeListPreference;->isWidget:Ljava/lang/Boolean;

    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .registers 5

    iget-object v0, p0, Lcom/android/settings/FontSizeListPreference;->mFontSizeListAdapter:Lcom/android/settings/FontSizeListAdapter;

    if-nez v0, :cond_d

    new-instance v0, Lcom/android/settings/FontSizeListAdapter;

    iget-object v1, p0, Lcom/android/settings/FontSizeListPreference;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/FontSizeListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/FontSizeListPreference;->mFontSizeListAdapter:Lcom/android/settings/FontSizeListAdapter;

    :cond_d
    iget-object v0, p0, Lcom/android/settings/FontSizeListPreference;->mFontSizeListAdapter:Lcom/android/settings/FontSizeListAdapter;

    iget-object v0, v0, Lcom/android/settings/FontSizeListAdapter;->mFontSizeNames:Ljava/util/Vector;

    iget-object v1, p0, Lcom/android/settings/FontSizeListPreference;->mFontSizeListAdapter:Lcom/android/settings/FontSizeListAdapter;

    iget-object v1, v1, Lcom/android/settings/FontSizeListAdapter;->mFontSizeNames:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/FontSizeListPreference;->setEntries([Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/FontSizeListPreference;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "font_size"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/FontSizeListPreference;->mSelectedFontSize:I

    const-string v0, "FontSizeListPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPrepareDialogBuilder : Selected item : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/FontSizeListPreference;->mSelectedFontSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/FontSizeListPreference;->mFontSizeListAdapter:Lcom/android/settings/FontSizeListAdapter;

    iget v1, p0, Lcom/android/settings/FontSizeListPreference;->mSelectedFontSize:I

    invoke-virtual {p1, v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v0, 0x104

    new-instance v1, Lcom/android/settings/FontSizeListPreference$1;

    invoke-direct {v1, p0}, Lcom/android/settings/FontSizeListPreference$1;-><init>(Lcom/android/settings/FontSizeListPreference;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    return-void
.end method

.method public setObject(Lcom/android/settings/DisplaySettings;)V
    .registers 2

    iput-object p1, p0, Lcom/android/settings/FontSizeListPreference;->mFontSize:Lcom/android/settings/DisplaySettings;

    return-void
.end method
