.class public Lcom/android/settings/CryptDecryptConfirm;
.super Landroid/app/Fragment;
.source "CryptDecryptConfirm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/CryptDecryptConfirm$Blank;
    }
.end annotation


# instance fields
.field private mContentView:Landroid/view/View;

.field private mFinalButton:Landroid/widget/Button;

.field private mFinalClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    new-instance v0, Lcom/android/settings/CryptDecryptConfirm$1;

    invoke-direct {v0, p0}, Lcom/android/settings/CryptDecryptConfirm$1;-><init>(Lcom/android/settings/CryptDecryptConfirm;)V

    iput-object v0, p0, Lcom/android/settings/CryptDecryptConfirm;->mFinalClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private establishFinalConfirmationState()V
    .registers 3

    iget-object v0, p0, Lcom/android/settings/CryptDecryptConfirm;->mContentView:Landroid/view/View;

    const v1, 0x7f0a0052

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/CryptDecryptConfirm;->mFinalButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/settings/CryptDecryptConfirm;->mFinalButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/CryptDecryptConfirm;->mFinalClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 6

    const v0, 0x7f040028

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/CryptDecryptConfirm;->mContentView:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/settings/CryptDecryptConfirm;->establishFinalConfirmationState()V

    iget-object v0, p0, Lcom/android/settings/CryptDecryptConfirm;->mContentView:Landroid/view/View;

    return-object v0
.end method
