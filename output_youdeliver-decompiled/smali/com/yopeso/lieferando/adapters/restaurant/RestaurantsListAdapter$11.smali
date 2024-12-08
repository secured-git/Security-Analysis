.class Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter$11;
.super Ljava/lang/Object;
.source "RestaurantsListAdapter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;->sortByOpened()V
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
    iput-object p1, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter$11;->this$0:Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter;

    iput-object p2, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter$11;->val$app:Lcom/yopeso/lieferando/LieferandoApplication;

    .line 1283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/yopeso/lieferando/model/restaurant/Restaurant;Lcom/yopeso/lieferando/model/restaurant/Restaurant;)I
    .locals 6
    .param p1, "lhs"    # Lcom/yopeso/lieferando/model/restaurant/Restaurant;
    .param p2, "rhs"    # Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, -0x1

    .line 1287
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter$11;->val$app:Lcom/yopeso/lieferando/LieferandoApplication;

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getId()I

    move-result v4

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getHasSms()Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/yopeso/lieferando/LieferandoApplication;->isPrinterOn(IZ)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter$11;->val$app:Lcom/yopeso/lieferando/LieferandoApplication;

    invoke-virtual {p2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getId()I

    move-result v4

    invoke-virtual {p2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getHasSms()Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/yopeso/lieferando/LieferandoApplication;->isPrinterOn(IZ)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1303
    :cond_0
    :goto_0
    return v0

    .line 1289
    :cond_1
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->isOpen()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter$11;->val$app:Lcom/yopeso/lieferando/LieferandoApplication;

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getId()I

    move-result v4

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getHasSms()Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/yopeso/lieferando/LieferandoApplication;->isPrinterOn(IZ)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter$11;->val$app:Lcom/yopeso/lieferando/LieferandoApplication;

    invoke-virtual {p2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getId()I

    move-result v4

    invoke-virtual {p2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getHasSms()Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/yopeso/lieferando/LieferandoApplication;->isPrinterOn(IZ)Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    .line 1290
    goto :goto_0

    .line 1291
    :cond_2
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->isOpen()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter$11;->val$app:Lcom/yopeso/lieferando/LieferandoApplication;

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getId()I

    move-result v4

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getHasSms()Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/yopeso/lieferando/LieferandoApplication;->isPrinterOn(IZ)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter$11;->val$app:Lcom/yopeso/lieferando/LieferandoApplication;

    invoke-virtual {p2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getId()I

    move-result v4

    invoke-virtual {p2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getHasSms()Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/yopeso/lieferando/LieferandoApplication;->isPrinterOn(IZ)Z

    move-result v3

    if-eqz v3, :cond_3

    move v0, v1

    .line 1292
    goto :goto_0

    .line 1293
    :cond_3
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter$11;->val$app:Lcom/yopeso/lieferando/LieferandoApplication;

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getId()I

    move-result v4

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getHasSms()Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/yopeso/lieferando/LieferandoApplication;->isPrinterOn(IZ)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter$11;->val$app:Lcom/yopeso/lieferando/LieferandoApplication;

    invoke-virtual {p2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getId()I

    move-result v4

    invoke-virtual {p2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getHasSms()Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/yopeso/lieferando/LieferandoApplication;->isPrinterOn(IZ)Z

    move-result v3

    if-eqz v3, :cond_4

    move v0, v1

    .line 1294
    goto/16 :goto_0

    .line 1295
    :cond_4
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter$11;->val$app:Lcom/yopeso/lieferando/LieferandoApplication;

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getId()I

    move-result v3

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getHasSms()Z

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/yopeso/lieferando/LieferandoApplication;->isPrinterOn(IZ)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->isOpen()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter$11;->val$app:Lcom/yopeso/lieferando/LieferandoApplication;

    invoke-virtual {p2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getId()I

    move-result v3

    invoke-virtual {p2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getHasSms()Z

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/yopeso/lieferando/LieferandoApplication;->isPrinterOn(IZ)Z

    move-result v1

    if-eqz v1, :cond_5

    move v0, v2

    .line 1296
    goto/16 :goto_0

    .line 1297
    :cond_5
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter$11;->val$app:Lcom/yopeso/lieferando/LieferandoApplication;

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getId()I

    move-result v3

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getHasSms()Z

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/yopeso/lieferando/LieferandoApplication;->isPrinterOn(IZ)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter$11;->val$app:Lcom/yopeso/lieferando/LieferandoApplication;

    invoke-virtual {p2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getId()I

    move-result v3

    invoke-virtual {p2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getHasSms()Z

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/yopeso/lieferando/LieferandoApplication;->isPrinterOn(IZ)Z

    move-result v1

    if-nez v1, :cond_6

    move v0, v2

    .line 1298
    goto/16 :goto_0

    .line 1299
    :cond_6
    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter$11;->val$app:Lcom/yopeso/lieferando/LieferandoApplication;

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getId()I

    move-result v3

    invoke-virtual {p1}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getHasSms()Z

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/yopeso/lieferando/LieferandoApplication;->isPrinterOn(IZ)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->isOpen()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter$11;->val$app:Lcom/yopeso/lieferando/LieferandoApplication;

    invoke-virtual {p2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getId()I

    move-result v3

    invoke-virtual {p2}, Lcom/yopeso/lieferando/model/restaurant/Restaurant;->getHasSms()Z

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/yopeso/lieferando/LieferandoApplication;->isPrinterOn(IZ)Z

    move-result v1

    if-nez v1, :cond_0

    move v0, v2

    .line 1300
    goto/16 :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    check-cast p2, Lcom/yopeso/lieferando/model/restaurant/Restaurant;

    invoke-virtual {p0, p1, p2}, Lcom/yopeso/lieferando/adapters/restaurant/RestaurantsListAdapter$11;->compare(Lcom/yopeso/lieferando/model/restaurant/Restaurant;Lcom/yopeso/lieferando/model/restaurant/Restaurant;)I

    move-result v0

    return v0
.end method
