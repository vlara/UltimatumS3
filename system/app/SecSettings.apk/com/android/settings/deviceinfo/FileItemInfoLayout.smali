.class public Lcom/android/settings/deviceinfo/FileItemInfoLayout;
.super Landroid/widget/RelativeLayout;
.source "FileItemInfoLayout.java"

# interfaces
.implements Landroid/widget/Checkable;


# static fields
.field private static final mLengthExternalStorageDirPrefix:I


# instance fields
.field private mCheckbox:Landroid/widget/CheckBox;

.field private mFileNameView:Landroid/widget/TextView;

.field private mFileSizeView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/settings/deviceinfo/FileItemInfoLayout;->mLengthExternalStorageDirPrefix:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/deviceinfo/FileItemInfoLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/deviceinfo/FileItemInfoLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public getCheckBox()Landroid/widget/CheckBox;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/deviceinfo/FileItemInfoLayout;->mCheckbox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method public isChecked()Z
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    iget-object v0, p0, Lcom/android/settings/deviceinfo/FileItemInfoLayout;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    return v0
.end method

.method protected onFinishInflate()V
    .registers 2

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x7f0a01f0

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/FileItemInfoLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/FileItemInfoLayout;->mFileNameView:Landroid/widget/TextView;

    const v0, 0x7f0a01f1

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/FileItemInfoLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/FileItemInfoLayout;->mFileSizeView:Landroid/widget/TextView;

    const v0, 0x7f0a01ef

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/FileItemInfoLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/FileItemInfoLayout;->mCheckbox:Landroid/widget/CheckBox;

    return-void
.end method

.method public setChecked(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/settings/deviceinfo/FileItemInfoLayout;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/android/settings/deviceinfo/FileItemInfoLayout;->mFileNameView:Landroid/widget/TextView;

    sget v1, Lcom/android/settings/deviceinfo/FileItemInfoLayout;->mLengthExternalStorageDirPrefix:I

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setFileNameForSystemMemory(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/android/settings/deviceinfo/FileItemInfoLayout;->mFileNameView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setFileSize(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/android/settings/deviceinfo/FileItemInfoLayout;->mFileSizeView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public toggle()V
    .registers 2

    iget-object v0, p0, Lcom/android/settings/deviceinfo/FileItemInfoLayout;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_d

    const/4 v0, 0x1

    :goto_9
    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/FileItemInfoLayout;->setChecked(Z)V

    return-void

    :cond_d
    const/4 v0, 0x0

    goto :goto_9
.end method
