.class Lcom/yopeso/lieferando/fragments/account/MainAddressFragment$5;
.super Ljava/lang/Object;
.source "MainAddressFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/fragments/account/MainAddressFragment;->showDeleteDialog(IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/fragments/account/MainAddressFragment;

.field private final synthetic val$addressId:J

.field private final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/fragments/account/MainAddressFragment;JI)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/account/MainAddressFragment$5;->this$0:Lcom/yopeso/lieferando/fragments/account/MainAddressFragment;

    iput-wide p2, p0, Lcom/yopeso/lieferando/fragments/account/MainAddressFragment$5;->val$addressId:J

    iput p4, p0, Lcom/yopeso/lieferando/fragments/account/MainAddressFragment$5;->val$position:I

    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 274
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 276
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAddressFragment$5;->this$0:Lcom/yopeso/lieferando/fragments/account/MainAddressFragment;

    sget v1, Lcom/yopeso/lieferando/R$string;->pleaseWait:I

    invoke-static {v0, v1}, Lcom/yopeso/lieferando/fragments/account/MainAddressFragment;->access$4(Lcom/yopeso/lieferando/fragments/account/MainAddressFragment;I)V

    .line 277
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAddressFragment$5;->this$0:Lcom/yopeso/lieferando/fragments/account/MainAddressFragment;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/fragments/account/MainAddressFragment;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v0

    new-instance v1, Lcom/yopeso/lieferando/net/requests/DeleteAddressRequest;

    iget-wide v2, p0, Lcom/yopeso/lieferando/fragments/account/MainAddressFragment$5;->val$addressId:J

    new-instance v4, Lcom/yopeso/lieferando/fragments/account/MainAddressFragment$DeleteAddressListener;

    iget-object v5, p0, Lcom/yopeso/lieferando/fragments/account/MainAddressFragment$5;->this$0:Lcom/yopeso/lieferando/fragments/account/MainAddressFragment;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/yopeso/lieferando/fragments/account/MainAddressFragment$DeleteAddressListener;-><init>(Lcom/yopeso/lieferando/fragments/account/MainAddressFragment;Lcom/yopeso/lieferando/fragments/account/MainAddressFragment$DeleteAddressListener;)V

    invoke-direct {v1, v2, v3, v4}, Lcom/yopeso/lieferando/net/requests/DeleteAddressRequest;-><init>(JLcom/yopeso/lieferando/net/requests/base/VolleyListener;)V

    invoke-virtual {v1}, Lcom/yopeso/lieferando/net/requests/DeleteAddressRequest;->withAuth()Lcom/yopeso/lieferando/net/requests/base/JsonRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 278
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAddressFragment$5;->this$0:Lcom/yopeso/lieferando/fragments/account/MainAddressFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/account/MainAddressFragment;->access$5(Lcom/yopeso/lieferando/fragments/account/MainAddressFragment;)Lcom/yopeso/lieferando/adapters/MainAddressAdapter;

    move-result-object v0

    iget v1, p0, Lcom/yopeso/lieferando/fragments/account/MainAddressFragment$5;->val$position:I

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/adapters/MainAddressAdapter;->removeAddress(I)V

    .line 279
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MainAddressFragment$5;->this$0:Lcom/yopeso/lieferando/fragments/account/MainAddressFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/account/MainAddressFragment;->access$6(Lcom/yopeso/lieferando/fragments/account/MainAddressFragment;)V

    .line 280
    return-void
.end method
