.class Lcom/google/common/collect/MapMaker$StrategyImpl;
.super Ljava/lang/Object;
.source "MapMaker.java"

# interfaces
.implements Lcom/google/common/collect/CustomConcurrentHashMap$ComputingStrategy;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/MapMaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StrategyImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/MapMaker$StrategyImpl$Fields;,
        Lcom/google/common/collect/MapMaker$StrategyImpl$FutureValueReference;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Lcom/google/common/collect/CustomConcurrentHashMap$ComputingStrategy",
        "<TK;TV;",
        "Lcom/google/common/collect/MapMaker$ReferenceEntry",
        "<TK;TV;>;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final expirationNanos:J

.field internals:Lcom/google/common/collect/CustomConcurrentHashMap$Internals;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/CustomConcurrentHashMap$Internals",
            "<TK;TV;",
            "Lcom/google/common/collect/MapMaker$ReferenceEntry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field final keyStrength:Lcom/google/common/collect/MapMaker$Strength;

.field final map:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final valueStrength:Lcom/google/common/collect/MapMaker$Strength;


# direct methods
.method constructor <init>(Lcom/google/common/collect/MapMaker;Lcom/google/common/base/Function;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMaker;",
            "Lcom/google/common/base/Function",
            "<-TK;+TV;>;)V"
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #getter for: Lcom/google/common/collect/MapMaker;->keyStrength:Lcom/google/common/collect/MapMaker$Strength;
    invoke-static {p1}, Lcom/google/common/collect/MapMaker;->access$100(Lcom/google/common/collect/MapMaker;)Lcom/google/common/collect/MapMaker$Strength;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/MapMaker$StrategyImpl;->keyStrength:Lcom/google/common/collect/MapMaker$Strength;

    #getter for: Lcom/google/common/collect/MapMaker;->valueStrength:Lcom/google/common/collect/MapMaker$Strength;
    invoke-static {p1}, Lcom/google/common/collect/MapMaker;->access$200(Lcom/google/common/collect/MapMaker;)Lcom/google/common/collect/MapMaker$Strength;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/MapMaker$StrategyImpl;->valueStrength:Lcom/google/common/collect/MapMaker$Strength;

    #getter for: Lcom/google/common/collect/MapMaker;->expirationNanos:J
    invoke-static {p1}, Lcom/google/common/collect/MapMaker;->access$300(Lcom/google/common/collect/MapMaker;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/collect/MapMaker$StrategyImpl;->expirationNanos:J

    #getter for: Lcom/google/common/collect/MapMaker;->builder:Lcom/google/common/collect/CustomConcurrentHashMap$Builder;
    invoke-static {p1}, Lcom/google/common/collect/MapMaker;->access$400(Lcom/google/common/collect/MapMaker;)Lcom/google/common/collect/CustomConcurrentHashMap$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/google/common/collect/CustomConcurrentHashMap$Builder;->buildComputingMap(Lcom/google/common/collect/CustomConcurrentHashMap$ComputingStrategy;Lcom/google/common/base/Function;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/MapMaker$StrategyImpl;->map:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    :try_start_0
    sget-object v1, Lcom/google/common/collect/MapMaker$StrategyImpl$Fields;->keyStrength:Ljava/lang/reflect/Field;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lcom/google/common/collect/MapMaker$StrategyImpl$Fields;->valueStrength:Ljava/lang/reflect/Field;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lcom/google/common/collect/MapMaker$StrategyImpl$Fields;->expirationNanos:Ljava/lang/reflect/Field;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lcom/google/common/collect/MapMaker$StrategyImpl$Fields;->internals:Ljava/lang/reflect/Field;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lcom/google/common/collect/MapMaker$StrategyImpl$Fields;->map:Ljava/lang/reflect/Field;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_31
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_31} :catch_32

    return-void

    :catch_32
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/MapMaker$StrategyImpl;->keyStrength:Lcom/google/common/collect/MapMaker$Strength;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/common/collect/MapMaker$StrategyImpl;->valueStrength:Lcom/google/common/collect/MapMaker$Strength;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    iget-wide v0, p0, Lcom/google/common/collect/MapMaker$StrategyImpl;->expirationNanos:J

    invoke-virtual {p1, v0, v1}, Ljava/io/ObjectOutputStream;->writeLong(J)V

    iget-object v0, p0, Lcom/google/common/collect/MapMaker$StrategyImpl;->internals:Lcom/google/common/collect/CustomConcurrentHashMap$Internals;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/common/collect/MapMaker$StrategyImpl;->map:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public compute(Ljava/lang/Object;Lcom/google/common/collect/MapMaker$ReferenceEntry;Lcom/google/common/base/Function;)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lcom/google/common/collect/MapMaker$ReferenceEntry",
            "<TK;TV;>;",
            "Lcom/google/common/base/Function",
            "<-TK;+TV;>;)TV;"
        }
    .end annotation

    :try_start_0
    invoke-interface {p3, p1}, Lcom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Lcom/google/common/collect/ComputationException; {:try_start_0 .. :try_end_3} :catch_31
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_3f

    move-result-object v3

    if-nez v3, :cond_4e

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " returned null for key "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Lcom/google/common/collect/MapMaker$NullOutputExceptionReference;

    invoke-direct {v4, v1}, Lcom/google/common/collect/MapMaker$NullOutputExceptionReference;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2, v4}, Lcom/google/common/collect/MapMaker$StrategyImpl;->setValueReference(Lcom/google/common/collect/MapMaker$ReferenceEntry;Lcom/google/common/collect/MapMaker$ValueReference;)V

    new-instance v4, Lcom/google/common/collect/NullOutputException;

    invoke-direct {v4, v1}, Lcom/google/common/collect/NullOutputException;-><init>(Ljava/lang/String;)V

    throw v4

    :catch_31
    move-exception v0

    new-instance v4, Lcom/google/common/collect/MapMaker$ComputationExceptionReference;

    invoke-virtual {v0}, Lcom/google/common/collect/ComputationException;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/common/collect/MapMaker$ComputationExceptionReference;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2, v4}, Lcom/google/common/collect/MapMaker$StrategyImpl;->setValueReference(Lcom/google/common/collect/MapMaker$ReferenceEntry;Lcom/google/common/collect/MapMaker$ValueReference;)V

    throw v0

    :catch_3f
    move-exception v2

    new-instance v4, Lcom/google/common/collect/MapMaker$ComputationExceptionReference;

    invoke-direct {v4, v2}, Lcom/google/common/collect/MapMaker$ComputationExceptionReference;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2, v4}, Lcom/google/common/collect/MapMaker$StrategyImpl;->setValueReference(Lcom/google/common/collect/MapMaker$ReferenceEntry;Lcom/google/common/collect/MapMaker$ValueReference;)V

    new-instance v4, Lcom/google/common/collect/ComputationException;

    invoke-direct {v4, v2}, Lcom/google/common/collect/ComputationException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    :cond_4e
    invoke-virtual {p0, p2, v3}, Lcom/google/common/collect/MapMaker$StrategyImpl;->setValue(Lcom/google/common/collect/MapMaker$ReferenceEntry;Ljava/lang/Object;)V

    return-object v3
.end method

.method public bridge synthetic compute(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/base/Function;)Ljava/lang/Object;
    .registers 5

    check-cast p2, Lcom/google/common/collect/MapMaker$ReferenceEntry;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/collect/MapMaker$StrategyImpl;->compute(Ljava/lang/Object;Lcom/google/common/collect/MapMaker$ReferenceEntry;Lcom/google/common/base/Function;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public copyEntry(Ljava/lang/Object;Lcom/google/common/collect/MapMaker$ReferenceEntry;Lcom/google/common/collect/MapMaker$ReferenceEntry;)Lcom/google/common/collect/MapMaker$ReferenceEntry;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lcom/google/common/collect/MapMaker$ReferenceEntry",
            "<TK;TV;>;",
            "Lcom/google/common/collect/MapMaker$ReferenceEntry",
            "<TK;TV;>;)",
            "Lcom/google/common/collect/MapMaker$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    invoke-interface {p2}, Lcom/google/common/collect/MapMaker$ReferenceEntry;->getValueReference()Lcom/google/common/collect/MapMaker$ValueReference;

    move-result-object v2

    invoke-static {}, Lcom/google/common/collect/MapMaker;->access$500()Lcom/google/common/collect/MapMaker$ValueReference;

    move-result-object v3

    if-ne v2, v3, :cond_1c

    invoke-interface {p2}, Lcom/google/common/collect/MapMaker$ReferenceEntry;->getHash()I

    move-result v3

    invoke-virtual {p0, p1, v3, p3}, Lcom/google/common/collect/MapMaker$StrategyImpl;->newEntry(Ljava/lang/Object;ILcom/google/common/collect/MapMaker$ReferenceEntry;)Lcom/google/common/collect/MapMaker$ReferenceEntry;

    move-result-object v0

    new-instance v3, Lcom/google/common/collect/MapMaker$StrategyImpl$FutureValueReference;

    invoke-direct {v3, p0, p2, v0}, Lcom/google/common/collect/MapMaker$StrategyImpl$FutureValueReference;-><init>(Lcom/google/common/collect/MapMaker$StrategyImpl;Lcom/google/common/collect/MapMaker$ReferenceEntry;Lcom/google/common/collect/MapMaker$ReferenceEntry;)V

    invoke-interface {v0, v3}, Lcom/google/common/collect/MapMaker$ReferenceEntry;->setValueReference(Lcom/google/common/collect/MapMaker$ValueReference;)V

    move-object v1, v0

    :goto_1b
    return-object v1

    :cond_1c
    invoke-interface {p2}, Lcom/google/common/collect/MapMaker$ReferenceEntry;->getHash()I

    move-result v3

    invoke-virtual {p0, p1, v3, p3}, Lcom/google/common/collect/MapMaker$StrategyImpl;->newEntry(Ljava/lang/Object;ILcom/google/common/collect/MapMaker$ReferenceEntry;)Lcom/google/common/collect/MapMaker$ReferenceEntry;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/google/common/collect/MapMaker$ValueReference;->copyFor(Lcom/google/common/collect/MapMaker$ReferenceEntry;)Lcom/google/common/collect/MapMaker$ValueReference;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/google/common/collect/MapMaker$ReferenceEntry;->setValueReference(Lcom/google/common/collect/MapMaker$ValueReference;)V

    move-object v1, v0

    goto :goto_1b
.end method

.method public bridge synthetic copyEntry(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    check-cast p2, Lcom/google/common/collect/MapMaker$ReferenceEntry;

    check-cast p3, Lcom/google/common/collect/MapMaker$ReferenceEntry;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/collect/MapMaker$StrategyImpl;->copyEntry(Ljava/lang/Object;Lcom/google/common/collect/MapMaker$ReferenceEntry;Lcom/google/common/collect/MapMaker$ReferenceEntry;)Lcom/google/common/collect/MapMaker$ReferenceEntry;

    move-result-object v0

    return-object v0
.end method

.method public equalKeys(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/MapMaker$StrategyImpl;->keyStrength:Lcom/google/common/collect/MapMaker$Strength;

    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/MapMaker$Strength;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public equalValues(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/MapMaker$StrategyImpl;->valueStrength:Lcom/google/common/collect/MapMaker$Strength;

    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/MapMaker$Strength;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getHash(Lcom/google/common/collect/MapMaker$ReferenceEntry;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMaker$ReferenceEntry",
            "<TK;TV;>;)I"
        }
    .end annotation

    invoke-interface {p1}, Lcom/google/common/collect/MapMaker$ReferenceEntry;->getHash()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getHash(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/google/common/collect/MapMaker$ReferenceEntry;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapMaker$StrategyImpl;->getHash(Lcom/google/common/collect/MapMaker$ReferenceEntry;)I

    move-result v0

    return v0
.end method

.method public getKey(Lcom/google/common/collect/MapMaker$ReferenceEntry;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMaker$ReferenceEntry",
            "<TK;TV;>;)TK;"
        }
    .end annotation

    invoke-interface {p1}, Lcom/google/common/collect/MapMaker$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getKey(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lcom/google/common/collect/MapMaker$ReferenceEntry;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapMaker$StrategyImpl;->getKey(Lcom/google/common/collect/MapMaker$ReferenceEntry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getNext(Lcom/google/common/collect/MapMaker$ReferenceEntry;)Lcom/google/common/collect/MapMaker$ReferenceEntry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMaker$ReferenceEntry",
            "<TK;TV;>;)",
            "Lcom/google/common/collect/MapMaker$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    invoke-interface {p1}, Lcom/google/common/collect/MapMaker$ReferenceEntry;->getNext()Lcom/google/common/collect/MapMaker$ReferenceEntry;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getNext(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lcom/google/common/collect/MapMaker$ReferenceEntry;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapMaker$StrategyImpl;->getNext(Lcom/google/common/collect/MapMaker$ReferenceEntry;)Lcom/google/common/collect/MapMaker$ReferenceEntry;

    move-result-object v0

    return-object v0
.end method

.method public getValue(Lcom/google/common/collect/MapMaker$ReferenceEntry;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMaker$ReferenceEntry",
            "<TK;TV;>;)TV;"
        }
    .end annotation

    invoke-interface {p1}, Lcom/google/common/collect/MapMaker$ReferenceEntry;->getValueReference()Lcom/google/common/collect/MapMaker$ValueReference;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/MapMaker$ValueReference;->get()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lcom/google/common/collect/MapMaker$ReferenceEntry;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapMaker$StrategyImpl;->getValue(Lcom/google/common/collect/MapMaker$ReferenceEntry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hashKey(Ljava/lang/Object;)I
    .registers 3

    iget-object v0, p0, Lcom/google/common/collect/MapMaker$StrategyImpl;->keyStrength:Lcom/google/common/collect/MapMaker$Strength;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/MapMaker$Strength;->hash(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public newEntry(Ljava/lang/Object;ILcom/google/common/collect/MapMaker$ReferenceEntry;)Lcom/google/common/collect/MapMaker$ReferenceEntry;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/collect/MapMaker$ReferenceEntry",
            "<TK;TV;>;)",
            "Lcom/google/common/collect/MapMaker$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/MapMaker$StrategyImpl;->keyStrength:Lcom/google/common/collect/MapMaker$Strength;

    iget-object v1, p0, Lcom/google/common/collect/MapMaker$StrategyImpl;->internals:Lcom/google/common/collect/CustomConcurrentHashMap$Internals;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/google/common/collect/MapMaker$Strength;->newEntry(Lcom/google/common/collect/CustomConcurrentHashMap$Internals;Ljava/lang/Object;ILcom/google/common/collect/MapMaker$ReferenceEntry;)Lcom/google/common/collect/MapMaker$ReferenceEntry;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newEntry(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;
    .registers 5

    check-cast p3, Lcom/google/common/collect/MapMaker$ReferenceEntry;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/collect/MapMaker$StrategyImpl;->newEntry(Ljava/lang/Object;ILcom/google/common/collect/MapMaker$ReferenceEntry;)Lcom/google/common/collect/MapMaker$ReferenceEntry;

    move-result-object v0

    return-object v0
.end method

.method scheduleRemoval(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sget-object v2, Lcom/google/common/collect/ExpirationTimer;->instance:Ljava/util/Timer;

    new-instance v3, Lcom/google/common/collect/MapMaker$StrategyImpl$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/google/common/collect/MapMaker$StrategyImpl$1;-><init>(Lcom/google/common/collect/MapMaker$StrategyImpl;Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;)V

    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v5, p0, Lcom/google/common/collect/MapMaker$StrategyImpl;->expirationNanos:J

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method public setInternals(Lcom/google/common/collect/CustomConcurrentHashMap$Internals;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$Internals",
            "<TK;TV;",
            "Lcom/google/common/collect/MapMaker$ReferenceEntry",
            "<TK;TV;>;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/common/collect/MapMaker$StrategyImpl;->internals:Lcom/google/common/collect/CustomConcurrentHashMap$Internals;

    return-void
.end method

.method public setValue(Lcom/google/common/collect/MapMaker$ReferenceEntry;Ljava/lang/Object;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMaker$ReferenceEntry",
            "<TK;TV;>;TV;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/MapMaker$StrategyImpl;->valueStrength:Lcom/google/common/collect/MapMaker$Strength;

    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/MapMaker$Strength;->referenceValue(Lcom/google/common/collect/MapMaker$ReferenceEntry;Ljava/lang/Object;)Lcom/google/common/collect/MapMaker$ValueReference;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/MapMaker$StrategyImpl;->setValueReference(Lcom/google/common/collect/MapMaker$ReferenceEntry;Lcom/google/common/collect/MapMaker$ValueReference;)V

    iget-wide v0, p0, Lcom/google/common/collect/MapMaker$StrategyImpl;->expirationNanos:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_18

    invoke-interface {p1}, Lcom/google/common/collect/MapMaker$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/google/common/collect/MapMaker$StrategyImpl;->scheduleRemoval(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_18
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    check-cast p1, Lcom/google/common/collect/MapMaker$ReferenceEntry;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/MapMaker$StrategyImpl;->setValue(Lcom/google/common/collect/MapMaker$ReferenceEntry;Ljava/lang/Object;)V

    return-void
.end method

.method setValueReference(Lcom/google/common/collect/MapMaker$ReferenceEntry;Lcom/google/common/collect/MapMaker$ValueReference;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMaker$ReferenceEntry",
            "<TK;TV;>;",
            "Lcom/google/common/collect/MapMaker$ValueReference",
            "<TK;TV;>;)V"
        }
    .end annotation

    invoke-interface {p1}, Lcom/google/common/collect/MapMaker$ReferenceEntry;->getValueReference()Lcom/google/common/collect/MapMaker$ValueReference;

    move-result-object v1

    invoke-static {}, Lcom/google/common/collect/MapMaker;->access$500()Lcom/google/common/collect/MapMaker$ValueReference;

    move-result-object v2

    if-ne v1, v2, :cond_16

    const/4 v0, 0x1

    :goto_b
    invoke-interface {p1, p2}, Lcom/google/common/collect/MapMaker$ReferenceEntry;->setValueReference(Lcom/google/common/collect/MapMaker$ValueReference;)V

    if-eqz v0, :cond_15

    monitor-enter p1

    :try_start_11
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p1

    :cond_15
    return-void

    :cond_16
    const/4 v0, 0x0

    goto :goto_b

    :catchall_18
    move-exception v1

    monitor-exit p1
    :try_end_1a
    .catchall {:try_start_11 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public waitForValue(Lcom/google/common/collect/MapMaker$ReferenceEntry;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMaker$ReferenceEntry",
            "<TK;TV;>;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-interface {p1}, Lcom/google/common/collect/MapMaker$ReferenceEntry;->getValueReference()Lcom/google/common/collect/MapMaker$ValueReference;

    move-result-object v0

    invoke-static {}, Lcom/google/common/collect/MapMaker;->access$500()Lcom/google/common/collect/MapMaker$ValueReference;

    move-result-object v1

    if-ne v0, v1, :cond_1d

    monitor-enter p1

    :goto_b
    :try_start_b
    invoke-interface {p1}, Lcom/google/common/collect/MapMaker$ReferenceEntry;->getValueReference()Lcom/google/common/collect/MapMaker$ValueReference;

    move-result-object v0

    invoke-static {}, Lcom/google/common/collect/MapMaker;->access$500()Lcom/google/common/collect/MapMaker$ValueReference;

    move-result-object v1

    if-ne v0, v1, :cond_1c

    invoke-virtual {p1}, Ljava/lang/Object;->wait()V

    goto :goto_b

    :catchall_19
    move-exception v1

    monitor-exit p1
    :try_end_1b
    .catchall {:try_start_b .. :try_end_1b} :catchall_19

    throw v1

    :cond_1c
    :try_start_1c
    monitor-exit p1
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_19

    :cond_1d
    invoke-interface {v0}, Lcom/google/common/collect/MapMaker$ValueReference;->waitForValue()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic waitForValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    check-cast p1, Lcom/google/common/collect/MapMaker$ReferenceEntry;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapMaker$StrategyImpl;->waitForValue(Lcom/google/common/collect/MapMaker$ReferenceEntry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
