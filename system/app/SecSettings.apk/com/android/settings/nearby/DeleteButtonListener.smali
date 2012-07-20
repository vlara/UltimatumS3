.class public Lcom/android/settings/nearby/DeleteButtonListener;
.super Ljava/lang/Object;
.source "DeleteButtonListener.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private bAcceptList:Z

.field private mContext:Landroid/content/Context;

.field private mListener:Lcom/android/settings/nearby/ListItemListener;

.field private mParent:Landroid/app/Dialog;


# direct methods
.method public constructor <init>(Lcom/android/settings/nearby/ListItemListener;Landroid/app/Dialog;Landroid/content/Context;Z)V
    .registers 6

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settings/nearby/DeleteButtonListener;->mListener:Lcom/android/settings/nearby/ListItemListener;

    iput-object v0, p0, Lcom/android/settings/nearby/DeleteButtonListener;->mParent:Landroid/app/Dialog;

    iput-object v0, p0, Lcom/android/settings/nearby/DeleteButtonListener;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/nearby/DeleteButtonListener;->bAcceptList:Z

    iput-object p2, p0, Lcom/android/settings/nearby/DeleteButtonListener;->mParent:Landroid/app/Dialog;

    iput-object p1, p0, Lcom/android/settings/nearby/DeleteButtonListener;->mListener:Lcom/android/settings/nearby/ListItemListener;

    iput-object p3, p0, Lcom/android/settings/nearby/DeleteButtonListener;->mContext:Landroid/content/Context;

    iput-boolean p4, p0, Lcom/android/settings/nearby/DeleteButtonListener;->bAcceptList:Z

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 10

    const-string v5, "AllshareSetting"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DeleteButtonListener: onClick DELETE BUTTON"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/nearby/DeleteButtonListener;->mListener:Lcom/android/settings/nearby/ListItemListener;

    invoke-virtual {v7}, Lcom/android/settings/nearby/ListItemListener;->getCheckedItems()Ljava/util/LinkedHashMap;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/LinkedHashMap;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/settings/nearby/DeleteButtonListener;->mListener:Lcom/android/settings/nearby/ListItemListener;

    invoke-virtual {v5}, Lcom/android/settings/nearby/ListItemListener;->getCheckedItems()Ljava/util/LinkedHashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v3

    new-array v4, v3, [I

    const/4 v0, 0x0

    :goto_2f
    if-ge v0, v3, :cond_4f

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->eldest()Ljava/util/Map$Entry;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v4, v0

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->eldest()Ljava/util/Map$Entry;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    :cond_4f
    new-instance v1, Landroid/content/Intent;

    const-string v5, "com.android.settings.allshare.UPDATE_LIST"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "ACCEPTLIST"

    iget-boolean v6, p0, Lcom/android/settings/nearby/DeleteButtonListener;->bAcceptList:Z

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v5, "INDEX"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/settings/nearby/DeleteButtonListener;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v5, p0, Lcom/android/settings/nearby/DeleteButtonListener;->mParent:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
