.class final Lcom/android/settings/applications/ApplicationsState$4;
.super Ljava/lang/Object;
.source "ApplicationsState.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/ApplicationsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/settings/applications/ApplicationsState$AppEntry;",
        ">;"
    }
.end annotation


# instance fields
.field private final sCollator:Ljava/text/Collator;


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsState$4;->sCollator:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/settings/applications/ApplicationsState$AppEntry;Lcom/android/settings/applications/ApplicationsState$AppEntry;)I
    .registers 7

    iget-wide v0, p1, Lcom/android/settings/applications/ApplicationsState$AppEntry;->externalSize:J

    iget-wide v2, p2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->externalSize:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    iget-wide v0, p1, Lcom/android/settings/applications/ApplicationsState$AppEntry;->externalSize:J

    iget-wide v2, p2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->externalSize:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_14

    const/4 v0, -0x1

    goto :goto_9

    :cond_14
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$4;->sCollator:Ljava/text/Collator;

    iget-object v1, p1, Lcom/android/settings/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    iget-object v2, p2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_9
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Lcom/android/settings/applications/ApplicationsState$AppEntry;

    check-cast p2, Lcom/android/settings/applications/ApplicationsState$AppEntry;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/applications/ApplicationsState$4;->compare(Lcom/android/settings/applications/ApplicationsState$AppEntry;Lcom/android/settings/applications/ApplicationsState$AppEntry;)I

    move-result v0

    return v0
.end method
