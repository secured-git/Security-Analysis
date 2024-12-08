.class Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet$LocationListener;
.super Ljava/lang/Object;
.source "SearchMainFragmentTablet.java"

# interfaces
.implements Lcom/yopeso/lieferando/net/requests/base/VolleyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocationListener"
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
.field final synthetic this$0:Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;


# direct methods
.method private constructor <init>(Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet$LocationListener;->this$0:Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet$LocationListener;)V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet$LocationListener;-><init>(Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;)V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 1
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet$LocationListener;->this$0:Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;

    invoke-static {v0, p1}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;->access$1(Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;Lcom/android/volley/VolleyError;)V

    .line 109
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet$LocationListener;->onResponse(Ljava/util/ArrayList;)V

    return-void
.end method

.method public onResponse(Ljava/util/ArrayList;)V
    .locals 1
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
    .line 103
    .local p1, "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/yopeso/lieferando/model/LocationSuggestion;>;"
    iget-object v0, p0, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet$LocationListener;->this$0:Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;

    invoke-static {v0, p1}, Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;->access$0(Lcom/yopeso/lieferando/fragments/tablet/search/SearchMainFragmentTablet;Ljava/util/List;)V

    .line 104
    return-void
.end method
