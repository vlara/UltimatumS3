.class Lcom/google/common/collect/MapMaker$StrategyImpl$FutureValueReference;
.super Ljava/lang/Object;
.source "MapMaker.java"

# interfaces
.implements Lcom/google/common/collect/MapMaker$ValueReference;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/MapMaker$StrategyImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FutureValueReference"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/collect/MapMaker$ValueReference",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final newEntry:Lcom/google/common/collect/MapMaker$ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/MapMaker$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final original:Lcom/google/common/collect/MapMaker$ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/MapMaker$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/common/collect/MapMaker$StrategyImpl;


# direct methods
.method constructor <init>(Lcom/google/common/collect/MapMaker$StrategyImpl;Lcom/google/common/collect/MapMaker$ReferenceEntry;Lcom/google/common/collect/MapMaker$ReferenceEntry;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMaker$ReferenceEntry",
            "<TK;TV;>;",
            "Lcom/google/common/collect/MapMaker$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/common/collect/MapMaker$StrategyImpl$FutureValueReference;->this$0:Lcom/google/common/collect/MapMaker$StrategyImpl;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/common/collect/MapMaker$StrategyImpl$FutureValueReference;->original:Lcom/google/common/collect/MapMaker$ReferenceEntry;

    iput-object p3, p0, Lcom/google/common/collect/MapMaker$StrategyImpl$FutureValueReference;->newEntry:Lcom/google/common/collect/MapMaker$ReferenceEntry;

    return-void
.end method


# virtual methods
.method public copyFor(Lcom/google/common/collect/MapMaker$ReferenceEntry;)Lcom/google/common/collect/MapMaker$ValueReference;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMaker$ReferenceEntry",
            "<TK;TV;>;)",
            "Lcom/google/common/collect/MapMaker$ValueReference",
            "<TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/MapMaker$StrategyImpl$FutureValueReference;

    iget-object v1, p0, Lcom/google/common/collect/MapMaker$StrategyImpl$FutureValueReference;->this$0:Lcom/google/common/collect/MapMaker$StrategyImpl;

    iget-object v2, p0, Lcom/google/common/collect/MapMaker$StrategyImpl$FutureValueReference;->original:Lcom/google/common/collect/MapMaker$ReferenceEntry;

    invoke-direct {v0, v1, v2, p1}, Lcom/google/common/collect/MapMaker$StrategyImpl$FutureValueReference;-><init>(Lcom/google/common/collect/MapMaker$StrategyImpl;Lcom/google/common/collect/MapMaker$ReferenceEntry;Lcom/google/common/collect/MapMaker$ReferenceEntry;)V

    return-object v0
.end method

.method public get()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    iget-object v2, p0, Lcom/google/common/collect/MapMaker$StrategyImpl$FutureValueReference;->original:Lcom/google/common/collect/MapMaker$ReferenceEntry;

    invoke-interface {v2}, Lcom/google/common/collect/MapMaker$ReferenceEntry;->getValueReference()Lcom/google/common/collect/MapMaker$ValueReference;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/common/collect/MapMaker$ValueReference;->get()Ljava/lang/Object;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_12

    move-result-object v1

    const/4 v0, 0x1

    if-nez v0, :cond_11

    invoke-virtual {p0}, Lcom/google/common/collect/MapMaker$StrategyImpl$FutureValueReference;->removeEntry()V

    :cond_11
    return-object v1

    :catchall_12
    move-exception v2

    if-nez v0, :cond_18

    invoke-virtual {p0}, Lcom/google/common/collect/MapMaker$StrategyImpl$FutureValueReference;->removeEntry()V

    :cond_18
    throw v2
.end method

.method removeEntry()V
    .registers 3

    iget-object v0, p0, Lcom/google/common/collect/MapMaker$StrategyImpl$FutureValueReference;->this$0:Lcom/google/common/collect/MapMaker$StrategyImpl;

    iget-object v0, v0, Lcom/google/common/collect/MapMaker$StrategyImpl;->internals:Lcom/google/common/collect/CustomConcurrentHashMap$Internals;

    iget-object v1, p0, Lcom/google/common/collect/MapMaker$StrategyImpl$FutureValueReference;->newEntry:Lcom/google/common/collect/MapMaker$ReferenceEntry;

    invoke-interface {v0, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Internals;->removeEntry(Ljava/lang/Object;)Z

    return-void
.end method

.method public waitForValue()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    iget-object v2, p0, Lcom/google/common/collect/MapMaker$StrategyImpl$FutureValueReference;->this$0:Lcom/google/common/collect/MapMaker$StrategyImpl;

    iget-object v3, p0, Lcom/google/common/collect/MapMaker$StrategyImpl$FutureValueReference;->original:Lcom/google/common/collect/MapMaker$ReferenceEntry;

    invoke-virtual {v2, v3}, Lcom/google/common/collect/MapMaker$StrategyImpl;->waitForValue(Lcom/google/common/collect/MapMaker$ReferenceEntry;)Ljava/lang/Object;
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_10

    move-result-object v1

    const/4 v0, 0x1

    if-nez v0, :cond_f

    invoke-virtual {p0}, Lcom/google/common/collect/MapMaker$StrategyImpl$FutureValueReference;->removeEntry()V

    :cond_f
    return-object v1

    :catchall_10
    move-exception v2

    if-nez v0, :cond_16

    invoke-virtual {p0}, Lcom/google/common/collect/MapMaker$StrategyImpl$FutureValueReference;->removeEntry()V

    :cond_16
    throw v2
.end method
