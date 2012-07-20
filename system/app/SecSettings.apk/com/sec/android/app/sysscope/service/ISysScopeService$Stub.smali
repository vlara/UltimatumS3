.class public abstract Lcom/sec/android/app/sysscope/service/ISysScopeService$Stub;
.super Landroid/os/Binder;
.source "ISysScopeService.java"

# interfaces
.implements Lcom/sec/android/app/sysscope/service/ISysScopeService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sysscope/service/ISysScopeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sysscope/service/ISysScopeService$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.sec.android.app.sysscope.service.ISysScopeService"

    invoke-virtual {p0, p0, v0}, Lcom/sec/android/app/sysscope/service/ISysScopeService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sec/android/app/sysscope/service/ISysScopeService;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    const-string v1, "com.sec.android.app.sysscope.service.ISysScopeService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/sec/android/app/sysscope/service/ISysScopeService;

    if-eqz v1, :cond_13

    check-cast v0, Lcom/sec/android/app/sysscope/service/ISysScopeService;

    goto :goto_3

    :cond_13
    new-instance v0, Lcom/sec/android/app/sysscope/service/ISysScopeService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sysscope/service/ISysScopeService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v3, 0x1

    sparse-switch p1, :sswitch_data_be

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_9
    return v3

    :sswitch_a
    const-string v4, "com.sec.android.app.sysscope.service.ISysScopeService"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    :sswitch_10
    const-string v4, "com.sec.android.app.sysscope.service.ISysScopeService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/app/sysscope/service/ISysScopeListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/app/sysscope/service/ISysScopeListener;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sysscope/service/ISysScopeService$Stub;->run(ILcom/sec/android/app/sysscope/service/ISysScopeListener;)I

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    :sswitch_2c
    const-string v4, "com.sec.android.app.sysscope.service.ISysScopeService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sysscope/service/ISysScopeService$Stub;->scope()I

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    :sswitch_3c
    const-string v4, "com.sec.android.app.sysscope.service.ISysScopeService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sysscope/service/ISysScopeService$Stub;->getInfo()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_51

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, p3, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_9

    :cond_51
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    :sswitch_55
    const-string v4, "com.sec.android.app.sysscope.service.ISysScopeService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/app/sysscope/service/ISysScopeListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/app/sysscope/service/ISysScopeListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sysscope/service/ISysScopeService$Stub;->registerListener(Lcom/sec/android/app/sysscope/service/ISysScopeListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    :sswitch_69
    const-string v4, "com.sec.android.app.sysscope.service.ISysScopeService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/app/sysscope/service/ISysScopeListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/app/sysscope/service/ISysScopeListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sysscope/service/ISysScopeService$Stub;->unregisterListener(Lcom/sec/android/app/sysscope/service/ISysScopeListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    :sswitch_7d
    const-string v4, "com.sec.android.app.sysscope.service.ISysScopeService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sysscope/service/ISysScopeService$Stub;->setScanPeriod(I)I

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    :sswitch_92
    const-string v4, "com.sec.android.app.sysscope.service.ISysScopeService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sysscope/service/ISysScopeService$Stub;->getScanPeriod()I

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    :sswitch_a3
    const-string v4, "com.sec.android.app.sysscope.service.ISysScopeService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sysscope/service/ISysScopeService$Stub;->getLastScanResult()Lcom/sec/android/app/sysscope/service/SysScopeResultInfo;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_b9

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, p3, v3}, Lcom/sec/android/app/sysscope/service/SysScopeResultInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    :cond_b9
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    :sswitch_data_be
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_2c
        0x3 -> :sswitch_3c
        0x4 -> :sswitch_55
        0x5 -> :sswitch_69
        0x6 -> :sswitch_7d
        0x7 -> :sswitch_92
        0x8 -> :sswitch_a3
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
