.class Lcom/android/settings/customizablekey/AppList$AlphaComparator;
.super Ljava/lang/Object;
.source "AppList.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/customizablekey/AppList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AlphaComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/content/pm/ResolveInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final sCollator:Ljava/text/Collator;

.field final synthetic this$0:Lcom/android/settings/customizablekey/AppList;


# virtual methods
.method public compare(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I
    .registers 6

    if-eqz p1, :cond_e

    iget-object v0, p0, Lcom/android/settings/customizablekey/AppList$AlphaComparator;->this$0:Lcom/android/settings/customizablekey/AppList;

    #getter for: Lcom/android/settings/customizablekey/AppList;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v0}, Lcom/android/settings/customizablekey/AppList;->access$000(Lcom/android/settings/customizablekey/AppList;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_10

    :cond_e
    const/4 v0, -0x1

    :goto_f
    return v0

    :cond_10
    if-eqz p2, :cond_1e

    iget-object v0, p0, Lcom/android/settings/customizablekey/AppList$AlphaComparator;->this$0:Lcom/android/settings/customizablekey/AppList;

    #getter for: Lcom/android/settings/customizablekey/AppList;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v0}, Lcom/android/settings/customizablekey/AppList;->access$000(Lcom/android/settings/customizablekey/AppList;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_20

    :cond_1e
    const/4 v0, 0x1

    goto :goto_f

    :cond_20
    iget-object v0, p0, Lcom/android/settings/customizablekey/AppList$AlphaComparator;->sCollator:Ljava/text/Collator;

    iget-object v1, p0, Lcom/android/settings/customizablekey/AppList$AlphaComparator;->this$0:Lcom/android/settings/customizablekey/AppList;

    #getter for: Lcom/android/settings/customizablekey/AppList;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v1}, Lcom/android/settings/customizablekey/AppList;->access$000(Lcom/android/settings/customizablekey/AppList;)Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/customizablekey/AppList$AlphaComparator;->this$0:Lcom/android/settings/customizablekey/AppList;

    #getter for: Lcom/android/settings/customizablekey/AppList;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v2}, Lcom/android/settings/customizablekey/AppList;->access$000(Lcom/android/settings/customizablekey/AppList;)Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_f
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Landroid/content/pm/ResolveInfo;

    check-cast p2, Landroid/content/pm/ResolveInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/customizablekey/AppList$AlphaComparator;->compare(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I

    move-result v0

    return v0
.end method
