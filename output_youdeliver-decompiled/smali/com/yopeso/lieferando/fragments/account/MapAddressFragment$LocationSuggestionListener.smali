.class Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$LocationSuggestionListener;
.super Ljava/lang/Object;
.source "MapAddressFragment.java"

# interfaces
.implements Lcom/yopeso/lieferando/net/requests/base/VolleyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocationSuggestionListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yopeso/lieferando/net/requests/base/VolleyListener",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/yopeso/lieferando/model/LocationSuggestion;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;


# direct methods
.method private constructor <init>(Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$LocationSuggestionListener;->this$0:Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$LocationSuggestionListener;)V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$LocationSuggestionListener;-><init>(Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;)V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 1
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$LocationSuggestionListener;->this$0:Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;

    invoke-static {v0, p1}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->access$1(Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;Lcom/android/volley/VolleyError;)V

    .line 112
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$LocationSuggestionListener;->onResponse(Ljava/util/ArrayList;)V

    return-void
.end method

.method public onResponse(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yopeso/lieferando/model/LocationSuggestion;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 92
    .local p1, "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/LocationSuggestion;>;"
    const-class v0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "LocationSuggestionListener: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-static {}, Lcom/yopeso/lieferando/net/config/AppConfig;->getConfig()Lcom/yopeso/lieferando/net/config/IConfig;

    move-result-object v0

    invoke-interface {v0}, Lcom/yopeso/lieferando/net/config/IConfig;->isCallaPizza()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 94
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$LocationSuggestionListener;->this$0:Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->access$0(Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;)Lcom/yopeso/lieferando/view/AddressInputLinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->getmZipCode()Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;

    move-result-object v0

    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$LocationSuggestionListener;->this$0:Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;

    sget v2, Lcom/yopeso/lieferando/R$string;->noDelivery:I

    invoke-virtual {v1, v2}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yopeso/lieferando/view/CustomAutoCompleteTextView;->setError(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$LocationSuggestionListener;->this$0:Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->access$0(Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;)Lcom/yopeso/lieferando/view/AddressInputLinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->getmSearchSuggestionsAdapter()Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yopeso/lieferando/adapters/LocationSuggestionsAdapter;->clearSuggestons()V

    .line 107
    :goto_0
    return-void

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$LocationSuggestionListener;->this$0:Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->access$0(Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;)Lcom/yopeso/lieferando/view/AddressInputLinearLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->showLocationSuggestions(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 105
    :cond_2
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment$LocationSuggestionListener;->this$0:Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;

    invoke-static {v0}, Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;->access$0(Lcom/yopeso/lieferando/fragments/account/MapAddressFragment;)Lcom/yopeso/lieferando/view/AddressInputLinearLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yopeso/lieferando/view/AddressInputLinearLayout;->showLocationSuggestions(Ljava/util/ArrayList;)V

    goto :goto_0
.end method
