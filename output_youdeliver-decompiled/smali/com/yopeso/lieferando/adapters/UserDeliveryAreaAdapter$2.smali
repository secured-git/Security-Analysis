.class Lcom/yopeso/lieferando/adapters/UserDeliveryAreaAdapter$2;
.super Ljava/lang/Object;
.source "UserDeliveryAreaAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/adapters/UserDeliveryAreaAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/adapters/UserDeliveryAreaAdapter;

.field private final synthetic val$area:Lcom/yopeso/lieferando/model/restaurant/DeliveryArea;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/adapters/UserDeliveryAreaAdapter;Lcom/yopeso/lieferando/model/restaurant/DeliveryArea;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/adapters/UserDeliveryAreaAdapter$2;->this$0:Lcom/yopeso/lieferando/adapters/UserDeliveryAreaAdapter;

    iput-object p2, p0, Lcom/yopeso/lieferando/adapters/UserDeliveryAreaAdapter$2;->val$area:Lcom/yopeso/lieferando/model/restaurant/DeliveryArea;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/UserDeliveryAreaAdapter$2;->this$0:Lcom/yopeso/lieferando/adapters/UserDeliveryAreaAdapter;

    invoke-static {v0}, Lcom/yopeso/lieferando/adapters/UserDeliveryAreaAdapter;->access$0(Lcom/yopeso/lieferando/adapters/UserDeliveryAreaAdapter;)Lcom/yopeso/lieferando/callback/DeliveryAreaAdapterCallBack;

    move-result-object v0

    iget-object v1, p0, Lcom/yopeso/lieferando/adapters/UserDeliveryAreaAdapter$2;->val$area:Lcom/yopeso/lieferando/model/restaurant/DeliveryArea;

    invoke-interface {v0, v1}, Lcom/yopeso/lieferando/callback/DeliveryAreaAdapterCallBack;->onDeliveryAreaSelected(Lcom/yopeso/lieferando/model/restaurant/DeliveryArea;)V

    .line 71
    return-void
.end method
