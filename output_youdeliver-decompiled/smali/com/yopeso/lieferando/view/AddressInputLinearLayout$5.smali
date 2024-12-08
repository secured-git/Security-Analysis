.class Lcom/yopeso/lieferando/view/AddressInputLinearLayout$5;
.super Ljava/lang/Object;
.source "AddressInputLinearLayout.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->setup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayout;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/view/AddressInputLinearLayout;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout$5;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayout;

    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x0

    .line 290
    const/4 v1, 0x6

    if-eq p2, v1, :cond_0

    const/4 v1, 0x5

    if-eq p2, v1, :cond_0

    const/4 v1, 0x2

    if-ne p2, v1, :cond_2

    .line 291
    :cond_0
    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout$5;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayout;

    invoke-static {v1}, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->access$3(Lcom/yopeso/lieferando/view/AddressInputLinearLayout;)Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout$5;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayout;

    invoke-static {v1}, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->access$3(Lcom/yopeso/lieferando/view/AddressInputLinearLayout;)Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout$5;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayout;

    iget-object v1, v1, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mLocationSuggestions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout$5;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayout;

    iget-object v1, v1, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mLocationSuggestions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 292
    iget-object v1, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout$5;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayout;

    iget-object v2, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout$5;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayout;

    iget-object v2, v2, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mLocationSuggestions:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yopeso/lieferando/model/LocationSuggestion;

    invoke-virtual {v1, v0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->onLocationSelected(Lcom/yopeso/lieferando/model/LocationSuggestion;)V

    .line 294
    :cond_1
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v0

    invoke-interface {v0}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 295
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout$5;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayout;

    iget-object v0, v0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mEmail:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 300
    :goto_0
    const/4 v0, 0x1

    .line 302
    :cond_2
    return v0

    .line 298
    :cond_3
    iget-object v0, p0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout$5;->this$0:Lcom/yopeso/lieferando/view/AddressInputLinearLayout;

    iget-object v0, v0, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->mPhoneNumber:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0
.end method
