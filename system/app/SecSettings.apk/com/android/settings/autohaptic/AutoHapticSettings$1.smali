.class Lcom/android/settings/autohaptic/AutoHapticSettings$1;
.super Ljava/lang/Object;
.source "AutoHapticSettings.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/autohaptic/AutoHapticSettings;->refreshAppListUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/settings/autohaptic/AutoHapticSettings$IncludedApps;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/autohaptic/AutoHapticSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/autohaptic/AutoHapticSettings;)V
    .registers 2

    iput-object p1, p0, Lcom/android/settings/autohaptic/AutoHapticSettings$1;->this$0:Lcom/android/settings/autohaptic/AutoHapticSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/settings/autohaptic/AutoHapticSettings$IncludedApps;Lcom/android/settings/autohaptic/AutoHapticSettings$IncludedApps;)I
    .registers 5

    iget-object v0, p1, Lcom/android/settings/autohaptic/AutoHapticSettings$IncludedApps;->mName:Ljava/lang/String;

    iget-object v1, p2, Lcom/android/settings/autohaptic/AutoHapticSettings$IncludedApps;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Lcom/android/settings/autohaptic/AutoHapticSettings$IncludedApps;

    check-cast p2, Lcom/android/settings/autohaptic/AutoHapticSettings$IncludedApps;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/autohaptic/AutoHapticSettings$1;->compare(Lcom/android/settings/autohaptic/AutoHapticSettings$IncludedApps;Lcom/android/settings/autohaptic/AutoHapticSettings$IncludedApps;)I

    move-result v0

    return v0
.end method
