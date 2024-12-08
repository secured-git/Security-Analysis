.class Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter$13;
.super Ljava/lang/Object;
.source "RestaurantsListAdapter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->sortByBestStampCards()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/yopeso/lieferando/model/restaurant/Restaurant;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;

.field private final synthetic val$app:Lcom/yopeso/lieferando/LieferandoApplication;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;Lcom/yopeso/lieferando/LieferandoApplication;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter$13;->this$0:Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;

    iput-object p2, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter$13;->val$app:Lcom/yopeso/lieferando/LieferandoApplication;

    .line 1352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/yopeso/lieferando/model/restaurant/Restaurant;Lcom/yopeso/lieferando/model/restaurant/Restaurant;)I
    .locals 5
    .param p1, "lhs"    # Lcom/yopeso/lieferando/model/restaurant/Restaurant;
    .param p2, "rhs"    # Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    .prologue
    const/4 v0, 0x1

    const/4 v1, -0x1

    .line 1355
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter$13;->val$app:Lcom/yopeso/lieferando/LieferandoApplication;

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getId()I

    move-result v3

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getHasSms()Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/yopeso/lieferando/LieferandoApplication;->isPrinterOn(IZ)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter$13;->val$app:Lcom/yopeso/lieferando/LieferandoApplication;

    invoke-virtual {p2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getId()I

    move-result v3

    invoke-virtual {p2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getHasSms()Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/yopeso/lieferando/LieferandoApplication;->isPrinterOn(IZ)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1357
    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter$13;->this$0:Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;

    invoke-static {v0, p1, p2}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->access$11(Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;Lcom/yopeso/lieferando/model/restaurant/Restaurant;Lcom/yopeso/lieferando/model/restaurant/Restaurant;)I

    move-result v0

    .line 1372
    :cond_0
    :goto_0
    return v0

    .line 1358
    :cond_1
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->isOpen()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter$13;->val$app:Lcom/yopeso/lieferando/LieferandoApplication;

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getId()I

    move-result v3

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getHasSms()Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/yopeso/lieferando/LieferandoApplication;->isPrinterOn(IZ)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter$13;->val$app:Lcom/yopeso/lieferando/LieferandoApplication;

    invoke-virtual {p2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getId()I

    move-result v3

    invoke-virtual {p2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getHasSms()Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/yopeso/lieferando/LieferandoApplication;->isPrinterOn(IZ)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1360
    :cond_2
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->isOpen()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter$13;->val$app:Lcom/yopeso/lieferando/LieferandoApplication;

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getId()I

    move-result v3

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getHasSms()Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/yopeso/lieferando/LieferandoApplication;->isPrinterOn(IZ)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter$13;->val$app:Lcom/yopeso/lieferando/LieferandoApplication;

    invoke-virtual {p2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getId()I

    move-result v3

    invoke-virtual {p2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getHasSms()Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/yopeso/lieferando/LieferandoApplication;->isPrinterOn(IZ)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1362
    :cond_3
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter$13;->val$app:Lcom/yopeso/lieferando/LieferandoApplication;

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getId()I

    move-result v3

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getHasSms()Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/yopeso/lieferando/LieferandoApplication;->isPrinterOn(IZ)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter$13;->val$app:Lcom/yopeso/lieferando/LieferandoApplication;

    invoke-virtual {p2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getId()I

    move-result v3

    invoke-virtual {p2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getHasSms()Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/yopeso/lieferando/LieferandoApplication;->isPrinterOn(IZ)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1364
    :cond_4
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter$13;->val$app:Lcom/yopeso/lieferando/LieferandoApplication;

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getId()I

    move-result v2

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getHasSms()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/yopeso/lieferando/LieferandoApplication;->isPrinterOn(IZ)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->isOpen()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter$13;->val$app:Lcom/yopeso/lieferando/LieferandoApplication;

    invoke-virtual {p2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getId()I

    move-result v2

    invoke-virtual {p2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getHasSms()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/yopeso/lieferando/LieferandoApplication;->isPrinterOn(IZ)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    .line 1365
    goto/16 :goto_0

    .line 1366
    :cond_5
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter$13;->val$app:Lcom/yopeso/lieferando/LieferandoApplication;

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getId()I

    move-result v2

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getHasSms()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/yopeso/lieferando/LieferandoApplication;->isPrinterOn(IZ)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter$13;->val$app:Lcom/yopeso/lieferando/LieferandoApplication;

    invoke-virtual {p2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getId()I

    move-result v2

    invoke-virtual {p2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getHasSms()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/yopeso/lieferando/LieferandoApplication;->isPrinterOn(IZ)Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v1

    .line 1367
    goto/16 :goto_0

    .line 1368
    :cond_6
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter$13;->val$app:Lcom/yopeso/lieferando/LieferandoApplication;

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getId()I

    move-result v2

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getHasSms()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/yopeso/lieferando/LieferandoApplication;->isPrinterOn(IZ)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->isOpen()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter$13;->val$app:Lcom/yopeso/lieferando/LieferandoApplication;

    invoke-virtual {p2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getId()I

    move-result v2

    invoke-virtual {p2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getHasSms()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/yopeso/lieferando/LieferandoApplication;->isPrinterOn(IZ)Z

    move-result v0

    if-nez v0, :cond_7

    move v0, v1

    .line 1369
    goto/16 :goto_0

    .line 1372
    :cond_7
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    check-cast p2, Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {p0, p1, p2}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter$13;->compare(Lcom/yopeso/lieferando/model/restaurant/Restaurant;Lcom/yopeso/lieferando/model/restaurant/Restaurant;)I

    move-result v0

    return v0
.end method
