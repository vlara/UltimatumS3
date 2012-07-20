.class public Lcom/android/settings/net/NetworkPolicyEditor;
.super Ljava/lang/Object;
.source "NetworkPolicyEditor.java"


# instance fields
.field private mPolicies:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/NetworkPolicy;",
            ">;"
        }
    .end annotation
.end field

.field private mPolicyService:Landroid/net/INetworkPolicyManager;


# direct methods
.method public constructor <init>(Landroid/net/INetworkPolicyManager;)V
    .registers 3

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/net/NetworkPolicyEditor;->mPolicies:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/INetworkPolicyManager;

    iput-object v0, p0, Lcom/android/settings/net/NetworkPolicyEditor;->mPolicyService:Landroid/net/INetworkPolicyManager;

    return-void
.end method

.method private static buildDefaultPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;
    .registers 11

    const-wide/16 v3, -0x1

    new-instance v9, Landroid/text/format/Time;

    invoke-direct {v9}, Landroid/text/format/Time;-><init>()V

    invoke-virtual {v9}, Landroid/text/format/Time;->setToNow()V

    iget v2, v9, Landroid/text/format/Time;->monthDay:I

    new-instance v0, Landroid/net/NetworkPolicy;

    move-object v1, p0

    move-wide v5, v3

    move-wide v7, v3

    invoke-direct/range {v0 .. v8}, Landroid/net/NetworkPolicy;-><init>(Landroid/net/NetworkTemplate;IJJJ)V

    return-object v0
.end method

.method private forceMobilePolicyCombined()Z
    .registers 7

    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/net/NetworkPolicyEditor;->mPolicies:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkPolicy;

    iget-object v5, v2, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v5}, Landroid/net/NetworkTemplate;->getSubscriberId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_20
    const/4 v1, 0x0

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_25
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_38

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {p0, v3, v5}, Lcom/android/settings/net/NetworkPolicyEditor;->setMobilePolicySplitInternal(Ljava/lang/String;Z)Z

    move-result v5

    or-int/2addr v1, v5

    goto :goto_25

    :cond_38
    return v1
.end method

.method private setMobilePolicySplitInternal(Ljava/lang/String;Z)Z
    .registers 24

    invoke-virtual/range {p0 .. p1}, Lcom/android/settings/net/NetworkPolicyEditor;->isMobilePolicySplit(Ljava/lang/String;)Z

    move-result v15

    invoke-static/range {p1 .. p1}, Landroid/net/NetworkTemplate;->buildTemplateMobile3gLower(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v5

    invoke-static/range {p1 .. p1}, Landroid/net/NetworkTemplate;->buildTemplateMobile4g(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v20

    invoke-static/range {p1 .. p1}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v3

    move/from16 v0, p2

    if-ne v0, v15, :cond_16

    const/4 v2, 0x0

    :goto_15
    return v2

    :cond_16
    if-eqz v15, :cond_61

    if-nez p2, :cond_61

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/settings/net/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/net/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/net/NetworkPolicy;->compareTo(Landroid/net/NetworkPolicy;)I

    move-result v2

    if-gez v2, :cond_5e

    move-object/from16 v19, v16

    :goto_30
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/net/NetworkPolicyEditor;->mPolicies:Ljava/util/ArrayList;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/net/NetworkPolicyEditor;->mPolicies:Ljava/util/ArrayList;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/net/NetworkPolicyEditor;->mPolicies:Ljava/util/ArrayList;

    new-instance v2, Landroid/net/NetworkPolicy;

    move-object/from16 v0, v19

    iget v4, v0, Landroid/net/NetworkPolicy;->cycleDay:I

    move-object/from16 v0, v19

    iget-wide v5, v0, Landroid/net/NetworkPolicy;->warningBytes:J

    move-object/from16 v0, v19

    iget-wide v7, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v9, -0x1

    invoke-direct/range {v2 .. v10}, Landroid/net/NetworkPolicy;-><init>(Landroid/net/NetworkTemplate;IJJJ)V

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    goto :goto_15

    :cond_5e
    move-object/from16 v19, v17

    goto :goto_30

    :cond_61
    if-nez v15, :cond_ad

    if-eqz p2, :cond_ad

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/settings/net/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/net/NetworkPolicyEditor;->mPolicies:Ljava/util/ArrayList;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/net/NetworkPolicyEditor;->mPolicies:Ljava/util/ArrayList;

    new-instance v4, Landroid/net/NetworkPolicy;

    move-object/from16 v0, v18

    iget v6, v0, Landroid/net/NetworkPolicy;->cycleDay:I

    move-object/from16 v0, v18

    iget-wide v7, v0, Landroid/net/NetworkPolicy;->warningBytes:J

    move-object/from16 v0, v18

    iget-wide v9, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v11, -0x1

    invoke-direct/range {v4 .. v12}, Landroid/net/NetworkPolicy;-><init>(Landroid/net/NetworkTemplate;IJJJ)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/net/NetworkPolicyEditor;->mPolicies:Ljava/util/ArrayList;

    new-instance v6, Landroid/net/NetworkPolicy;

    move-object/from16 v0, v18

    iget v8, v0, Landroid/net/NetworkPolicy;->cycleDay:I

    move-object/from16 v0, v18

    iget-wide v9, v0, Landroid/net/NetworkPolicy;->warningBytes:J

    move-object/from16 v0, v18

    iget-wide v11, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v13, -0x1

    move-object/from16 v7, v20

    invoke-direct/range {v6 .. v14}, Landroid/net/NetworkPolicy;-><init>(Landroid/net/NetworkTemplate;IJJJ)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    goto/16 :goto_15

    :cond_ad
    const/4 v2, 0x0

    goto/16 :goto_15
.end method


# virtual methods
.method public getOrCreatePolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;
    .registers 4

    invoke-virtual {p0, p1}, Lcom/android/settings/net/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    if-nez v0, :cond_f

    invoke-static {p1}, Lcom/android/settings/net/NetworkPolicyEditor;->buildDefaultPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/net/NetworkPolicyEditor;->mPolicies:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    return-object v0
.end method

.method public getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;
    .registers 5

    iget-object v2, p0, Lcom/android/settings/net/NetworkPolicyEditor;->mPolicies:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkPolicy;

    iget-object v2, v1, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v2, p1}, Landroid/net/NetworkTemplate;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :goto_1a
    return-object v1

    :cond_1b
    const/4 v1, 0x0

    goto :goto_1a
.end method

.method public getPolicyCycleDay(Landroid/net/NetworkTemplate;)I
    .registers 3

    invoke-virtual {p0, p1}, Lcom/android/settings/net/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    iget v0, v0, Landroid/net/NetworkPolicy;->cycleDay:I

    return v0
.end method

.method public getPolicyLimitBytes(Landroid/net/NetworkTemplate;)J
    .registers 4

    invoke-virtual {p0, p1}, Lcom/android/settings/net/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    iget-wide v0, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    return-wide v0
.end method

.method public getPolicyWarningBytes(Landroid/net/NetworkTemplate;)J
    .registers 4

    invoke-virtual {p0, p1}, Lcom/android/settings/net/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    iget-wide v0, v0, Landroid/net/NetworkPolicy;->warningBytes:J

    return-wide v0
.end method

.method public hasLimitedPolicy(Landroid/net/NetworkTemplate;)Z
    .registers 7

    invoke-virtual {p0, p1}, Lcom/android/settings/net/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-wide v1, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_10

    const/4 v1, 0x1

    :goto_f
    return v1

    :cond_10
    const/4 v1, 0x0

    goto :goto_f
.end method

.method public isMobilePolicySplit(Ljava/lang/String;)Z
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v5, p0, Lcom/android/settings/net/NetworkPolicyEditor;->mPolicies:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkPolicy;

    iget-object v4, v3, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v4}, Landroid/net/NetworkTemplate;->getSubscriberId()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Lcom/android/internal/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {v4}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v5

    packed-switch v5, :pswitch_data_34

    goto :goto_8

    :pswitch_28
    const/4 v0, 0x1

    goto :goto_8

    :pswitch_2a
    const/4 v1, 0x1

    goto :goto_8

    :cond_2c
    if-eqz v0, :cond_32

    if-eqz v1, :cond_32

    const/4 v5, 0x1

    :goto_31
    return v5

    :cond_32
    const/4 v5, 0x0

    goto :goto_31

    :pswitch_data_34
    .packed-switch 0x2
        :pswitch_28
        :pswitch_2a
    .end packed-switch
.end method

.method public read()V
    .registers 12

    const-wide/16 v9, -0x1

    :try_start_2
    iget-object v7, p0, Lcom/android/settings/net/NetworkPolicyEditor;->mPolicyService:Landroid/net/INetworkPolicyManager;

    invoke-interface {v7}, Landroid/net/INetworkPolicyManager;->getNetworkPolicies()[Landroid/net/NetworkPolicy;
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_7} :catch_34

    move-result-object v5

    const/4 v4, 0x0

    iget-object v7, p0, Lcom/android/settings/net/NetworkPolicyEditor;->mPolicies:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    move-object v0, v5

    array-length v3, v0

    const/4 v2, 0x0

    :goto_11
    if-ge v2, v3, :cond_43

    aget-object v6, v0, v2

    iget-wide v7, v6, Landroid/net/NetworkPolicy;->limitBytes:J

    cmp-long v7, v7, v9

    if-gez v7, :cond_1e

    iput-wide v9, v6, Landroid/net/NetworkPolicy;->limitBytes:J

    const/4 v4, 0x1

    :cond_1e
    iget-wide v7, v6, Landroid/net/NetworkPolicy;->warningBytes:J

    cmp-long v7, v7, v9

    if-gez v7, :cond_27

    iput-wide v9, v6, Landroid/net/NetworkPolicy;->warningBytes:J

    const/4 v4, 0x1

    :cond_27
    iget-object v7, v6, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v7}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v7

    const/4 v8, 0x4

    if-ne v7, v8, :cond_3d

    const/4 v4, 0x1

    :goto_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :catch_34
    move-exception v1

    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "problem reading policies"

    invoke-direct {v7, v8, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    :cond_3d
    iget-object v7, p0, Lcom/android/settings/net/NetworkPolicyEditor;->mPolicies:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_31

    :cond_43
    invoke-direct {p0}, Lcom/android/settings/net/NetworkPolicyEditor;->forceMobilePolicyCombined()Z

    move-result v7

    or-int/2addr v4, v7

    if-eqz v4, :cond_4d

    invoke-virtual {p0}, Lcom/android/settings/net/NetworkPolicyEditor;->writeAsync()V

    :cond_4d
    return-void
.end method

.method public setMobilePolicySplit(Ljava/lang/String;Z)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/settings/net/NetworkPolicyEditor;->setMobilePolicySplitInternal(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/android/settings/net/NetworkPolicyEditor;->writeAsync()V

    :cond_9
    return-void
.end method

.method public setPolicyCycleDay(Landroid/net/NetworkTemplate;I)V
    .registers 6

    invoke-virtual {p0, p1}, Lcom/android/settings/net/NetworkPolicyEditor;->getOrCreatePolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    iput p2, v0, Landroid/net/NetworkPolicy;->cycleDay:I

    const-wide/16 v1, -0x1

    iput-wide v1, v0, Landroid/net/NetworkPolicy;->lastSnooze:J

    invoke-virtual {p0}, Lcom/android/settings/net/NetworkPolicyEditor;->writeAsync()V

    return-void
.end method

.method public setPolicyLimitBytes(Landroid/net/NetworkTemplate;J)V
    .registers 7

    invoke-virtual {p0, p1}, Lcom/android/settings/net/NetworkPolicyEditor;->getOrCreatePolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    iput-wide p2, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v1, -0x1

    iput-wide v1, v0, Landroid/net/NetworkPolicy;->lastSnooze:J

    invoke-virtual {p0}, Lcom/android/settings/net/NetworkPolicyEditor;->writeAsync()V

    return-void
.end method

.method public setPolicyWarningBytes(Landroid/net/NetworkTemplate;J)V
    .registers 7

    invoke-virtual {p0, p1}, Lcom/android/settings/net/NetworkPolicyEditor;->getOrCreatePolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    iput-wide p2, v0, Landroid/net/NetworkPolicy;->warningBytes:J

    const-wide/16 v1, -0x1

    iput-wide v1, v0, Landroid/net/NetworkPolicy;->lastSnooze:J

    invoke-virtual {p0}, Lcom/android/settings/net/NetworkPolicyEditor;->writeAsync()V

    return-void
.end method

.method public write([Landroid/net/NetworkPolicy;)V
    .registers 5

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/net/NetworkPolicyEditor;->mPolicyService:Landroid/net/INetworkPolicyManager;

    invoke-interface {v1, p1}, Landroid/net/INetworkPolicyManager;->setNetworkPolicies([Landroid/net/NetworkPolicy;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "problem writing policies"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public writeAsync()V
    .registers 4

    iget-object v1, p0, Lcom/android/settings/net/NetworkPolicyEditor;->mPolicies:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/settings/net/NetworkPolicyEditor;->mPolicies:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/net/NetworkPolicy;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/NetworkPolicy;

    new-instance v1, Lcom/android/settings/net/NetworkPolicyEditor$1;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/net/NetworkPolicyEditor$1;-><init>(Lcom/android/settings/net/NetworkPolicyEditor;[Landroid/net/NetworkPolicy;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/settings/net/NetworkPolicyEditor$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
