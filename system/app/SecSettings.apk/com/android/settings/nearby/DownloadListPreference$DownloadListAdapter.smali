.class public Lcom/android/settings/nearby/DownloadListPreference$DownloadListAdapter;
.super Landroid/widget/BaseAdapter;
.source "DownloadListPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/nearby/DownloadListPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DownloadListAdapter"
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field public mEntries:[Ljava/lang/String;

.field public mEntriesValues:[Ljava/lang/String;

.field mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/settings/nearby/DownloadListPreference;


# direct methods
.method public constructor <init>(Lcom/android/settings/nearby/DownloadListPreference;Landroid/content/Context;)V
    .registers 5

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/android/settings/nearby/DownloadListPreference$DownloadListAdapter;->this$0:Lcom/android/settings/nearby/DownloadListPreference;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object v1, p0, Lcom/android/settings/nearby/DownloadListPreference$DownloadListAdapter;->context:Landroid/content/Context;

    iput-object v1, p0, Lcom/android/settings/nearby/DownloadListPreference$DownloadListAdapter;->mInflater:Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/android/settings/nearby/DownloadListPreference$DownloadListAdapter;->mEntries:[Ljava/lang/String;

    iput-object v1, p0, Lcom/android/settings/nearby/DownloadListPreference$DownloadListAdapter;->mEntriesValues:[Ljava/lang/String;

    iput-object p2, p0, Lcom/android/settings/nearby/DownloadListPreference$DownloadListAdapter;->context:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/android/settings/nearby/DownloadListPreference$DownloadListAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090053

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/nearby/DownloadListPreference$DownloadListAdapter;->mEntries:[Ljava/lang/String;

    const v1, 0x7f090054

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/nearby/DownloadListPreference$DownloadListAdapter;->mEntriesValues:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    iget-object v0, p0, Lcom/android/settings/nearby/DownloadListPreference$DownloadListAdapter;->mEntries:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/android/settings/nearby/DownloadListPreference$DownloadListAdapter;->mEntries:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8

    iget-object v1, p0, Lcom/android/settings/nearby/DownloadListPreference$DownloadListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x10900fe

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v1, 0x1020014

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/nearby/DownloadListPreference$DownloadListAdapter;->mEntries:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    if-ne p1, v1, :cond_27

    const v1, -0x777778

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_27
    return-object v0
.end method
