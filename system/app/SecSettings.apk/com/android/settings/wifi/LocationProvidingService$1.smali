.class Lcom/android/settings/wifi/LocationProvidingService$1;
.super Landroid/telephony/PhoneStateListener;
.source "LocationProvidingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/LocationProvidingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/LocationProvidingService;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/LocationProvidingService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/settings/wifi/LocationProvidingService$1;->this$0:Lcom/android/settings/wifi/LocationProvidingService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCellLocationChanged(Landroid/telephony/CellLocation;)V
    .registers 3

    iget-object v0, p0, Lcom/android/settings/wifi/LocationProvidingService$1;->this$0:Lcom/android/settings/wifi/LocationProvidingService;

    #calls: Lcom/android/settings/wifi/LocationProvidingService;->updateLocation(Landroid/telephony/CellLocation;)V
    invoke-static {v0, p1}, Lcom/android/settings/wifi/LocationProvidingService;->access$000(Lcom/android/settings/wifi/LocationProvidingService;Landroid/telephony/CellLocation;)V

    return-void
.end method
