.class Lcom/yopeso/lieferando/adapters/DeliveryServicesPremiumAdapter$1;
.super Ljava/lang/Object;
.source "DeliveryServicesPremiumAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/adapters/DeliveryServicesPremiumAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/adapters/DeliveryServicesPremiumAdapter;

.field private final synthetic val$resto:Lcom/yopeso/lieferando/model/restaurant/Restaurant;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/adapters/DeliveryServicesPremiumAdapter;Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/adapters/DeliveryServicesPremiumAdapter$1;->this$0:Lcom/yopeso/lieferando/adapters/DeliveryServicesPremiumAdapter;

    iput-object p2, p0, Lcom/yopeso/lieferando/adapters/DeliveryServicesPremiumAdapter$1;->val$resto:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/DeliveryServicesPremiumAdapter$1;->this$0:Lcom/yopeso/lieferando/adapters/DeliveryServicesPremiumAdapter;

    invoke-static {v0}, Lcom/yopeso/lieferando/adapters/DeliveryServicesPremiumAdapter;->access$0(Lcom/yopeso/lieferando/adapters/DeliveryServicesPremiumAdapter;)Lcom/yopeso/lieferando/callback/RestaurantSelectedCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/yopeso/lieferando/adapters/DeliveryServicesPremiumAdapter$1;->val$resto:Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-interface {v0, v1}, Lcom/yopeso/lieferando/callback/RestaurantSelectedCallback;->onRestaurantSelected(Lcom/yopeso/lieferando/model/restaurant/Restaurant;)V

    .line 92
    return-void
.end method
