.class Lcom/google/common/collect/CustomConcurrentHashMap$ComputingImpl;
.super Lcom/google/common/collect/CustomConcurrentHashMap$Impl;
.source "CustomConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/CustomConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ComputingImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/CustomConcurrentHashMap$Impl",
        "<TK;TV;TE;>;"
    }
.end annotation


# static fields
.field static final serialVersionUID:J


# instance fields
.field final computer:Lcom/google/common/base/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Function",
            "<-TK;+TV;>;"
        }
    .end annotation
.end field

.field final computingStrategy:Lcom/google/common/collect/CustomConcurrentHashMap$ComputingStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/CustomConcurrentHashMap$ComputingStrategy",
            "<TK;TV;TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/CustomConcurrentHashMap$ComputingStrategy;Lcom/google/common/collect/CustomConcurrentHashMap$Builder;Lcom/google/common/base/Function;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$ComputingStrategy",
            "<TK;TV;TE;>;",
            "Lcom/google/common/collect/CustomConcurrentHashMap$Builder;",
            "Lcom/google/common/base/Function",
            "<-TK;+TV;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;-><init>(Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;Lcom/google/common/collect/CustomConcurrentHashMap$Builder;)V

    iput-object p1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$ComputingImpl;->computingStrategy:Lcom/google/common/collect/CustomConcurrentHashMap$ComputingStrategy;

    iput-object p3, p0, Lcom/google/common/collect/CustomConcurrentHashMap$ComputingImpl;->computer:Lcom/google/common/base/Function;

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    move-object/from16 v10, p1

    if-nez v10, :cond_c

    new-instance v15, Ljava/lang/NullPointerException;

    const-string v16, "key"

    invoke-direct/range {v15 .. v16}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v15

    :cond_c
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/google/common/collect/CustomConcurrentHashMap$ComputingImpl;->hash(Ljava/lang/Object;)I

    move-result v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/google/common/collect/CustomConcurrentHashMap$ComputingImpl;->segmentFor(I)Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;

    move-result-object v11

    :cond_18
    :goto_18
    invoke-virtual {v11, v10, v7}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->getEntry(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_88

    const/4 v3, 0x0

    invoke-virtual {v11}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->lock()V

    :try_start_22
    invoke-virtual {v11, v10, v7}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->getEntry(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_55

    const/4 v3, 0x1

    iget v1, v11, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->count:I

    add-int/lit8 v2, v1, 0x1

    iget v15, v11, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->threshold:I

    if-le v1, v15, :cond_34

    invoke-virtual {v11}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->expand()V

    :cond_34
    iget-object v13, v11, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v13}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    and-int v8, v7, v15

    invoke-virtual {v13, v8}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    iget v15, v11, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->modCount:I

    add-int/lit8 v15, v15, 0x1

    iput v15, v11, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->modCount:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/common/collect/CustomConcurrentHashMap$ComputingImpl;->computingStrategy:Lcom/google/common/collect/CustomConcurrentHashMap$ComputingStrategy;

    invoke-interface {v15, v10, v7, v6}, Lcom/google/common/collect/CustomConcurrentHashMap$ComputingStrategy;->newEntry(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v13, v8, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    iput v2, v11, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->count:I
    :try_end_55
    .catchall {:try_start_22 .. :try_end_55} :catchall_7c

    :cond_55
    invoke-virtual {v11}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    if-eqz v3, :cond_88

    const/4 v12, 0x0

    :try_start_5b
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/common/collect/CustomConcurrentHashMap$ComputingImpl;->computingStrategy:Lcom/google/common/collect/CustomConcurrentHashMap$ComputingStrategy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/common/collect/CustomConcurrentHashMap$ComputingImpl;->computer:Lcom/google/common/base/Function;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v15, v10, v5, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$ComputingStrategy;->compute(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/base/Function;)Ljava/lang/Object;

    move-result-object v14

    if-nez v14, :cond_81

    new-instance v15, Ljava/lang/NullPointerException;

    const-string v16, "compute() returned null unexpectedly"

    invoke-direct/range {v15 .. v16}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v15
    :try_end_75
    .catchall {:try_start_5b .. :try_end_75} :catchall_75

    :catchall_75
    move-exception v15

    if-nez v12, :cond_7b

    invoke-virtual {v11, v5, v7}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->removeEntry(Ljava/lang/Object;I)Z

    :cond_7b
    throw v15

    :catchall_7c
    move-exception v15

    invoke-virtual {v11}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    throw v15

    :cond_81
    const/4 v12, 0x1

    if-nez v12, :cond_87

    invoke-virtual {v11, v5, v7}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->removeEntry(Ljava/lang/Object;I)Z

    :cond_87
    :goto_87
    return-object v14

    :cond_88
    const/4 v9, 0x0

    :goto_89
    :try_start_89
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/common/collect/CustomConcurrentHashMap$ComputingImpl;->computingStrategy:Lcom/google/common/collect/CustomConcurrentHashMap$ComputingStrategy;

    invoke-interface {v15, v5}, Lcom/google/common/collect/CustomConcurrentHashMap$ComputingStrategy;->waitForValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-nez v14, :cond_a1

    invoke-virtual {v11, v5, v7}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->removeEntry(Ljava/lang/Object;I)Z
    :try_end_96
    .catchall {:try_start_89 .. :try_end_96} :catchall_ae
    .catch Ljava/lang/InterruptedException; {:try_start_89 .. :try_end_96} :catch_ab

    if-eqz v9, :cond_18

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Thread;->interrupt()V

    goto/16 :goto_18

    :cond_a1
    if-eqz v9, :cond_87

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Thread;->interrupt()V

    goto :goto_87

    :catch_ab
    move-exception v4

    const/4 v9, 0x1

    goto :goto_89

    :catchall_ae
    move-exception v15

    if-eqz v9, :cond_b8

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Thread;->interrupt()V

    :cond_b8
    throw v15
.end method
