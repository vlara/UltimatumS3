.class Lcom/sec/android/app/sysscope/service/SysScope$1;
.super Lcom/sec/android/app/sysscope/service/ISysScopeListener$Stub;
.source "SysScope.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sysscope/service/SysScope;->getDefaultListener()Lcom/sec/android/app/sysscope/service/ISysScopeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sysscope/service/SysScope;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sysscope/service/SysScope;)V
    .registers 2

    iput-object p1, p0, Lcom/sec/android/app/sysscope/service/SysScope$1;->this$0:Lcom/sec/android/app/sysscope/service/SysScope;

    invoke-direct {p0}, Lcom/sec/android/app/sysscope/service/ISysScopeListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(ZLjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sysscope/service/SysScope$1;->this$0:Lcom/sec/android/app/sysscope/service/SysScope;

    #getter for: Lcom/sec/android/app/sysscope/service/SysScope;->mLocalListener:Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;
    invoke-static {v0}, Lcom/sec/android/app/sysscope/service/SysScope;->access$4(Lcom/sec/android/app/sysscope/service/SysScope;)Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/sec/android/app/sysscope/service/SysScope$1;->this$0:Lcom/sec/android/app/sysscope/service/SysScope;

    #getter for: Lcom/sec/android/app/sysscope/service/SysScope;->mLocalListener:Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;
    invoke-static {v0}, Lcom/sec/android/app/sysscope/service/SysScope;->access$4(Lcom/sec/android/app/sysscope/service/SysScope;)Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;->onComplete(ZLjava/lang/String;)V

    :cond_11
    return-void
.end method

.method public onError(I)V
    .registers 3

    iget-object v0, p0, Lcom/sec/android/app/sysscope/service/SysScope$1;->this$0:Lcom/sec/android/app/sysscope/service/SysScope;

    #getter for: Lcom/sec/android/app/sysscope/service/SysScope;->mLocalListener:Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;
    invoke-static {v0}, Lcom/sec/android/app/sysscope/service/SysScope;->access$4(Lcom/sec/android/app/sysscope/service/SysScope;)Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/sec/android/app/sysscope/service/SysScope$1;->this$0:Lcom/sec/android/app/sysscope/service/SysScope;

    #getter for: Lcom/sec/android/app/sysscope/service/SysScope;->mLocalListener:Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;
    invoke-static {v0}, Lcom/sec/android/app/sysscope/service/SysScope;->access$4(Lcom/sec/android/app/sysscope/service/SysScope;)Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;->onError(I)V

    :cond_11
    return-void
.end method

.method public onProgress(ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sysscope/service/SysScope$1;->this$0:Lcom/sec/android/app/sysscope/service/SysScope;

    #getter for: Lcom/sec/android/app/sysscope/service/SysScope;->mLocalListener:Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;
    invoke-static {v0}, Lcom/sec/android/app/sysscope/service/SysScope;->access$4(Lcom/sec/android/app/sysscope/service/SysScope;)Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/sec/android/app/sysscope/service/SysScope$1;->this$0:Lcom/sec/android/app/sysscope/service/SysScope;

    #getter for: Lcom/sec/android/app/sysscope/service/SysScope;->mLocalListener:Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;
    invoke-static {v0}, Lcom/sec/android/app/sysscope/service/SysScope;->access$4(Lcom/sec/android/app/sysscope/service/SysScope;)Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;->onProgress(ILjava/lang/String;)V

    :cond_11
    return-void
.end method

.method public onReady()V
    .registers 2

    iget-object v0, p0, Lcom/sec/android/app/sysscope/service/SysScope$1;->this$0:Lcom/sec/android/app/sysscope/service/SysScope;

    #getter for: Lcom/sec/android/app/sysscope/service/SysScope;->mLocalListener:Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;
    invoke-static {v0}, Lcom/sec/android/app/sysscope/service/SysScope;->access$4(Lcom/sec/android/app/sysscope/service/SysScope;)Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/sec/android/app/sysscope/service/SysScope$1;->this$0:Lcom/sec/android/app/sysscope/service/SysScope;

    #getter for: Lcom/sec/android/app/sysscope/service/SysScope;->mLocalListener:Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;
    invoke-static {v0}, Lcom/sec/android/app/sysscope/service/SysScope;->access$4(Lcom/sec/android/app/sysscope/service/SysScope;)Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;->onReady()V

    :cond_11
    return-void
.end method

.method public onStart(I)V
    .registers 3

    iget-object v0, p0, Lcom/sec/android/app/sysscope/service/SysScope$1;->this$0:Lcom/sec/android/app/sysscope/service/SysScope;

    #getter for: Lcom/sec/android/app/sysscope/service/SysScope;->mLocalListener:Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;
    invoke-static {v0}, Lcom/sec/android/app/sysscope/service/SysScope;->access$4(Lcom/sec/android/app/sysscope/service/SysScope;)Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/sec/android/app/sysscope/service/SysScope$1;->this$0:Lcom/sec/android/app/sysscope/service/SysScope;

    #getter for: Lcom/sec/android/app/sysscope/service/SysScope;->mLocalListener:Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;
    invoke-static {v0}, Lcom/sec/android/app/sysscope/service/SysScope;->access$4(Lcom/sec/android/app/sysscope/service/SysScope;)Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/android/app/sysscope/service/SysScope$SysScopeListener;->onStart(I)V

    :cond_11
    return-void
.end method
