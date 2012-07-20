.class public Lcom/sec/android/app/sysscope/service/SysScopeResultInfo;
.super Ljava/lang/Object;
.source "SysScopeResultInfo.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sec/android/app/sysscope/service/SysScopeResultInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x44785514acd511e6L


# instance fields
.field private mResultCodes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/sysscope/service/ResultCode;",
            ">;"
        }
    .end annotation
.end field

.field mTime:Ljava/util/Date;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/sec/android/app/sysscope/service/SysScopeResultInfo$1;

    invoke-direct {v0}, Lcom/sec/android/app/sysscope/service/SysScopeResultInfo$1;-><init>()V

    sput-object v0, Lcom/sec/android/app/sysscope/service/SysScopeResultInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sysscope/service/SysScopeResultInfo;->mTime:Ljava/util/Date;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sysscope/service/SysScopeResultInfo;->mResultCodes:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sysscope/service/SysScopeResultInfo;->mTime:Ljava/util/Date;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sysscope/service/SysScopeResultInfo;->mResultCodes:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sysscope/service/SysScopeResultInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getResult()I
    .registers 5

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/sec/android/app/sysscope/service/SysScopeResultInfo;->mResultCodes:Ljava/util/ArrayList;

    if-nez v2, :cond_6

    :cond_5
    :goto_5
    return v1

    :cond_6
    iget-object v2, p0, Lcom/sec/android/app/sysscope/service/SysScopeResultInfo;->mResultCodes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sysscope/service/ResultCode;

    sget-object v3, Lcom/sec/android/app/sysscope/service/ResultCode;->OK:Lcom/sec/android/app/sysscope/service/ResultCode;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/sysscope/service/ResultCode;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    const/4 v1, 0x2

    goto :goto_5
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 7

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/sec/android/app/sysscope/service/SysScopeResultInfo;->setDate(J)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/sec/android/app/sysscope/service/SysScopeResultInfo;->mResultCodes:Ljava/util/ArrayList;

    const/4 v1, 0x0

    :goto_13
    if-lt v1, v0, :cond_16

    return-void

    :cond_16
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/sysscope/service/ResultCode;->fromInt(I)Lcom/sec/android/app/sysscope/service/ResultCode;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sysscope/service/ResultCode;->setDescription(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/android/app/sysscope/service/SysScopeResultInfo;->mResultCodes:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_13
.end method

.method public setDate(J)V
    .registers 4

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/sec/android/app/sysscope/service/SysScopeResultInfo;->mTime:Ljava/util/Date;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/android/app/sysscope/service/SysScopeResultInfo;->mTime:Ljava/util/Date;

    if-nez v3, :cond_c

    const-string v3, ""

    :goto_b
    return-object v3

    :cond_c
    iget-object v3, p0, Lcom/sec/android/app/sysscope/service/SysScopeResultInfo;->mTime:Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/android/app/sysscope/service/SysScopeResultInfo;->mResultCodes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_20
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2b

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_b

    :cond_2b
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sysscope/service/ResultCode;

    invoke-virtual {v2}, Lcom/sec/android/app/sysscope/service/ResultCode;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sec/android/app/sysscope/service/ResultCode;->getDescription()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4e

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4e

    const-string v4, ": "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4e
    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_20
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    iget-object v1, p0, Lcom/sec/android/app/sysscope/service/SysScopeResultInfo;->mTime:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v1, p0, Lcom/sec/android/app/sysscope/service/SysScopeResultInfo;->mResultCodes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Lcom/sec/android/app/sysscope/service/SysScopeResultInfo;->mResultCodes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1f

    return-void

    :cond_1f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sysscope/service/ResultCode;

    invoke-virtual {v0}, Lcom/sec/android/app/sysscope/service/ResultCode;->value()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0}, Lcom/sec/android/app/sysscope/service/ResultCode;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_18
.end method
