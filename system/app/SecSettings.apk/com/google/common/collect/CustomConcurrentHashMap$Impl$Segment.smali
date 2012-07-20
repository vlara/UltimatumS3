.class final Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;
.super Ljava/util/concurrent/locks/ReentrantLock;
.source "CustomConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/CustomConcurrentHashMap$Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Segment"
.end annotation


# instance fields
.field volatile count:I

.field modCount:I

.field volatile table:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<TE;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;

.field threshold:I


# direct methods
.method constructor <init>(Lcom/google/common/collect/CustomConcurrentHashMap$Impl;I)V
    .registers 4

    iput-object p1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;

    invoke-direct {p0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    invoke-virtual {p0, p2}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->newEntryArray(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->setTable(Ljava/util/concurrent/atomic/AtomicReferenceArray;)V

    return-void
.end method


# virtual methods
.method clear()V
    .registers 4

    iget v2, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->count:I

    if-eqz v2, :cond_23

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->lock()V

    :try_start_7
    iget-object v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const/4 v0, 0x0

    :goto_a
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_17

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_17
    iget v2, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->modCount:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->count:I
    :try_end_20
    .catchall {:try_start_7 .. :try_end_20} :catchall_24

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    :cond_23
    return-void

    :catchall_24
    move-exception v2

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    throw v2
.end method

.method containsKey(Ljava/lang/Object;I)Z
    .registers 8

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;

    iget-object v2, v4, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->strategy:Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;

    iget v4, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->count:I

    if-eqz v4, :cond_2d

    invoke-virtual {p0, p2}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->getFirst(I)Ljava/lang/Object;

    move-result-object v0

    :goto_d
    if-eqz v0, :cond_2d

    invoke-interface {v2, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getHash(Ljava/lang/Object;)I

    move-result v4

    if-eq v4, p2, :cond_1a

    :cond_15
    invoke-interface {v2, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getNext(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_d

    :cond_1a
    invoke-interface {v2, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_15

    invoke-interface {v2, v1, p1}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->equalKeys(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    invoke-interface {v2, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2d

    const/4 v3, 0x1

    :cond_2d
    return v3
.end method

.method containsValue(Ljava/lang/Object;)Z
    .registers 9

    iget-object v6, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;

    iget-object v4, v6, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->strategy:Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;

    iget v6, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->count:I

    if-eqz v6, :cond_2d

    iget-object v5, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v3

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v3, :cond_2d

    invoke-virtual {v5, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    :goto_15
    if-eqz v0, :cond_2a

    invoke-interface {v4, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_22

    :cond_1d
    invoke-interface {v4, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getNext(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_15

    :cond_22
    invoke-interface {v4, v1, p1}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->equalValues(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d

    const/4 v6, 0x1

    :goto_29
    return v6

    :cond_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_2d
    const/4 v6, 0x0

    goto :goto_29
.end method

.method expand()V
    .registers 20

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v14}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v12

    const/high16 v18, 0x4000

    move/from16 v0, v18

    if-lt v12, v0, :cond_f

    :goto_e
    return-void

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v15, v0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->strategy:Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;

    shl-int/lit8 v18, v12, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->newEntryArray(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v18

    mul-int/lit8 v18, v18, 0x3

    div-int/lit8 v18, v18, 0x4

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->threshold:I

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v18

    add-int/lit8 v8, v18, -0x1

    const/4 v13, 0x0

    :goto_38
    if-ge v13, v12, :cond_96

    invoke-virtual {v14, v13}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_4f

    invoke-interface {v15, v3}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getNext(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v15, v3}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getHash(Ljava/lang/Object;)I

    move-result v18

    and-int v4, v18, v8

    if-nez v11, :cond_52

    invoke-virtual {v10, v4, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    :cond_4f
    add-int/lit8 v13, v13, 0x1

    goto :goto_38

    :cond_52
    move-object/from16 v16, v3

    move/from16 v17, v4

    move-object v6, v11

    :goto_57
    if-eqz v6, :cond_6c

    invoke-interface {v15, v6}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getHash(Ljava/lang/Object;)I

    move-result v18

    and-int v7, v18, v8

    move/from16 v0, v17

    if-eq v7, v0, :cond_67

    move/from16 v17, v7

    move-object/from16 v16, v6

    :cond_67
    invoke-interface {v15, v6}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getNext(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_57

    :cond_6c
    move/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v10, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    move-object v2, v3

    :goto_74
    move-object/from16 v0, v16

    if-eq v2, v0, :cond_4f

    invoke-interface {v15, v2}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_91

    invoke-interface {v15, v2}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getHash(Ljava/lang/Object;)I

    move-result v18

    and-int v7, v18, v8

    invoke-virtual {v10, v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v15, v5, v2, v9}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->copyEntry(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v10, v7, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    :cond_91
    invoke-interface {v15, v2}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getNext(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_74

    :cond_96
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    goto/16 :goto_e
.end method

.method get(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)TV;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->getEntry(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v1, 0x0

    :goto_7
    return-object v1

    :cond_8
    iget-object v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;

    iget-object v1, v1, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->strategy:Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;

    invoke-interface {v1, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_7
.end method

.method public getEntry(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)TE;"
        }
    .end annotation

    iget-object v3, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;

    iget-object v2, v3, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->strategy:Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;

    iget v3, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->count:I

    if-eqz v3, :cond_26

    invoke-virtual {p0, p2}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->getFirst(I)Ljava/lang/Object;

    move-result-object v0

    :goto_c
    if-eqz v0, :cond_26

    invoke-interface {v2, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getHash(Ljava/lang/Object;)I

    move-result v3

    if-eq v3, p2, :cond_19

    :cond_14
    invoke-interface {v2, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getNext(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_c

    :cond_19
    invoke-interface {v2, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_14

    invoke-interface {v2, v1, p1}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->equalKeys(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    :goto_25
    return-object v0

    :cond_26
    const/4 v0, 0x0

    goto :goto_25
.end method

.method getFirst(I)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method newEntryArray(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<TE;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    return-object v0
.end method

.method put(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;Z)TV;"
        }
    .end annotation

    iget-object v10, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;

    iget-object v8, v10, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->strategy:Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->lock()V

    :try_start_7
    iget v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->count:I

    add-int/lit8 v1, v0, 0x1

    iget v10, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->threshold:I

    if-le v0, v10, :cond_12

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->expand()V

    :cond_12
    iget-object v9, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    and-int v6, p2, v10

    invoke-virtual {v9, v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v2, v5

    :goto_21
    if-eqz v2, :cond_4d

    invoke-interface {v8, v2}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v8, v2}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getHash(Ljava/lang/Object;)I

    move-result v10

    if-ne v10, p2, :cond_48

    if-eqz v3, :cond_48

    invoke-interface {v8, p1, v3}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->equalKeys(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_48

    invoke-interface {v8, v2}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getValue(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_38
    .catchall {:try_start_7 .. :try_end_38} :catchall_64

    move-result-object v4

    if-eqz p4, :cond_41

    if-eqz v4, :cond_41

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    :goto_40
    return-object v4

    :cond_41
    :try_start_41
    invoke-interface {v8, v2, p3}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_64

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    goto :goto_40

    :cond_48
    :try_start_48
    invoke-interface {v8, v2}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getNext(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_21

    :cond_4d
    iget v10, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->modCount:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->modCount:I

    invoke-interface {v8, p1, p2, v5}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->newEntry(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v8, v7, p3}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v9, v6, v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    iput v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->count:I
    :try_end_5f
    .catchall {:try_start_48 .. :try_end_5f} :catchall_64

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    goto :goto_40

    :catchall_64
    move-exception v10

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    throw v10
.end method

.method remove(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)TV;"
        }
    .end annotation

    iget-object v11, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;

    iget-object v9, v11, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->strategy:Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->lock()V

    :try_start_7
    iget v11, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->count:I

    add-int/lit8 v0, v11, -0x1

    iget-object v10, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    and-int v5, p2, v11

    invoke-virtual {v10, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v1, v4

    :goto_1a
    if-eqz v1, :cond_60

    invoke-interface {v9, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v9, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getHash(Ljava/lang/Object;)I

    move-result v11

    if-ne v11, p2, :cond_5b

    if-eqz v2, :cond_5b

    invoke-interface {v9, v2, p1}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->equalKeys(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5b

    iget-object v11, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;

    iget-object v11, v11, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->strategy:Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;

    invoke-interface {v11, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iget v11, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->modCount:I

    add-int/lit8 v11, v11, 0x1

    iput v11, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->modCount:I

    invoke-interface {v9, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getNext(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v7, v4

    :goto_41
    if-eq v7, v1, :cond_52

    invoke-interface {v9, v7}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_4d

    invoke-interface {v9, v8, v7, v6}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->copyEntry(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    :cond_4d
    invoke-interface {v9, v7}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getNext(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    goto :goto_41

    :cond_52
    invoke-virtual {v10, v5, v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    iput v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->count:I
    :try_end_57
    .catchall {:try_start_7 .. :try_end_57} :catchall_65

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    :goto_5a
    return-object v3

    :cond_5b
    :try_start_5b
    invoke-interface {v9, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getNext(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5e
    .catchall {:try_start_5b .. :try_end_5e} :catchall_65

    move-result-object v1

    goto :goto_1a

    :cond_60
    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    goto :goto_5a

    :catchall_65
    move-exception v11

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    throw v11
.end method

.method remove(Ljava/lang/Object;ILjava/lang/Object;)Z
    .registers 16

    iget-object v11, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;

    iget-object v9, v11, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->strategy:Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->lock()V

    :try_start_7
    iget v11, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->count:I

    add-int/lit8 v0, v11, -0x1

    iget-object v10, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    and-int v5, p2, v11

    invoke-virtual {v10, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v1, v4

    :goto_1a
    if-eqz v1, :cond_72

    invoke-interface {v9, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v9, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getHash(Ljava/lang/Object;)I

    move-result v11

    if-ne v11, p2, :cond_6d

    if-eqz v2, :cond_6d

    invoke-interface {v9, v2, p1}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->equalKeys(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6d

    iget-object v11, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;

    iget-object v11, v11, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->strategy:Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;

    invoke-interface {v11, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eq p3, v3, :cond_42

    if-eqz p3, :cond_68

    if-eqz v3, :cond_68

    invoke-interface {v9, v3, p3}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->equalValues(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_68

    :cond_42
    iget v11, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->modCount:I

    add-int/lit8 v11, v11, 0x1

    iput v11, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->modCount:I

    invoke-interface {v9, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getNext(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v7, v4

    :goto_4d
    if-eq v7, v1, :cond_5e

    invoke-interface {v9, v7}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_59

    invoke-interface {v9, v8, v7, v6}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->copyEntry(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    :cond_59
    invoke-interface {v9, v7}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getNext(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    goto :goto_4d

    :cond_5e
    invoke-virtual {v10, v5, v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    iput v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->count:I
    :try_end_63
    .catchall {:try_start_7 .. :try_end_63} :catchall_77

    const/4 v11, 0x1

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    :goto_67
    return v11

    :cond_68
    const/4 v11, 0x0

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    goto :goto_67

    :cond_6d
    :try_start_6d
    invoke-interface {v9, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getNext(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_70
    .catchall {:try_start_6d .. :try_end_70} :catchall_77

    move-result-object v1

    goto :goto_1a

    :cond_72
    const/4 v11, 0x0

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    goto :goto_67

    :catchall_77
    move-exception v11

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    throw v11
.end method

.method public removeEntry(Ljava/lang/Object;I)Z
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)Z"
        }
    .end annotation

    iget-object v9, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;

    iget-object v7, v9, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->strategy:Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->lock()V

    :try_start_7
    iget v9, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->count:I

    add-int/lit8 v0, v9, -0x1

    iget-object v8, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    and-int v3, p2, v9

    invoke-virtual {v8, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    :goto_1a
    if-eqz v1, :cond_53

    invoke-interface {v7, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getHash(Ljava/lang/Object;)I

    move-result v9

    if-ne v9, p2, :cond_4e

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4e

    iget v9, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->modCount:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->modCount:I

    invoke-interface {v7, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getNext(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v2

    :goto_33
    if-eq v5, v1, :cond_44

    invoke-interface {v7, v5}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_3f

    invoke-interface {v7, v6, v5, v4}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->copyEntry(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    :cond_3f
    invoke-interface {v7, v5}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getNext(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_33

    :cond_44
    invoke-virtual {v8, v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    iput v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->count:I
    :try_end_49
    .catchall {:try_start_7 .. :try_end_49} :catchall_58

    const/4 v9, 0x1

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    :goto_4d
    return v9

    :cond_4e
    :try_start_4e
    invoke-interface {v7, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getNext(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_51
    .catchall {:try_start_4e .. :try_end_51} :catchall_58

    move-result-object v1

    goto :goto_1a

    :cond_53
    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    goto :goto_4d

    :catchall_58
    move-exception v9

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    throw v9
.end method

.method public removeEntry(Ljava/lang/Object;ILjava/lang/Object;)Z
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;ITV;)Z"
        }
    .end annotation

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;

    iget-object v8, v11, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->strategy:Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->lock()V

    :try_start_8
    iget v11, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->count:I

    add-int/lit8 v0, v11, -0x1

    iget-object v9, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    and-int v4, p2, v11

    invoke-virtual {v9, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    :goto_1b
    if-eqz v1, :cond_66

    invoke-interface {v8, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getHash(Ljava/lang/Object;)I

    move-result v11

    if-ne v11, p2, :cond_61

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_61

    invoke-interface {v8, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, p3, :cond_37

    if-eqz p3, :cond_5d

    invoke-interface {v8, v2, p3}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->equalValues(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5d

    :cond_37
    iget v10, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->modCount:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->modCount:I

    invoke-interface {v8, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getNext(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v3

    :goto_42
    if-eq v6, v1, :cond_53

    invoke-interface {v8, v6}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_4e

    invoke-interface {v8, v7, v6, v5}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->copyEntry(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    :cond_4e
    invoke-interface {v8, v6}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getNext(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_42

    :cond_53
    invoke-virtual {v9, v4, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    iput v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->count:I
    :try_end_58
    .catchall {:try_start_8 .. :try_end_58} :catchall_6a

    const/4 v10, 0x1

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    :goto_5c
    return v10

    :cond_5d
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    goto :goto_5c

    :cond_61
    :try_start_61
    invoke-interface {v8, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getNext(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_64
    .catchall {:try_start_61 .. :try_end_64} :catchall_6a

    move-result-object v1

    goto :goto_1b

    :cond_66
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    goto :goto_5c

    :catchall_6a
    move-exception v10

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    throw v10
.end method

.method replace(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;)TV;"
        }
    .end annotation

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;

    iget-object v3, v5, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->strategy:Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->lock()V

    :try_start_8
    invoke-virtual {p0, p2}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->getFirst(I)Ljava/lang/Object;

    move-result-object v0

    :goto_c
    if-eqz v0, :cond_37

    invoke-interface {v3, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v3, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getHash(Ljava/lang/Object;)I

    move-result v5

    if-ne v5, p2, :cond_32

    if-eqz v1, :cond_32

    invoke-interface {v3, p1, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->equalKeys(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_32

    invoke-interface {v3, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getValue(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_3c

    move-result-object v2

    if-nez v2, :cond_2b

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    move-object v2, v4

    :goto_2a
    return-object v2

    :cond_2b
    :try_start_2b
    invoke-interface {v3, v0, p3}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_3c

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    goto :goto_2a

    :cond_32
    :try_start_32
    invoke-interface {v3, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getNext(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_3c

    move-result-object v0

    goto :goto_c

    :cond_37
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    move-object v2, v4

    goto :goto_2a

    :catchall_3c
    move-exception v4

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    throw v4
.end method

.method replace(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;TV;)Z"
        }
    .end annotation

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->this$0:Lcom/google/common/collect/CustomConcurrentHashMap$Impl;

    iget-object v3, v5, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->strategy:Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->lock()V

    :try_start_8
    invoke-virtual {p0, p2}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->getFirst(I)Ljava/lang/Object;

    move-result-object v0

    :goto_c
    if-eqz v0, :cond_3d

    invoke-interface {v3, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v3, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getHash(Ljava/lang/Object;)I

    move-result v5

    if-ne v5, p2, :cond_38

    if-eqz v1, :cond_38

    invoke-interface {v3, p1, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->equalKeys(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_38

    invoke-interface {v3, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getValue(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_41

    move-result-object v2

    if-nez v2, :cond_2a

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    :goto_29
    return v4

    :cond_2a
    :try_start_2a
    invoke-interface {v3, v2, p3}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->equalValues(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_38

    invoke-interface {v3, v0, p4}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_33
    .catchall {:try_start_2a .. :try_end_33} :catchall_41

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    goto :goto_29

    :cond_38
    :try_start_38
    invoke-interface {v3, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;->getNext(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_41

    move-result-object v0

    goto :goto_c

    :cond_3d
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    goto :goto_29

    :catchall_41
    move-exception v4

    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    throw v4
.end method

.method setTable(Ljava/util/concurrent/atomic/AtomicReferenceArray;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<TE;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->threshold:I

    iput-object p1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    return-void
.end method
