.class Lcom/google/common/collect/Ordering$ArbitraryOrdering$1;
.super Ljava/lang/Object;
.source "Ordering.java"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Ordering$ArbitraryOrdering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Function",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final counter:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic this$0:Lcom/google/common/collect/Ordering$ArbitraryOrdering;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Ordering$ArbitraryOrdering;)V
    .registers 4

    iput-object p1, p0, Lcom/google/common/collect/Ordering$ArbitraryOrdering$1;->this$0:Lcom/google/common/collect/Ordering$ArbitraryOrdering;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/google/common/collect/Ordering$ArbitraryOrdering$1;->counter:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Integer;
    .registers 3

    iget-object v0, p0, Lcom/google/common/collect/Ordering$ArbitraryOrdering$1;->counter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/common/collect/Ordering$ArbitraryOrdering$1;->apply(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
