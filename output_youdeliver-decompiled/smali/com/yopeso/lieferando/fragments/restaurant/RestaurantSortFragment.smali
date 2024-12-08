.class public Lcom/yopeso/lieferando/fragments/restaurant/RestaurantSortFragment;
.super Lcom/yopeso/lieferando/custom/LRFragment;
.source "RestaurantSortFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mAZSort:Landroid/widget/RadioButton;

.field private mDeliveryCostSort:Landroid/widget/RadioButton;

.field private mDistSort:Landroid/widget/RadioButton;

.field private mLieferserviceSort:Landroid/widget/RadioButton;

.field private mMinOrderSort:Landroid/widget/RadioButton;

.field private mReviewSort:Landroid/widget/RadioButton;

.field protected mSortingFilterView:Landroid/view/View;

.field private mZASort:Landroid/widget/RadioButton;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/yopeso/lieferando/custom/LRFragment;-><init>()V

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

    .line 93
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    .line 94
    .local v0, "id":I
    if-eqz p2, :cond_9

    .line 95
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantSortFragment;->mLieferserviceSort:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->getId()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 96
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantSortFragment;->mLieferserviceSort:Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 97
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantSortFragment;->mAZSort:Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 98
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantSortFragment;->mZASort:Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 99
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantSortFragment;->mReviewSort:Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 100
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantSortFragment;->mDeliveryCostSort:Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 101
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantSortFragment;->mMinOrderSort:Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 102
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantSortFragment;->mDistSort:Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 103
    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getOrderings()Ljava/util/HashSet;

    move-result-object v1

    sget-object v2, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->ALPHABETIC:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 104
    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getOrderings()Ljava/util/HashSet;

    move-result-object v1

    sget-object v2, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->ALPHABETIC_REVERSE:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 105
    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getOrderings()Ljava/util/HashSet;

    move-result-object v1

    sget-object v2, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->REVIEWS:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 106
    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getOrderings()Ljava/util/HashSet;

    move-result-object v1

    sget-object v2, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->DELIVERY_COST:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 107
    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getOrderings()Ljava/util/HashSet;

    move-result-object v1

    sget-object v2, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->MINORDER:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 108
    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getOrderings()Ljava/util/HashSet;

    move-result-object v1

    sget-object v2, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->DISTANCE:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 109
    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getOrderings()Ljava/util/HashSet;

    move-result-object v1

    sget-object v2, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->NONE:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 110
    const-string v1, "standard"

    invoke-static {v1}, Lcom/yopeso/lieferando/util/TrackingUtils;->trackSorting(Ljava/lang/String;)V

    .line 218
    :cond_0
    :goto_0
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v1

    new-instance v2, Lcom/yopeso/lieferando/events/FilterEvent;

    invoke-direct {v2}, Lcom/yopeso/lieferando/events/FilterEvent;-><init>()V

    invoke-virtual {v1, v2}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 252
    :cond_1
    :goto_1
    return-void

    .line 111
    :cond_2
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantSortFragment;->mAZSort:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->getId()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 112
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantSortFragment;->mLieferserviceSort:Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 113
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantSortFragment;->mAZSort:Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 114
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantSortFragment;->mZASort:Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 115
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantSortFragment;->mReviewSort:Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 116
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantSortFragment;->mDeliveryCostSort:Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 117
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantSortFragment;->mMinOrderSort:Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 118
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantSortFragment;->mDistSort:Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 119
    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getOrderings()Ljava/util/HashSet;

    move-result-object v1

    sget-object v2, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->NONE:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 120
    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getOrderings()Ljava/util/HashSet;

    move-result-object v1

    sget-object v2, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->ALPHABETIC_REVERSE:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 121
    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getOrderings()Ljava/util/HashSet;

    move-result-object v1

    sget-object v2, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->REVIEWS:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 122
    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getOrderings()Ljava/util/HashSet;

    move-result-object v1

    sget-object v2, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->DELIVERY_COST:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 123
    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getOrderings()Ljava/util/HashSet;

    move-result-object v1

    sget-object v2, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->MINORDER:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 124
    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getOrderings()Ljava/util/HashSet;

    move-result-object v1

    sget-object v2, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->DISTANCE:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 125
    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getOrderings()Ljava/util/HashSet;

    move-result-object v1

    sget-object v2, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->ALPHABETIC:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 126
    const-string v1, "alphabetic"

    invoke-static {v1}, Lcom/yopeso/lieferando/util/TrackingUtils;->trackSorting(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 127
    :cond_3
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantSortFragment;->mZASort:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->getId()I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 128
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantSortFragment;->mLieferserviceSort:Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 129
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantSortFragment;->mAZSort:Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 130
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantSortFragment;->mZASort:Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 131
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantSortFragment;->mReviewSort:Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 132
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantSortFragment;->mDeliveryCostSort:Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 133
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantSortFragment;->mMinOrderSort:Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 134
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantSortFragment;->mDistSort:Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 135
    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getOrderings()Ljava/util/HashSet;

    move-result-object v1

    sget-object v2, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->NONE:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 136
    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getOrderings()Ljava/util/HashSet;

    move-result-object v1

    sget-object v2, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->ALPHABETIC:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 137
    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getOrderings()Ljava/util/HashSet;

    move-result-object v1

    sget-object v2, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->REVIEWS:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 138
    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getOrderings()Ljava/util/HashSet;

    move-result-object v1

    sget-object v2, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->DELIVERY_COST:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 139
    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getOrderings()Ljava/util/HashSet;

    move-result-object v1

    sget-object v2, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->MINORDER:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 140
    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getOrderings()Ljava/util/HashSet;

    move-result-object v1

    sget-object v2, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->DISTANCE:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 141
    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getOrderings()Ljava/util/HashSet;

    move-result-object v1

    sget-object v2, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->ALPHABETIC_REVERSE:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 142
    const-string v1, "alphabeticReverse"

    invoke-static {v1}, Lcom/yopeso/lieferando/util/TrackingUtils;->trackSorting(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 143
    :cond_4
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantSortFragment;->mReviewSort:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->getId()I

    move-result v1

    if-ne v0, v1, :cond_5

    .line 144
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantSortFragment;->mLieferserviceSort:Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 145
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantSortFragment;->mAZSort:Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 146
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantSortFragment;->mZASort:Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 147
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantSortFragment;->mReviewSort:Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 148
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantSortFragment;->mDeliveryCostSort:Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 149
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantSortFragment;->mMinOrderSort:Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 150
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantSortFragment;->mDistSort:Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 151
    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getOrderings()Ljava/util/HashSet;

    move-result-object v1

    sget-object v2, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->NONE:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 152
    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getOrderings()Ljava/util/HashSet;

    move-result-object v1

    sget-object v2, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->ALPHABETIC:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 153
    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getOrderings()Ljava/util/HashSet;

    move-result-object v1

    sget-object v2, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->ALPHABETIC_REVERSE:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 154
    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getOrderings()Ljava/util/HashSet;

    move-result-object v1

    sget-object v2, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->DELIVERY_COST:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 155
    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getOrderings()Ljava/util/HashSet;

    move-result-object v1

    sget-object v2, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->MINORDER:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 156
    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getOrderings()Ljava/util/HashSet;

    move-result-object v1

    sget-object v2, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->DISTANCE:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 157
    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getOrderings()Ljava/util/HashSet;

    move-result-object v1

    sget-object v2, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->REVIEWS:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 158
    const-string v1, "rating"

    invoke-static {v1}, Lcom/yopeso/lieferando/util/TrackingUtils;->trackSorting(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 159
    :cond_5
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantSortFragment;->mDeliveryCostSort:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->getId()I

    move-result v1

    if-ne v0, v1, :cond_6

    .line 160
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantSortFragment;->mLieferserviceSort:Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 161
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantSortFragment;->mAZSort:Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 162
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantSortFragment;->mZASort:Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 163
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantSortFragment;->mReviewSort:Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 164
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantSortFragment;->mDeliveryCostSort:Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 165
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantSortFragment;->mMinOrderSort:Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 166
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantSortFragment;->mDistSort:Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 167
    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getOrderings()Ljava/util/HashSet;

    move-result-object v1

    sget-object v2, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->NONE:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 168
    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getOrderings()Ljava/util/HashSet;

    move-result-object v1

    sget-object v2, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->ALPHABETIC:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 169
    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getOrderings()Ljava/util/HashSet;

    move-result-object v1

    sget-object v2, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->ALPHABETIC_REVERSE:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 170
    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getOrderings()Ljava/util/HashSet;

    move-result-object v1

    sget-object v2, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->REVIEWS:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 171
    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getOrderings()Ljava/util/HashSet;

    move-result-object v1

    sget-object v2, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->MINORDER:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 172
    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getOrderings()Ljava/util/HashSet;

    move-result-object v1

    sget-object v2, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->DISTANCE:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 173
    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getOrderings()Ljava/util/HashSet;

    move-result-object v1

    sget-object v2, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->DELIVERY_COST:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 174
    const-string v1, "deliverCosts"

    invoke-static {v1}, Lcom/yopeso/lieferando/util/TrackingUtils;->trackSorting(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 175
    :cond_6
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantSortFragment;->mMinOrderSort:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->getId()I

    move-result v1

    if-ne v0, v1, :cond_7

    .line 176
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantSortFragment;->mLieferserviceSort:Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 177
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantSortFragment;->mAZSort:Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 178
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantSortFragment;->mZASort:Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 179
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantSortFragment;->mReviewSort:Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 180
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantSortFragment;->mDeliveryCostSort:Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 181
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantSortFragment;->mMinOrderSort:Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 182
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantSortFragment;->mDistSort:Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 183
    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getOrderings()Ljava/util/HashSet;

    move-result-object v1

    sget-object v2, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->NONE:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 184
    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getOrderings()Ljava/util/HashSet;

    move-result-object v1

    sget-object v2, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->ALPHABETIC:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 185
    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getOrderings()Ljava/util/HashSet;

    move-result-object v1

    sget-object v2, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->ALPHABETIC_REVERSE:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 186
    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getOrderings()Ljava/util/HashSet;

    move-result-object v1

    sget-object v2, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->REVIEWS:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 187
    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getOrderings()Ljava/util/HashSet;

    move-result-object v1

    sget-object v2, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->DELIVERY_COST:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 188
    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getOrderings()Ljava/util/HashSet;

    move-result-object v1

    sget-object v2, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->DISTANCE:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 189
    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getOrderings()Ljava/util/HashSet;

    move-result-object v1

    sget-object v2, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->MINORDER:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 190
    const-string v1, "minCosts"

    invoke-static {v1}, Lcom/yopeso/lieferando/util/TrackingUtils;->trackSorting(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 191
    :cond_7
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantSortFragment;->mDistSort:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->getId()I

    move-result v1

    if-ne v0, v1, :cond_8

    sget-object v1, Lcom/yopeso/lieferando/LieferandoApplication;->sUserLocation:Landroid/location/Location;

    if-eqz v1, :cond_8

    .line 192
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantSortFragment;->mLieferserviceSort:Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 193
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantSortFragment;->mAZSort:Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 194
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantSortFragment;->mZASort:Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 195
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantSortFragment;->mReviewSort:Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 196
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantSortFragment;->mDeliveryCostSort:Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 197
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantSortFragment;->mMinOrderSort:Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 198
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantSortFragment;->mDistSort:Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 199
    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getOrderings()Ljava/util/HashSet;

    move-result-object v1

    sget-object v2, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->NONE:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 200
    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getOrderings()Ljava/util/HashSet;

    move-result-object v1

    sget-object v2, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->ALPHABETIC:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 201
    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getOrderings()Ljava/util/HashSet;

    move-result-object v1

    sget-object v2, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->ALPHABETIC_REVERSE:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 202
    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getOrderings()Ljava/util/HashSet;

    move-result-object v1

    sget-object v2, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->REVIEWS:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 203
    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getOrderings()Ljava/util/HashSet;

    move-result-object v1

    sget-object v2, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->DELIVERY_COST:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 204
    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getOrderings()Ljava/util/HashSet;

    move-result-object v1

    sget-object v2, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->MINORDER:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 205
    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getOrderings()Ljava/util/HashSet;

    move-result-object v1

    sget-object v2, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->DISTANCE:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 206
    const-string v1, "distance"

    invoke-static {v1}, Lcom/yopeso/lieferando/util/TrackingUtils;->trackSorting(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 207
    :cond_8
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantSortFragment;->mDistSort:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    sget-object v1, Lcom/yopeso/lieferando/LieferandoApplication;->sUserLocation:Landroid/location/Location;

    if-nez v1, :cond_0

    .line 215
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantSortFragment;->mDistSort:Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 216
    invoke-virtual {p0}, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantSortFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/yopeso/lieferando/R$string;->no_location_obtained:I

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 222
    :cond_9
    const-string v1, "RestauranSort"

    const-string v2, "deselect"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantSortFragment;->mLieferserviceSort:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->getId()I

    move-result v1

    if-ne v0, v1, :cond_b

    .line 224
    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getOrderings()Ljava/util/HashSet;

    move-result-object v1

    sget-object v2, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->NONE:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 238
    :cond_a
    :goto_2
    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getOrderings()Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 239
    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getOrderings()Ljava/util/HashSet;

    move-result-object v1

    sget-object v2, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->NONE:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 225
    :cond_b
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantSortFragment;->mAZSort:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->getId()I

    move-result v1

    if-ne v0, v1, :cond_c

    .line 226
    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getOrderings()Ljava/util/HashSet;

    move-result-object v1

    sget-object v2, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->ALPHABETIC:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 227
    :cond_c
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantSortFragment;->mZASort:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->getId()I

    move-result v1

    if-ne v0, v1, :cond_d

    .line 228
    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getOrderings()Ljava/util/HashSet;

    move-result-object v1

    sget-object v2, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->ALPHABETIC_REVERSE:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 229
    :cond_d
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantSortFragment;->mReviewSort:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->getId()I

    move-result v1

    if-ne v0, v1, :cond_e

    .line 230
    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getOrderings()Ljava/util/HashSet;

    move-result-object v1

    sget-object v2, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->REVIEWS:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 231
    :cond_e
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantSortFragment;->mDeliveryCostSort:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->getId()I

    move-result v1

    if-ne v0, v1, :cond_f

    .line 232
    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getOrderings()Ljava/util/HashSet;

    move-result-object v1

    sget-object v2, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->DELIVERY_COST:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 233
    :cond_f
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantSortFragment;->mMinOrderSort:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->getId()I

    move-result v1

    if-ne v0, v1, :cond_10

    .line 234
    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getOrderings()Ljava/util/HashSet;

    move-result-object v1

    sget-object v2, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->MINORDER:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 235
    :cond_10
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantSortFragment;->mDistSort:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->getId()I

    move-result v1

    if-ne v0, v1, :cond_a

    .line 236
    invoke-static {}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getCriteria()Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria;->getOrderings()Ljava/util/HashSet;

    move-result-object v1

    sget-object v2, Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;->DISTANCE:Lcom/yopeso/lieferando/model/restaurant/filter/FilterCriteria$Ordering;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_2
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 64
    sget v1, Lcom/yopeso/lieferando/R$layout;->sorting:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 65
    .local v0, "view":Landroid/view/View;
    sget v1, Lcom/yopeso/lieferando/R$id;->SortingMenuLayout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantSortFragment;->mSortingFilterView:Landroid/view/View;

    .line 66
    sget v1, Lcom/yopeso/lieferando/R$id;->lieferservice_sorting:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantSortFragment;->mLieferserviceSort:Landroid/widget/RadioButton;

    .line 67
    sget v1, Lcom/yopeso/lieferando/R$id;->az_sorting:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantSortFragment;->mAZSort:Landroid/widget/RadioButton;

    .line 68
    sget v1, Lcom/yopeso/lieferando/R$id;->za_sorting:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantSortFragment;->mZASort:Landroid/widget/RadioButton;

    .line 69
    sget v1, Lcom/yopeso/lieferando/R$id;->reviews:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantSortFragment;->mReviewSort:Landroid/widget/RadioButton;

    .line 70
    sget v1, Lcom/yopeso/lieferando/R$id;->delivery_sort:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantSortFragment;->mDeliveryCostSort:Landroid/widget/RadioButton;

    .line 71
    sget v1, Lcom/yopeso/lieferando/R$id;->minorder_sort:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantSortFragment;->mMinOrderSort:Landroid/widget/RadioButton;

    .line 72
    sget v1, Lcom/yopeso/lieferando/R$id;->distance:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantSortFragment;->mDistSort:Landroid/widget/RadioButton;

    .line 74
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantSortFragment;->mLieferserviceSort:Landroid/widget/RadioButton;

    invoke-virtual {v1, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 75
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantSortFragment;->mAZSort:Landroid/widget/RadioButton;

    invoke-virtual {v1, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 76
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantSortFragment;->mZASort:Landroid/widget/RadioButton;

    invoke-virtual {v1, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 77
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantSortFragment;->mReviewSort:Landroid/widget/RadioButton;

    invoke-virtual {v1, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 78
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantSortFragment;->mDeliveryCostSort:Landroid/widget/RadioButton;

    invoke-virtual {v1, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 79
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantSortFragment;->mMinOrderSort:Landroid/widget/RadioButton;

    invoke-virtual {v1, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 80
    iget-object v1, p0, Lcom/yopeso/lieferando/fragments/restaurant/RestaurantSortFragment;->mDistSort:Landroid/widget/RadioButton;

    invoke-virtual {v1, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 83
    return-object v0
.end method

.method public onEvent(Lcom/yopeso/lieferando/events/RestaurantsLoadedEvent;)V
    .locals 0
    .param p1, "r"    # Lcom/yopeso/lieferando/events/RestaurantsLoadedEvent;

    .prologue
    .line 88
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 50
    invoke-super {p0}, Lcom/yopeso/lieferando/custom/LRFragment;->onPause()V

    .line 52
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Lcom/yopeso/lieferando/custom/LRFragment;->onStart()V

    .line 43
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 46
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 56
    invoke-super {p0}, Lcom/yopeso/lieferando/custom/LRFragment;->onStop()V

    .line 57
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 60
    :cond_0
    return-void
.end method
