.class Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$1;
.super Ljava/lang/Object;
.source "RestaurantsListFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;


# direct methods
.method constructor <init>(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    .line 1512
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1516
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    .line 1517
    .local v0, "id":I
    if-eqz p2, :cond_8

    .line 1518
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    invoke-static {v1}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->access$0(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RadioButton;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 1519
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    invoke-static {v1}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->access$0(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 1520
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    invoke-static {v1}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->access$1(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 1521
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    invoke-static {v1}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->access$2(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 1522
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    invoke-static {v1}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->access$3(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 1523
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    invoke-static {v1}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->access$4(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 1524
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    invoke-static {v1}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->access$5(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 1525
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    invoke-static {v1}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->access$6(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 1526
    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getOrderings()Ljava/util/HashSet;

    move-result-object v1

    sget-object v2, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->ALPHABETIC:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1527
    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getOrderings()Ljava/util/HashSet;

    move-result-object v1

    sget-object v2, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->ALPHABETIC_REVERSE:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1528
    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getOrderings()Ljava/util/HashSet;

    move-result-object v1

    sget-object v2, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->REVIEWS:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1529
    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getOrderings()Ljava/util/HashSet;

    move-result-object v1

    sget-object v2, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->DELIVERY_COST:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1530
    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getOrderings()Ljava/util/HashSet;

    move-result-object v1

    sget-object v2, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->MINORDER:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1531
    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getOrderings()Ljava/util/HashSet;

    move-result-object v1

    sget-object v2, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->DISTANCE:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1532
    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getOrderings()Ljava/util/HashSet;

    move-result-object v1

    sget-object v2, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->NONE:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1755
    :cond_0
    :goto_0
    return-void

    .line 1533
    :cond_1
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    invoke-static {v1}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->access$1(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RadioButton;->getId()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 1534
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    invoke-static {v1}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->access$0(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 1535
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    invoke-static {v1}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->access$1(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 1536
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    invoke-static {v1}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->access$2(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 1537
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    invoke-static {v1}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->access$3(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 1538
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    invoke-static {v1}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->access$4(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 1539
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    invoke-static {v1}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->access$5(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 1540
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    invoke-static {v1}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->access$6(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 1541
    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getOrderings()Ljava/util/HashSet;

    move-result-object v1

    sget-object v2, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->NONE:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1542
    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getOrderings()Ljava/util/HashSet;

    move-result-object v1

    sget-object v2, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->ALPHABETIC_REVERSE:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1543
    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getOrderings()Ljava/util/HashSet;

    move-result-object v1

    sget-object v2, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->REVIEWS:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1544
    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getOrderings()Ljava/util/HashSet;

    move-result-object v1

    sget-object v2, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->DELIVERY_COST:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1545
    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getOrderings()Ljava/util/HashSet;

    move-result-object v1

    sget-object v2, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->MINORDER:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1546
    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getOrderings()Ljava/util/HashSet;

    move-result-object v1

    sget-object v2, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->DISTANCE:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1547
    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getOrderings()Ljava/util/HashSet;

    move-result-object v1

    sget-object v2, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->ALPHABETIC:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1548
    :cond_2
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    invoke-static {v1}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->access$2(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RadioButton;->getId()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 1549
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    invoke-static {v1}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->access$0(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 1550
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    invoke-static {v1}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->access$1(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 1551
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    invoke-static {v1}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->access$2(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 1552
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    invoke-static {v1}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->access$3(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 1553
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    invoke-static {v1}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->access$4(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 1554
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    invoke-static {v1}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->access$5(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 1555
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    invoke-static {v1}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->access$6(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 1556
    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getOrderings()Ljava/util/HashSet;

    move-result-object v1

    sget-object v2, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->NONE:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1557
    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getOrderings()Ljava/util/HashSet;

    move-result-object v1

    sget-object v2, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->ALPHABETIC:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1558
    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getOrderings()Ljava/util/HashSet;

    move-result-object v1

    sget-object v2, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->REVIEWS:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1559
    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getOrderings()Ljava/util/HashSet;

    move-result-object v1

    sget-object v2, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->DELIVERY_COST:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1560
    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getOrderings()Ljava/util/HashSet;

    move-result-object v1

    sget-object v2, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->MINORDER:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1561
    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getOrderings()Ljava/util/HashSet;

    move-result-object v1

    sget-object v2, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->DISTANCE:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1562
    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getOrderings()Ljava/util/HashSet;

    move-result-object v1

    sget-object v2, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->ALPHABETIC_REVERSE:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1563
    :cond_3
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    invoke-static {v1}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->access$3(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RadioButton;->getId()I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 1564
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    invoke-static {v1}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->access$0(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 1565
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    invoke-static {v1}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->access$1(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 1566
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    invoke-static {v1}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->access$2(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 1567
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    invoke-static {v1}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->access$3(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 1568
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    invoke-static {v1}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->access$4(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 1569
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    invoke-static {v1}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->access$5(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 1570
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    invoke-static {v1}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->access$6(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 1571
    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getOrderings()Ljava/util/HashSet;

    move-result-object v1

    sget-object v2, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->NONE:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1572
    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getOrderings()Ljava/util/HashSet;

    move-result-object v1

    sget-object v2, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->ALPHABETIC:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1573
    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getOrderings()Ljava/util/HashSet;

    move-result-object v1

    sget-object v2, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->ALPHABETIC_REVERSE:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1574
    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getOrderings()Ljava/util/HashSet;

    move-result-object v1

    sget-object v2, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->DELIVERY_COST:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1575
    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getOrderings()Ljava/util/HashSet;

    move-result-object v1

    sget-object v2, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->MINORDER:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1576
    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getOrderings()Ljava/util/HashSet;

    move-result-object v1

    sget-object v2, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->DISTANCE:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1577
    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getOrderings()Ljava/util/HashSet;

    move-result-object v1

    sget-object v2, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->REVIEWS:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1578
    :cond_4
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    invoke-static {v1}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->access$4(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RadioButton;->getId()I

    move-result v1

    if-ne v0, v1, :cond_5

    .line 1579
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    invoke-static {v1}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->access$0(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 1580
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    invoke-static {v1}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->access$1(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 1581
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    invoke-static {v1}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->access$2(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 1582
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    invoke-static {v1}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->access$3(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 1583
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    invoke-static {v1}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->access$4(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 1584
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    invoke-static {v1}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->access$5(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 1585
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    invoke-static {v1}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->access$6(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 1586
    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getOrderings()Ljava/util/HashSet;

    move-result-object v1

    sget-object v2, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->NONE:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1587
    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getOrderings()Ljava/util/HashSet;

    move-result-object v1

    sget-object v2, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->ALPHABETIC:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1588
    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getOrderings()Ljava/util/HashSet;

    move-result-object v1

    sget-object v2, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->ALPHABETIC_REVERSE:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1589
    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getOrderings()Ljava/util/HashSet;

    move-result-object v1

    sget-object v2, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->REVIEWS:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1590
    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getOrderings()Ljava/util/HashSet;

    move-result-object v1

    sget-object v2, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->MINORDER:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1591
    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getOrderings()Ljava/util/HashSet;

    move-result-object v1

    sget-object v2, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->DISTANCE:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1592
    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getOrderings()Ljava/util/HashSet;

    move-result-object v1

    sget-object v2, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->DELIVERY_COST:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1593
    :cond_5
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    invoke-static {v1}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->access$5(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RadioButton;->getId()I

    move-result v1

    if-ne v0, v1, :cond_6

    .line 1594
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    invoke-static {v1}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->access$0(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 1595
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    invoke-static {v1}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->access$1(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 1596
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    invoke-static {v1}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->access$2(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 1597
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    invoke-static {v1}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->access$3(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 1598
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    invoke-static {v1}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->access$4(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 1599
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    invoke-static {v1}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->access$5(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 1600
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    invoke-static {v1}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->access$6(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 1601
    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getOrderings()Ljava/util/HashSet;

    move-result-object v1

    sget-object v2, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->NONE:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1602
    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getOrderings()Ljava/util/HashSet;

    move-result-object v1

    sget-object v2, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->ALPHABETIC:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1603
    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getOrderings()Ljava/util/HashSet;

    move-result-object v1

    sget-object v2, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->ALPHABETIC_REVERSE:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1604
    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getOrderings()Ljava/util/HashSet;

    move-result-object v1

    sget-object v2, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->REVIEWS:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1605
    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getOrderings()Ljava/util/HashSet;

    move-result-object v1

    sget-object v2, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->DELIVERY_COST:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1606
    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getOrderings()Ljava/util/HashSet;

    move-result-object v1

    sget-object v2, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->DISTANCE:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1607
    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getOrderings()Ljava/util/HashSet;

    move-result-object v1

    sget-object v2, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->MINORDER:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1608
    :cond_6
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    invoke-static {v1}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->access$6(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RadioButton;->getId()I

    move-result v1

    if-ne v0, v1, :cond_7

    sget-object v1, Lcom/yopeso/lieferando/LieferandoApplication;->sUserLocation:Landroid/location/Location;

    if-eqz v1, :cond_7

    .line 1609
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    invoke-static {v1}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->access$0(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 1610
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    invoke-static {v1}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->access$1(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 1611
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    invoke-static {v1}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->access$2(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 1612
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    invoke-static {v1}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->access$3(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 1613
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    invoke-static {v1}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->access$4(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 1614
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    invoke-static {v1}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->access$5(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 1615
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    invoke-static {v1}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->access$6(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 1616
    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getOrderings()Ljava/util/HashSet;

    move-result-object v1

    sget-object v2, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->NONE:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1617
    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getOrderings()Ljava/util/HashSet;

    move-result-object v1

    sget-object v2, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->ALPHABETIC:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1618
    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getOrderings()Ljava/util/HashSet;

    move-result-object v1

    sget-object v2, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->ALPHABETIC_REVERSE:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1619
    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getOrderings()Ljava/util/HashSet;

    move-result-object v1

    sget-object v2, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->REVIEWS:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1620
    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getOrderings()Ljava/util/HashSet;

    move-result-object v1

    sget-object v2, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->DELIVERY_COST:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1621
    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getOrderings()Ljava/util/HashSet;

    move-result-object v1

    sget-object v2, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->MINORDER:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1622
    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getOrderings()Ljava/util/HashSet;

    move-result-object v1

    sget-object v2, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->DISTANCE:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1623
    :cond_7
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    invoke-static {v1}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->access$6(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RadioButton;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    sget-object v1, Lcom/yopeso/lieferando/LieferandoApplication;->sUserLocation:Landroid/location/Location;

    if-nez v1, :cond_0

    .line 1631
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    invoke-static {v1}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->access$6(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 1632
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    invoke-virtual {v1}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/yopeso/lieferando/R$string;->no_location_obtained:I

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 1637
    :cond_8
    const-string v1, "RestaurantListFrag"

    const-string v2, "deselect"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1638
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    invoke-static {v1}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->access$0(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RadioButton;->getId()I

    move-result v1

    if-ne v0, v1, :cond_a

    .line 1639
    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getOrderings()Ljava/util/HashSet;

    move-result-object v1

    sget-object v2, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->NONE:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1653
    :cond_9
    :goto_1
    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getOrderings()Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1654
    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getOrderings()Ljava/util/HashSet;

    move-result-object v1

    sget-object v2, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->NONE:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1640
    :cond_a
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    invoke-static {v1}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->access$1(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RadioButton;->getId()I

    move-result v1

    if-ne v0, v1, :cond_b

    .line 1641
    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getOrderings()Ljava/util/HashSet;

    move-result-object v1

    sget-object v2, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->ALPHABETIC:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1642
    :cond_b
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    invoke-static {v1}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->access$2(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RadioButton;->getId()I

    move-result v1

    if-ne v0, v1, :cond_c

    .line 1643
    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getOrderings()Ljava/util/HashSet;

    move-result-object v1

    sget-object v2, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->ALPHABETIC_REVERSE:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1644
    :cond_c
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    invoke-static {v1}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->access$3(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RadioButton;->getId()I

    move-result v1

    if-ne v0, v1, :cond_d

    .line 1645
    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getOrderings()Ljava/util/HashSet;

    move-result-object v1

    sget-object v2, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->REVIEWS:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1646
    :cond_d
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    invoke-static {v1}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->access$4(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RadioButton;->getId()I

    move-result v1

    if-ne v0, v1, :cond_e

    .line 1647
    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getOrderings()Ljava/util/HashSet;

    move-result-object v1

    sget-object v2, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->DELIVERY_COST:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1648
    :cond_e
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    invoke-static {v1}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->access$5(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RadioButton;->getId()I

    move-result v1

    if-ne v0, v1, :cond_f

    .line 1649
    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getOrderings()Ljava/util/HashSet;

    move-result-object v1

    sget-object v2, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->MINORDER:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1650
    :cond_f
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment$1;->this$0:Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;

    invoke-static {v1}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;->access$6(Lcom/yopeso/lieferando/fragments/restaurant/RestaurantsListFragment;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RadioButton;->getId()I

    move-result v1

    if-ne v0, v1, :cond_9

    sget-object v1, Lcom/yopeso/lieferando/LieferandoApplication;->sUserLocation:Landroid/location/Location;

    if-eqz v1, :cond_9

    .line 1651
    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getOrderings()Ljava/util/HashSet;

    move-result-object v1

    sget-object v2, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->DISTANCE:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1
.end method
