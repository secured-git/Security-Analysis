.class Lcom/yopeso/lieferando/adapters/UserDeliveryAreaAdapter$1;
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

.field private final synthetic val$loc:Lcom/yopeso/lieferando/model/user/Location;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/adapters/UserDeliveryAreaAdapter;Lcom/yopeso/lieferando/model/user/Location;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/adapters/UserDeliveryAreaAdapter$1;->this$0:Lcom/yopeso/lieferando/adapters/UserDeliveryAreaAdapter;

    iput-object p2, p0, Lcom/yopeso/lieferando/adapters/UserDeliveryAreaAdapter$1;->val$loc:Lcom/yopeso/lieferando/model/user/Location;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/UserDeliveryAreaAdapter$1;->this$0:Lcom/yopeso/lieferando/adapters/UserDeliveryAreaAdapter;

    invoke-static {v0}, Lcom/yopeso/lieferando/adapters/UserDeliveryAreaAdapter;->access$0(Lcom/yopeso/lieferando/adapters/UserDeliveryAreaAdapter;)Lcom/yopeso/lieferando/callback/DeliveryAreaAdapterCallBack;

    move-result-object v0

    iget-object v1, p0, Lcom/yopeso/lieferando/adapters/UserDeliveryAreaAdapter$1;->val$loc:Lcom/yopeso/lieferando/model/user/Location;

    invoke-interface {v0, v1}, Lcom/yopeso/lieferando/callback/DeliveryAreaAdapterCallBack;->onLocationSelected(Lcom/yopeso/lieferando/model/user/Location;)V

    .line 58
    return-void
.end method
