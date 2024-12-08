.class Lcom/yopeso/lieferando/fragments/search/BaseSearchFragment$5;
.super Ljava/lang/Object;
.source "BaseSearchFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/fragments/search/BaseSearchFragment;->showDeleteDialog(IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/fragments/search/BaseSearchFragment;

.field private final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/fragments/search/BaseSearchFragment;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/search/BaseSearchFragment$5;->this$0:Lcom/yopeso/lieferando/fragments/search/BaseSearchFragment;

    iput p2, p0, Lcom/yopeso/lieferando/fragments/search/BaseSearchFragment$5;->val$position:I

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 195
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 196
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/BaseSearchFragment$5;->this$0:Lcom/yopeso/lieferando/fragments/search/BaseSearchFragment;

    iget-object v0, v0, Lcom/yopeso/lieferando/fragments/search/BaseSearchFragment;->mAddressAdapter:Lcom/yopeso/lieferando/adapters/SearchAddressAdapter;

    iget v1, p0, Lcom/yopeso/lieferando/fragments/search/BaseSearchFragment$5;->val$position:I

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/adapters/SearchAddressAdapter;->removeAddress(I)V

    .line 197
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->getData()Lcom/yopeso/lieferando/model/user/UserData;

    move-result-object v1

    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/search/BaseSearchFragment$5;->this$0:Lcom/yopeso/lieferando/fragments/search/BaseSearchFragment;

    iget-object v0, v0, Lcom/yopeso/lieferando/fragments/search/BaseSearchFragment;->mAddressAdapter:Lcom/yopeso/lieferando/adapters/SearchAddressAdapter;

    invoke-virtual {v0}, Lcom/yopeso/lieferando/adapters/SearchAddressAdapter;->getmLocations()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Lcom/yopeso/lieferando/model/user/UserData;->setLocations(Ljava/util/ArrayList;)V

    .line 198
    invoke-static {}, Lcom/yopeso/lieferando/util/UserStore;->save()V

    .line 199
    return-void
.end method
