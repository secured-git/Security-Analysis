.class Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment$3;
.super Ljava/lang/Object;
.source "DeliveryAddressFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment$3;->this$0:Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;

    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 275
    if-eqz p2, :cond_0

    .line 276
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment$3;->this$0:Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/fragments/checkout/DeliveryAddressFragment;->validate()Z

    .line 278
    :cond_0
    return-void
.end method
