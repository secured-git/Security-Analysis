.class Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask$1;
.super Ljava/util/TimerTask;
.source "GetDeliveryTimeTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask$1;->this$0:Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask;

    .line 82
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 87
    const-class v0, Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "startCheckRateOrder started..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object v0, p0, Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask$1;->this$0:Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask;

    invoke-static {v0}, Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask;->access$7(Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask$1;->this$0:Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask;

    invoke-static {v1}, Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask;->access$2(Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask$1;->this$0:Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask;

    invoke-static {v2}, Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask;->access$3(Lcom/yopeso/lieferando/net/push/GetDeliveryTimeTask;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yopeso/lieferando/util/IntentNavUtils;->startCheckRateOrder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    return-void
.end method
