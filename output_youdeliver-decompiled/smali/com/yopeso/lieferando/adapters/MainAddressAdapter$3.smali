.class Lcom/yopeso/lieferando/adapters/MainAddressAdapter$3;
.super Ljava/lang/Object;
.source "MainAddressAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/adapters/MainAddressAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/adapters/MainAddressAdapter;

.field private final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/adapters/MainAddressAdapter;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/adapters/MainAddressAdapter$3;->this$0:Lcom/yopeso/lieferando/adapters/MainAddressAdapter;

    iput p2, p0, Lcom/yopeso/lieferando/adapters/MainAddressAdapter$3;->val$position:I

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/MainAddressAdapter$3;->this$0:Lcom/yopeso/lieferando/adapters/MainAddressAdapter;

    invoke-static {v0}, Lcom/yopeso/lieferando/adapters/MainAddressAdapter;->access$1(Lcom/yopeso/lieferando/adapters/MainAddressAdapter;)Lcom/yopeso/lieferando/callback/MainAddressesCallBack;

    move-result-object v0

    iget v1, p0, Lcom/yopeso/lieferando/adapters/MainAddressAdapter$3;->val$position:I

    invoke-interface {v0, v1}, Lcom/yopeso/lieferando/callback/MainAddressesCallBack;->deleteAddress(I)V

    .line 153
    return-void
.end method
